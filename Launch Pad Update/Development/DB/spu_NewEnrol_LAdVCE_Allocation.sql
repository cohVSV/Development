/****** Object:  StoredProcedure [dbo].[spu_NewEnrol_LAdVCE_Allocation]    Script Date: 7/12/2021 3:43:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spu_NewEnrol_LAdVCE_Allocation]
(             
 @studentid int = 0, @batchSize int = 50, @updateFlag int = 0
)             
AS        
BEGIN         
SET NOCOUNT ON        
/*        
Gets single or list of SCHOOL or NON-SCHOOL based VCE (11&12) students that need to have VCE Orientation (LP4/924) 
subjects added and Learning Advisor (LAd) added based on limited list of LAd.
        
Functionality: for the current year, check if the Student is able to be assigned a LAd depending on Year level,
and check in view_ClassList for current Enrolment Year and Subjects there is no VCE Orientation (LP4/924) 
 (LP4/924) and add subject if needed, and assign LAd to it as teacher. School based still get NO_SST
 - @student_id: student ID to allocate specifically to, or 0 to use @batchsize for bulk assign
 - @batchSize: number of subjects to work through each time it's run (only used if @student_id = 0);        
 - @updateFlag: Update if @updateFlag = 1 (default 0 to show only)        
      
       
UPDATED: (based on [spu_NewEnrol_SSTMyVCE_Allocation] altered to allow single Student to be allocated, and new terminology 'LAd')
	
14-Jan-2014|EA| per addition of MyVCE (LP4 for 11/12) this proc will get list and insert MyVCE

3-Dec-2015|EA| additions for ticket #726:
	>To allow proper duty of care and allowances to take place, a business case has been put forward to get the following changes done;
	>
	>	Single subject VCE students still get "NO_SST" for support teacher.
	>	Single subject VCE students get 11-12 Orientation with the single subject teacher to be the Teacher allocated to the subject.
	>	This allocation should not be counted toward time allocation of the teacher, as per standards currently.
	>Approved by FW to with reasoning is to allow allocation of the teacher to the Scaffold system to monitor student progress.
19-Jan-2016|EA| actually implemented stuff from 3-Dec-2015 after missing it at end of year.
	-- before adding the Subject, check for number of subjects and get Staff ID (if any)
	and if single subject then change SST to 'NO_SST' and change LP4/11-12 Orientation teacher to subject teacher

27-Jan-2017|EA| late changes to the methods mean creating this proc based on old proc so we can make the necessary changes
18-May-2017|EA| for School and single subject, change LAD to NO_SST but carry through selected Subject teacher for LP4 teacher

18-Jan-2018|EA| alter to use STAFF_LAD_ALLOCATION for specific max lad counts not based on TF.
02-Feb-2018|EA| adjust for single subject OR school based per latest updates to manual, and single sujbect not N-A teacher
03-Feb-2018|EA| set @PickALAd = 1 usually get the code to pick but if a subject teacher should be used and there are none then skip ver
08-Jun-2018|EA| add setting of PASTORAL_ALLOC_BY and PASTORAL_ALLOC_DATE fields for when the LAd (Pastoral Care ID was set and by whom)
26-Apr-2019|EA| add logging if LAd is allocated (to table log_LAd_AutoAllocated ) (Live 9 May 2019)
30-May-2019|EA| add a comment when LAd allocated to help find problems after several students that have LAds that are not easily explainable
6-June-2019|EA| add check that LAd comment does not exist in last 2 seconds so not repeated for this batch (and therefore shouldn't be others)
22-Dec-2019|EA| 'reserve' likely future VSV re-enrols by checking for Future Intentions for previous year (ie for 2020 check 2019)
	and reducing that LAds maximum limit, until 21/Feb each year (day 52, leap-year or not)
14-Jan-2021|RW| Relaxed the year level criteria for rollover (students being allocated the same Learning Advisors across study years),
                   as per request from Mal and Scott Hetherington during 11 Dec 2020 meeting
                Avoid over-allocation, flagged as an issue in the same meeting
                  - Rollover is the one exception where the Learning Advisor's max allocation is ignored, per Mal's advice
                Fixed logic bug where dice roll was not being reset after each allocation, so that Learning Advisors would be advantaged or
                   disadvantaged based on bonuses from previous student matches
                  - As part of this, the dice roll decrementing was removed completely. It doesn't make much sense to have it when
                     the rolls are reset for each batch call in any case
                Fixed logic bug where teachers of single subject or school-based students would be unfairly advantaged if they were also
                   available to be allocated as Learning Advisors for students not in those categories
                General tidy up eg. change tmpAllocation to a local table instead of a global temporary table, remove unused variables 
19 Jan 2021|RW| Added a safeguard to prevent students without any VCE subjects from having a VCE-O subject added
                Previously VCE-O subjects were being created for year 10 students who had no VCE subjects
13 Feb 2021|RW| Migrated the VCE-O creation functionality to a revamped spu_NewEnrol_AddLAdLaunchPad, now that the business rules around
                   LP and VCE-O creation for school-based and VSV-based students has been outlined
                Removed the criteria that school-based students must be in year levels 10-12 to qualify for NO_SST auto-allocation
                Still some clean-up required here, after the changing rules has caused a mess over the years
11 Dec 2021|RW| Updated reference to LP/introductory subjects to use the view instead of hardcoding subject IDs
exec spu_NewEnrol_LAdVCE_Allocation 0, 1,1
exec spu_NewEnrol_LAdVCE_Allocation 0, 1,0
exec spu_NewEnrol_LAdVCE_Allocation 56814, 1,0
*/

 declare @retval     int
 SET @retval = 0        

 declare @FailCount int    -- stores total fails in a batch - if > @batchSize then jump out of batch        
 set @FailCount = 0   
             
 DECLARE @tmpSTUDENT_ID int        
 --set @tmpSTUDENT_ID = 80538

 DECLARE @ENROLMENT_YEAR int        
 DECLARE @Semester varchar(1)
 declare @tmpyearlevel	smallint      
 declare @tmpEnrolCategory varchar(20)
 --1-2-2012|EA| create a temp table variable      
 DECLARE @tmpStudentIDExclusions TABLE ( STUDENT_ID int)      
 DECLARE @tmpStudentIDBatch TABLE ( STUDENT_ID int)  
 set @ENROLMENT_YEAR = YEAR(getdate())        
 select @Semester=(case when month(getdate()) > 5 then 2 else 1 end)		-- June2012|EA| alter from June to May

 --19-Jan-2016|EA| variables for single subject teacher checking
  declare @SUBJECT_COUNT    int  
  declare @SSStaffID		VARCHAR(10)	
  SET @SUBJECT_COUNT = 0		--DEFAULT VALUE  
  SET @SSStaffID = 'N-A'

