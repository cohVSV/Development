/*
DECLARE @RC int

EXECUTE @RC = [dbo].[spi_AddStudentSubject] 
   @StudentID = 56794
  ,@EnrolmentYear = 2017
  ,@SubjectID = 101
  ,@Semester = '1'
  ,@UserID = 'erica'
  ,@update =1

print @RC


select * from student_subject
where enrolment_year = 2017
and student_id = 56794


select * from BOOK_DESPATCH
where enrolment_year = 2017
and student_id = 56794
*/





/****** Object:  StoredProcedure [dbo].[spi_AddCoreSubjects]    Script Date: 29/01/2017 3:20:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[spi_AddStudentSubject]
(
	@StudentID integer = null
	,@EnrolmentYear integer = null
	,@SubjectID integer = null
	,@Semester char(1) = '1'
	,@UserID varchar(8) = 'unknown'
	,@update integer = 0
)
AS
/*
Created by:			Eric Affleck  2017-Jan-22-29
Functionality:		(based on spi_ins_PrimarySubjects_extras)
					receives a student (usually 7-10 but may be VCE Non-schoolbased, Primary done separately)
					and inserts to STUDENT_SUBJECT table the single subject as passed in. This will replace the
					code-behind code in the Student_subject_maintain page that was migrated from old STUDENT_ADMIN website
					Will ignore if a subject already in STUDENT_SUBJECT for that Enrolment Year or subject inactive

Status:				testing

Updated:			22-Jan-2017|EA| created from spi_ins_PrimarySubjects_extras
					29-Jan-2017|EA| and adjusted for single subjects so Year Level Coords can select

*/
BEGIN
set nocount on

declare @strenrol_status char(1)
set @strenrol_status = 'C'	-- most of the time
declare @ExtraDistribution char(1)
set @ExtraDistribution = 'B'

if(@EnrolmentYear is null) set @EnrolmentYear = YEAR(getdate())

-- 29-Jan-2017|EA| likely to change, but if before the 13 of Feb each year (day 44 in 2017), set subj status to 'P'
if(datepart(DAYOFYEAR, getdate()) < 44) set @strenrol_status = 'P'

-- if no student ID then return 
if (@StudentID is null or @SubjectID is null)
	begin
		return -1	-- not enough details
	end
else
	BEGIN
	
	if (@update = 0) print 'Student Id: ' + convert(varchar(10), @Studentid ) + ' Enrol Year: ' + convert(varchar(4), @EnrolmentYear) + ' Subject ID: '+ convert(varchar(4),@SubjectID) + ' Subj Enrol Status: '+ @strenrol_status
	
	if (not exists(select subject_id from SUBJECT where status = 1 and subject_id = @SubjectID)) return -2

	if (@update = 1 and (not exists(select subject_id from STUDENT_SUBJECT where ENROLMENT_YEAR = @EnrolmentYear and subject_id = @SubjectID and STUDENT_ID = @StudentID)))

			-- start a transaction and do a check on each insert     
			BEGIN    
				BEGIN TRAN   
				BEGIN TRY  
		
					/* change enrol status for Semester 2 subjects based on month enrolment takes place
					 1 or B - always 'C'urrent; 2 - if July-Oct then 'C' otherwise likely 'P'ending
					*/
					if (@Semester='2' AND (MONTH(getdate()) not between 7 and 10)) set @strenrol_status = 'P'
			
					-- main subject INSERT
					INSERT STUDENT_SUBJECT(STUDENT_ID, ENROLMENT_YEAR, SUBJECT_ID,STAFF_ID, SEMESTER
						, ENROLMENT_DATE, SUBJ_ENROL_STATUS, VBOS_REGISTERED,APPEARS_ON_VASS, NUM_ASSMT_SUBMISSIONS, EXTENSION_OF_VCE_UNIT, COURSE_DISTRIBUTION
						,LAST_ALTERED_BY, LAST_ALTERED_DATE)
					SELECT @StudentID , @EnrolmentYear ,@SubjectID, 'NA', @Semester
						,getdate(), @strenrol_status ,1,0,0,0,@ExtraDistribution
						,@UserID, GETDATE()

					-- STUD_SUBJ_FINAL
					INSERT STUD_SUBJ_FINAL (STUDENT_ID,ENROLMENT_YEAR,SUBJECT_ID,LAST_ALTERED_BY, LAST_ALTERED_DATE)
					SELECT @StudentID , @EnrolmentYear ,@SubjectID ,@UserID, GETDATE()

					-- STUD_SUB_INTERIM
					INSERT STUD_SUB_INTERIM (STUDENT_ID,ENROLMENT_YEAR,SUBJECT_ID,LAST_ALTERED_BY, LAST_ALTERED_DATE)
					SELECT @StudentID , @EnrolmentYear , @SubjectID,@UserID, GETDATE()
					
					-- do insert to BOOK_DESPATCH as a bulk lot for all subjects, where needed
					-- can collect only those subjects enrolled (above) from STUDENT_SUBJECT and insert 1-5 in loop, WHILE/WEND
					declare @bookCounter integer
					set @bookCounter = 1

					declare @intMAX_BOOKS integer
					set @intMAX_BOOKS = 9	
					select @intMAX_BOOKS = max(MAX_BOOKS) FROM SUBJECT where subject_id = @SubjectID
		
					while @bookCounter <= @intMAX_BOOKS

						begin
							insert BOOK_DESPATCH (STUDENT_ID, ENROLMENT_YEAR, SUBJECT_ID, BOOK_ID, DESPATCH_STATUS, LAST_ALTERED_BY, LAST_ALTERED_DATE)
							select @StudentID, @EnrolmentYear, @SubjectID, @bookCounter, 'T', @UserID, GETDATE()
							
							set @bookCounter = @bookCounter + 1
						end

						--print 'DEBUG: inserted all books BOOK_DESPATCH'
				
				
					COMMIT TRAN   

				END TRY    
      
				BEGIN CATCH    
					ROLLBACK TRAN  
				END CATCH    
	
		
	END	-- if (exists(select subject_id from subjects

	END	-- @StudentID is null

	return 1
END
