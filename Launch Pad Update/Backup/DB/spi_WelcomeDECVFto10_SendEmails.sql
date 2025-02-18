USE [STUDENT_ADMIN]
GO
/****** Object:  StoredProcedure [dbo].[spi_WelcomeDECVFto10_SendEmails]    Script Date: 7/12/2021 3:46:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spi_WelcomeDECVFto10_SendEmails]
(             
 @studentid int = 0, @weeknum int = 0, @updateFlag int = 0
)    
AS
/*
Created By:			Leo Nigro 
Created Date:		24/05/2017
Functionality:		Generates a list for the subscription to send e-mails. A welcome letter confirmation comment is written. 
					Applies to report "Welcome letter - DECV-based F-10"
Rules:				DECV-based F-10 - 48 hours after enrolment AND after the LAd is allocated
					Report #2 - email to PArent A, CC to student
					if DECV Based (category <> SCHOOL) 
					
Note:				to_name is passed to report, Restricted to Students.
Subsciption:		Scheduled to run at end of each day at 1am
Status:				Live 
Updated:			25 Jan 2018|EA| added parameters for single and bulk testing before sending out backlog
						the @weeknum is only for start of year
               13 Feb 2021|RW| Added data driven email content

-- exec spi_WelcomeDECVFto10_SendEmails 0,0,0
-- exec spi_WelcomeDECVFto10_SendEmails 0,4,0
-- exec spi_WelcomeDECVFto10_SendEmails 93123,0,0
-- exec spi_WelcomeDECVFto10_SendEmails 0,20,0
*/
BEGIN

	DECLARE @StudentList TABLE (
		 RowNum int null
		 , STUDENT_ID int null
		 , EMAIL_ADDRESS nvarchar(100) default ''
		 , EMAIL_ADDRESS_CC nvarchar(100) default ''
		 , RELATIONSHIP nvarchar(100) default ''
		 , YEAR_LEVEL int null
		 , CATEGORY_CODE nvarchar(100) null
		 , to_name nvarchar(100) default ''
		 , LPEnrolmentDate date null
		 , ENROLMENT_YEAR int null
		 , ENROLMENT_DATE date null
		 , PASTORAL_CARE_ID varchar(8) null
       , EmailContent nvarchar(1000) not null
	)  

	INSERT INTO @StudentList
	SELECT * FROM
	(
		SELECT 
			ROW_NUMBER() OVER (ORDER BY k.STUDENT_ID ASC) AS RowNum,
			* FROM
		(
			SELECT DISTINCT st.STUDENT_ID 
				, (case 
					when  scc.email like '%xx.com%' then ''
					when len(rtrim(isnull( scc.email,''))) <1 then AD.EMAIL_ADDRESS 
					else  lower(scc.email) end) as [EMAIL_ADDRESS]
				, (case when len(rtrim(isnull(st.STUDENT_EMAIL,''))) <1 then '' 
						when st.STUDENT_EMAIL = scc.email then ''		-- if parent and student have same email then don't CC
						when AD.EMAIL_ADDRESS = scc.email then ''		-- if address and student have same email then don't CC
						else lower(st.STUDENT_EMAIL)
					end) as  [EMAIL_ADDRESS_CC]
				, scc.RELATIONSHIP
				, se.YEAR_LEVEL
				, st.CATEGORY_CODE
				, dbo.ProperCase(scc.FIRST_NAME) AS to_name
				, (SELECT TOP 1 ENROLMENT_DATE FROM STUDENT_SUBJECT zss WHERE STUDENT_ID = st.STUDENT_ID AND ENROLMENT_YEAR = se.ENROLMENT_YEAR AND SUBJECT_ID IN (921,922,923,924)) AS LPEnrolmentDate
				, se.ENROLMENT_YEAR
				, se.ENROLMENT_DATE
				, se.PASTORAL_CARE_ID
            , concat(N'Your enrolment confirmation is attached in Acrobat PDF format. Please contact Virtual School Victoria on 03 8480 0000 if you have any questions.',
                        char(13), char(10), char(13), char(10), N'(Ref. ID ', cast(st.STUDENT_ID as nvarchar(20)), N')') as EmailContent
			FROM dbo.STUDENT AS st 
			INNER JOIN dbo.STUDENT_ENROLMENT AS se ON st.STUDENT_ID = se.STUDENT_ID
			INNER JOIN dbo.ADDRESS AS ad ON st.CURR_RESID_ADDRESS_ID = ad.ADDRESS_ID
			JOIN dbo.STUDENT_CARER_CONTACT scc ON st.CARER_ID_PARENT_A = scc.CARER_ID
			WHERE scc.RELATIONSHIP <> 'SS'
			AND st.CATEGORY_CODE != 'SCHOOL' 
			AND se.ENROLMENT_STATUS = 'E'
			AND scc.EMAIL IS NOT NULL
			AND se.ENROLMENT_YEAR = (case when month(getdate()) > 9 then year(getdate()) + 1 else year(getdate()) end)
			AND se.YEAR_LEVEL BETWEEN 3 AND 10
			-- 25-Jan-2018|EA| allow for current or old batch runs
	-- AND convert(date, se.ENROLMENT_DATE) <= convert(date, (getdate() ))	-- batch
	and convert(date, se.PASTORAL_ALLOC_DATE) = convert(date, (getdate()))  -- START 2019 RULES
			 -- and convert(date, se.enrolment_date) = (case when @weeknum=0 then convert(date, (getdate() - 2 )) else convert(date, se.enrolment_date) end)  -- ONGOING
			-- 25-Jan-2018|EA| allow for single or bulk runs
			and st.student_id = (case when @studentid=0 then st.student_id else @studentid end)
			and se.PASTORAL_CARE_ID not in ('N-A','NA')	-- 25-Jan-2018|EA|don't allow N-A to be sent
			and datepart(WEEK, se.enrolment_date) = (case when @weeknum=0 then datepart(WEEK, se.enrolment_date) else @weeknum end)

			UNION

			SELECT DISTINCT st.STUDENT_ID 
				, (case 
					when  scc.email like '%xx.com%' then ''
					when len(rtrim(isnull( scc.email,''))) <1 then AD.EMAIL_ADDRESS 
					else  scc.email end) as [EMAIL_ADDRESS]
				, (case when len(rtrim(isnull(st.STUDENT_EMAIL,''))) <1 then '' 
						when st.STUDENT_EMAIL = scc.email then ''		-- if parent and student have same email then don't CC
						when AD.EMAIL_ADDRESS = scc.email then ''		-- if address and student have same email then don't CC
						else st.STUDENT_EMAIL
					end) as  [EMAIL_ADDRESS_CC]
				, scc.RELATIONSHIP
				, se.YEAR_LEVEL
				, st.CATEGORY_CODE
				, dbo.ProperCase(scc.FIRST_NAME) AS to_name
				, (SELECT TOP 1 ENROLMENT_DATE FROM STUDENT_SUBJECT zss WHERE STUDENT_ID = st.STUDENT_ID AND ENROLMENT_YEAR = se.ENROLMENT_YEAR AND SUBJECT_ID IN (2,12,22)) AS LPEnrolmentDate
				, se.ENROLMENT_YEAR
				, se.ENROLMENT_DATE
				, se.PASTORAL_CARE_ID
            , concat(N'Your enrolment confirmation is attached in Acrobat PDF format. Please contact Virtual School Victoria on 03 8480 0000 if you have any questions.',
                        char(13), char(10), char(13), char(10), N'(Ref. ID ', cast(st.STUDENT_ID as nvarchar(20)), N')') as EmailContent
			FROM dbo.STUDENT AS st 
			INNER JOIN dbo.STUDENT_ENROLMENT AS se ON st.STUDENT_ID = se.STUDENT_ID
			INNER JOIN dbo.ADDRESS AS ad ON st.CURR_RESID_ADDRESS_ID = ad.ADDRESS_ID
			JOIN dbo.STUDENT_CARER_CONTACT scc ON st.CARER_ID_PARENT_A = scc.CARER_ID
			WHERE scc.RELATIONSHIP <> 'SS'
			AND st.CATEGORY_CODE != 'SCHOOL' 
			AND se.ENROLMENT_STATUS = 'E'
			AND scc.EMAIL IS NOT NULL
			AND se.ENROLMENT_YEAR = (case when month(getdate()) > 9 then year(getdate()) + 1 else year(getdate()) end)
			AND se.YEAR_LEVEL BETWEEN 0 AND 3
			-- 25-Jan-2018|EA| allow for current or old batch runs
	-- AND convert(date, se.ENROLMENT_DATE) <= convert(date, (getdate() ))		-- Batch
	and convert(date, se.PASTORAL_ALLOC_DATE) = convert(date, (getdate()))  -- START 2019 RULES
			-- and convert(date, se.enrolment_date) = (case when @weeknum=0 then convert(date, (getdate() - 2 )) else convert(date, se.enrolment_date) end)  -- ONGOING
			-- 25-Jan-2018|EA| allow for single or bulk runs
			and st.student_id = (case when @studentid=0 then st.student_id else @studentid end)
			and se.PASTORAL_CARE_ID not in ('N-A','NA')	-- 25-Jan-2018|EA|don't allow N-A to be sent
			and datepart(WEEK, se.enrolment_date) = (case when @weeknum=0 then datepart(WEEK, se.enrolment_date) else @weeknum end)
		) k
		--WHERE convert(date, LPEnrolmentDate) <= convert(date, (getdate() - 2 )) -- ONE OFF
		-- WHERE convert(date, LPEnrolmentDate) = convert(date, (getdate() - 1 )) -- ONGOING
		-- 25 Jan 2018|EA| change to handle weeknum or not
		-- WHERE convert(date, LPEnrolmentDate) <= (case when @weeknum=0 then convert(date, (getdate()  )) else convert(date, LPEnrolmentDate) end)  -- ONGOING
		-- WHERE STUDENT_ID = 91055
	) a
	-- WHERE RowNum BETWEEN 1 and 5
	-- where student_id not in (90649,93912,97679,97682,97688,97691,97692,97735,97748,97765,97768,97769,97780,97788,97789,97792,97795,97807,97811,97818,97819,90884,97537,97583,97654,97656,97686,97690,97736,97747,97755,97756,97757,97759,97761,97771,97772,97773,97775,97781,97783,97785,97786,97799,97804,97806,97810,97814,97816,97817,93103,94262,97528,97558,97574,97633,97635,97655,97674,97676,97680,97684,97687,97758,97762,97763,97764,97767,97777,97778,97779,97784,97787,97791,97793,97794,97796,66192,93841,97554,97556,97562,97675,97677,97681,97689,97737,97754,97760,97766,97770,97774,97776,97790,97797,97798,97800,97801,97802,97808,97812,97813,97815,97820,97803,97805,97809,97821) 
	
	-- set @updateflag = 0
	
	if (@updateFlag > 0)
	begin
		INSERT [dbo].[STUDENT_COMMENT] ([COMMENT_ID],[STUDENT_ID],[COMMENT],[LAST_ALTERED_BY] ,[LAST_ALTERED_DATE],[ACTIVE_STATUS],[COMMENT_TYPE])
		SELECT 
			(select MAX(COMMENT_ID)+1 from student_comment) + RowNum
			, STUDENT_ID
			--, 'Green Letter Sent : ' + convert(varchar(20), GETDATE(), 103)
			, 'Confirmation of enrolment emailed to ' + EMAIL_ADDRESS + (case when len(rtrim(EMAIL_ADDRESS_CC)) > 0 then ' and CC’d to ' + replace(EMAIL_ADDRESS_CC, ';', ' and') else '' end) + '.'
			, 'Enrol'
			, GETDATE()
			, 'A'
			,'REGULAR'
		FROM
		(
			SELECT * FROM @StudentList
		) K
	end

	SELECT * FROM @StudentList

--exec spi_WelcomeDECVFto10_SendEmails
END