/** Set up LAd table for choices **/
-- 14 Jan 2021|RW| Use a local table for this instead of a global temporary table

   declare @tmpAllocation table
   (
      LAd_ID        varchar(8),
      YEAR_LEVEL    smallint,
      MAX_STUDENTS  smallint default 12,
      STUDENT_COUNT smallint default 0,
      DICE_ROLL     smallint default 0
   );

-- populate the LAd with counts of students, for use below
-- 18-Jan-2018|EA| alter to use STAFF_LAD_ALLOCATION for specific max lad counts not based on TF.
-- 14-Jan-2021|RW| Defer initialising the dice roll until the start of each loop iteration
--                 Removed the LAD_TIMEFRAC, as it wasn't being calculated properly (hardcoded proportion against a max of 12 students)
--                    and its only use was logging something that can be easily calculated using other fields
INSERT @tmpAllocation (LAd_ID, YEAR_LEVEL, MAX_STUDENTS)
SELECT upper(staff_id), ladys.year_level, lad_max_alloc
	from staff_lad_allocation ladys
	where lad_max_alloc > 0


-- update current student LAd counts
update @tmpAllocation
	set STUDENT_COUNT =  (select count(se.student_id) 
							from STUDENT_ENROLMENT se
							where se.ENROLMENT_YEAR = @ENROLMENT_YEAR
							and se.ENROLMENT_STATUS = 'E'
							and se.PASTORAL_CARE_ID = [@tmpAllocation].LAd_ID
						)

-- 22-Dec-2019|EA| 'reserve' likely future VSV re-enrols by checking for Future Intentions for previous year (ie for 2020 check 2019)
--	, until 21/Feb each year (day 52, leap-year or not)
if (datepart(DAYOFYEAR, GETDATE()) < 52)
	begin
		-- print 'would adjust max LAD here'
		
		update @tmpAllocation
		set MAX_STUDENTS =  MAX_STUDENTS - (select  count(se.student_id) 
											from student_enrolment se join  STUDENT_FUTURE_INTENTIONS sfi
												on se.STUDENT_ID = sfi.STUDENT_ID  and se.ENROLMENT_YEAR = sfi.ENROLMENT_YEAR
											where se.PASTORAL_CARE_ID<> 'NO_SST'
											and se.YEAR_LEVEL between 10 and 12
											and sfi.RE_ENROLMENT_FLAG='Y' 
											-- adjust enolment year to get previousyear future intentions
											and se.ENROLMENT_YEAR=@ENROLMENT_YEAR-1
											-- exclude already enrolled 
											and se.student_id not in (select student_id from student_enrolment where ENROLMENT_YEAR=@ENROLMENT_YEAR)
											and se.PASTORAL_CARE_ID = [@tmpAllocation].LAd_ID
										)
		
	end

/** LAd table set, maximums set and adjusted, - now get student **/

 -- do an exists and a loop here        
 while (@retval < @batchSize)        
  begin        

		set @retval = @retval + 1
		-- Jan-2019|EA| reset pick and staff id 
		set @SSStaffID ='N-A'

      -- Jan 14 2021|RW| Re-roll the dice for all Learning Advisors at the beginning of each loop
      --                 The expression returns a random integer between 1 and 50
      --                 Learning Advisors with maxed out allocations are ruled out of contention, except in the case of rollover
      update @tmpAllocation
	      set  dice_roll = iif(STUDENT_COUNT < MAX_STUDENTS, (1+(ABS(CHECKSUM(NewId())) % 50)), -100);

	-- also get single student if student id passed in
		select top 1 @tmpSTUDENT_ID=student.STUDENT_ID, @tmpyearlevel = STUDENT_ENROLMENT.YEAR_LEVEL
		, @tmpEnrolCategory = student.CATEGORY_CODE
		--select top 10 student.STUDENT_ID
		from Student_enrolment, student
		where Student_enrolment.STUDENT_ID = student.STUDENT_ID
		and enrolment_year = @ENROLMENT_YEAR
		and enrolment_status = 'E'
		and PASTORAL_CARE_ID in ('N-A','NA') -- not yet allocated an SS teacher  

		-- exclude special categories of enrolment which will be manually allocated
		-- and (student.category_code not in ('PROGRAM', 'OTHER', 'SPORTSPERF'))	-- excludes too many
		-- and (student.category_code not in ('SCHOOL'))	-- 19 Jan 2018|EA|exclude SCHOOL
		and (student.subcategory_code not in ('DOTS' ,'YOUNGPARNT', 'DANCEARTS'))
		and (student.HOME_SCHOOL_ID not in ('18890.00','18890.10','18736.00','18736.10')) --Wonthaggi and The Pavilion
		-- LN:30/1/2015 All year 11 and 12 students will get VCE Orientation(formerly MyVCE) according to MM.
		-- and YEAR_LEVEL between 11 and 12 -- LN:30/1/2015 
		and (YEAR_LEVEL in (11,12) or (student.category_code in ('SCHOOL')))

		-- 14-Jan-2014|EA| per addition of MyVCE (LP4 for 11/12) will also add them here
		-- 24-Jan-2018|EA| temp remove this to clear up 22 that have accidently got VCE O but NA LAd
		-- and student.student_id not in (select distinct student_id from student_subject where enrolment_year = @ENROLMENT_YEAR and SUBJECT_ID in (921, 922, 923, 924))
   		-- exclude failed students by Student ID for this batch
		and student.STUDENT_ID not in (Select STUDENT_ID from @tmpStudentIDExclusions)       

		-- 18-Jan-2018|EA| if 0 then get next in line, otherwise get single student
		and student.student_id = (case when @studentid=0 then student.student_id else @studentid end)
		order by enrolment_date asc, student.STUDENT_ID asc 


	   --debug        
	   -- print @student_ID        
	   -- debug - save student ID for later printing - will NOT be processed
	   if (@updateFlag>=0) insert into @tmpStudentIDBatch(STUDENT_ID) values(@tmpSTUDENT_ID)

	   -- 19-Jan-2016|EA| checking for single subject students and changing the SST and LP4 teacher appropriately
	   -- 16-May-2017|EA| remoe the group by so if NO subjects then will return 0 instead of nothing
		select @SUBJECT_COUNT = count(*)
		from student_subject
		where ENROLMENT_YEAR=@ENROLMENT_YEAR
			and SEMESTER = @Semester
			and student_id = @tmpSTUDENT_ID
			and SUBJ_ENROL_STATUS in ('C','D','E','P') 
			and SUBJECT_ID not in (select vis.IntroductorySubjectID from dbo.vwIntroductorySubject as vis where (vis.IntroductorySubjectStatus = 1))
		-- group by student_id
		
		--2-Feb-2018|EA| adjust for single subject OR school based per latest updates to manual	
		if (@SUBJECT_COUNT = 1 OR @tmpEnrolCategory = 'SCHOOL')
		-- if (@SUBJECT_COUNT >= 1 and @tmpEnrolCategory = 'SCHOOL')
		-- 2018 - ALL School based to get a random teacher
			-- 2017 - if School based then add NO_SST for single (Melek will allocate Non-school single subjects)
			begin
				if (@updateFlag=1)
				begin
					-- for single subjects, the SST should be 'NO_SST'
					-- 18-May-2017|EA| but for School and single subject, change LAD to NO_SST but carry through 
					-- 08-June-2018|EA| add LAd alloc by/date
					-- set @SSStaffID = 'NO_SST'
					update STUDENT_ENROLMENT
						set PASTORAL_CARE_ID = 'NO_SST',
						LAST_ALTERED_BY = 'AutoJob', 
						LAST_ALTERED_DATE= GETDATE(), 
						PASTORAL_ALLOC_BY ='AutoJob', 
						PASTORAL_ALLOC_DATE = GETDATE()
						where STUDENT_ID = @tmpSTUDENT_ID  
						and ENROLMENT_YEAR = @ENROLMENT_YEAR  
						and PASTORAL_CARE_ID in ('N-A','NA','')  

	            --15-Jan-2014|EA|set to previous Student to exclude for this batch.        
	            if (@@ERROR <> 0)        
	            begin
						
		            insert into @tmpStudentIDExclusions(STUDENT_ID) values(@tmpSTUDENT_ID)
		            set @retval = @retval - 1        
		            set @FailCount = @FailCount + 1        
		            --print @FailCount        
		            --print @@ERROR    --debug
		            if (@FailCount > @batchSize) set @retval = @retval + 1        
               end;
               else
               begin
						-- 30-May-2019|EA| add comment when allocated 
						if not exists(select * from student_comment where comment_id > 832700 and last_altered_by='AutoLAd' and student_id= @tmpSTUDENT_ID and datediff(SECOND,last_altered_date,getdate()) < 2)
							begin
								INSERT [dbo].[STUDENT_COMMENT] ([COMMENT_ID],[STUDENT_ID],[COMMENT],[LAST_ALTERED_BY] ,[LAST_ALTERED_DATE],[ACTIVE_STATUS],[COMMENT_TYPE])
								SELECT (select MAX(COMMENT_ID)+1 from student_comment) , @tmpSTUDENT_ID, 'LAd auto-allocated as NO_SST (School or single subject)', 'AutoLAd', GETDATE(), 'A','REGULAR'
							end 
		
	            end;        
	             
				end
			end;
		-- end of 19-Jan major single subject changes

		-- Now select the random LAd where not the subject teacher and in the correct year level
		-- eliminate the Subject teachers from the list Only if SST not yet allocated
         else
			begin
				UPDATE @tmpAllocation
					set DICE_ROLL = -200
					where LAd_ID in (select STAFF_ID
									from student_subject
									where ENROLMENT_YEAR=@ENROLMENT_YEAR
										and SEMESTER = @Semester
										and student_id = @tmpSTUDENT_ID
										and SUBJ_ENROL_STATUS in ('C','D','E','P') 
										and SUBJECT_ID not in (select vis.IntroductorySubjectID from dbo.vwIntroductorySubject as vis where (vis.IntroductorySubjectStatus = 1))
									)

				
				-- 22-Dec-2019|EA| boost +500 if LAd for student last year to (almost) guarantee same LAd
				-- and not do pick if we have a 500 LAd
            -- 14 Jan 2020|RW| This ignores the current workload max, but should it..?
            --                 Mal M has indicated that the continuity for students is the most important thing, so leave this as-is for now.
				update @tmpAllocation
					set DICE_ROLL = +500
					where LAd_ID in (select se.PASTORAL_CARE_ID 
									from STUDENT_ENROLMENT se
									where se.ENROLMENT_YEAR = (@ENROLMENT_YEAR-1)
									and se.PASTORAL_CARE_ID <> 'NO_SST'
									and se.student_id = @tmpSTUDENT_ID
									)

				-- 22-Dec-2019|EA| now check if any LAds need to be rolled over - if 1 (can only be a single one) then use it
            -- 14 Jan 2021|RW| Relaxed the year level criteria for rollover, as per request from Mal and Scott Hetherington during 11 Dec 2020 meeting
				if exists(select * from @tmpAllocation where DICE_ROLL = 500)
					begin
						select top 1 @SSStaffID = LAd_ID
						from @tmpAllocation
						where DICE_ROLL = 500;
					end
				else
					begin
					-- get the highest roll one for the lower student count
					select top 1 @SSStaffID = LAd_ID
							from @tmpAllocation
							where YEAR_LEVEL = @tmpyearlevel
								and DICE_ROLL > 0
							order by student_count asc, DICE_ROLL desc 
					end 

				-- print 'Student: '+ convert(varchar(8),@tmpSTUDENT_ID) + ' : Yearlevel: '+convert(varchar(3),@tmpyearlevel) + ' LAd : '+ @SSStaffID

            -- 14 Jan 2021|RW| If a Learning Advisor has been selected for the student, perform the updates
            --                 Previously the school-based and single subject cases above (when @PickALAd = 0) were also falling through to this code,
            --                 and it would have only been the PASTORAL_CARE_ID check (on STUDENT_ENROLMENT) and last_altered_date check (on STUDENT_COMMENT)
            --                 that prevented the erroneous duplicate updates.
            --                 Also, the count of student on @tmpAllocation should not have been updated in that instance, as NO_SST is assigned
		      if (@tmpSTUDENT_ID is not null and @SSStaffID <> 'N-A' and @updateFlag=1)        
			   begin        

				   -- set the SST and the later add VCE Orientation if needed
				   -- update the SST
				   -- 08-June-2018|EA| add LAd alloc by/date
					   update STUDENT_ENROLMENT
						   set PASTORAL_CARE_ID = @SSStaffID,
						   LAST_ALTERED_BY = 'AutoJob', 
						   LAST_ALTERED_DATE= GETDATE(),
						   PASTORAL_ALLOC_BY ='AutoJob', 
						   PASTORAL_ALLOC_DATE = GETDATE()
						   where STUDENT_ID = @tmpSTUDENT_ID  
						   and ENROLMENT_YEAR = @ENROLMENT_YEAR  
						   and PASTORAL_CARE_ID in ('N-A','NA','')  
	
	               --15-Jan-2014|EA|set to previous Student to exclude for this batch.        
	               if (@@ERROR <> 0)        
	               begin
						
		               insert into @tmpStudentIDExclusions(STUDENT_ID) values(@tmpSTUDENT_ID)
		               set @retval = @retval - 1        
		               set @FailCount = @FailCount + 1        
		               --print @FailCount        
		               --print @@ERROR    --debug
		               if (@FailCount > @batchSize) set @retval = @retval + 1        
	               end;        
                  else
                  begin
					      -- 30-May-2019|EA| add comment when allocated 
					      if not exists(select * from student_comment where comment_id > 832700 and last_altered_by='AutoLAd' and student_id= @tmpSTUDENT_ID and datediff(SECOND,last_altered_date,getdate()) < 2)
							      begin
								      INSERT [dbo].[STUDENT_COMMENT] ([COMMENT_ID],[STUDENT_ID],[COMMENT],[LAST_ALTERED_BY] ,[LAST_ALTERED_DATE],[ACTIVE_STATUS],[COMMENT_TYPE])
								      SELECT (select MAX(COMMENT_ID)+1 from student_comment) , @tmpSTUDENT_ID, 'LAd auto-allocated as ' + convert(varchar(10),@SSStaffID) + ' ', 'AutoLAd', GETDATE(), 'A','REGULAR'
							      end

					      -- now allocated, then increment the student_count (so not recalc every loop)
                     -- 14 Jan 2021|RW| Don't decrement the dice roll here, it needs to be reset at the start of the loop to prevent side effects across iterations
                     --                 The year level match isn't enforced but this is fine since currently a Learning Advisor can only be available for one year level.
					      update @tmpAllocation
						      set STUDENT_COUNT = STUDENT_COUNT + 1
							      where (LAd_ID = @SSStaffID);

				         /* 26-Apr-2019|EA|add to log_LAd_AutoAllocations  */
                     -- 14 Jan 2021|RW| Remove the year level filter to guarantee that rollover allocations (where the year level won't necessarily match) are logged
				         INSERT INTO [dbo].[log_LAd_AutoAllocations]
						            ([STUDENT_ID] ,[ENROLMENT_YEAR] ,[LAd_Allocated] ,[allocated_datetime]
						            ,[YEAR_LEVEL] ,[MAX_STUDENTS] ,[STUDENT_COUNT])
				         select @tmpSTUDENT_ID, @ENROLMENT_YEAR, LAd_ID, getdate()
						         ,@tmpyearlevel ,[MAX_STUDENTS] ,[STUDENT_COUNT]
					         from  @tmpAllocation
					         where LAd_ID = @SSStaffID
				         /* ****  end 26 April 2019 *****/
                  end;
	
            end;

			end;
           
   end;		-- while (@retval < @batchSize)  
             
   if (@updateFlag=0) 
	begin
		
		select * from @tmpStudentIDBatch
		
		-- debug
		select @SSStaffID, @SUBJECT_COUNT,  @tmpEnrolCategory, @tmpyearlevel
		
		select * from @tmpStudentIDExclusions    
		    
		select * from @tmpAllocation order by student_count asc, DICE_ROLL desc
	end 
        
end