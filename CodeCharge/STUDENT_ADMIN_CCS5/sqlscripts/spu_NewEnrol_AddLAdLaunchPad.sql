/*
exec spu_NewEnrol_AddLAdLaunchPad 0, 1,0

*/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[spu_NewEnrol_AddLAdLaunchPad]
(             
 @studentid int = 0, @batchSize int = 50, @updateFlag int = 0
)             
AS        
BEGIN         
SET NOCOUNT ON        
/*        
Gets single or list of SCHOOL or NON-SCHOOL based non-VCE (3-10) students that have an LAd Assigned and add Launchpad per Yearlevel
As the Year Level Coords will be manually allocating LAds for 2017 (!) this only needs to add LP if LAd exists.
        
Functionality: for the current year, check if the Student is able to be assigned a LAd depending on Year level,
and check in view_ClassList for current Enrolment Year and Subjects there is no Launchpad 
 and add subject if needed, and assign LAd to it as teacher. School based still get NO_SST
 - @student_id: student ID to allocate specifically to, or 0 to use @batchsize for bulk assign
 - @batchSize: number of subjects to work through each time it's run (only used if @student_id = 0);        
 - @updateFlag: Update if @updateFlag = 1 (default 0 to show only)        

       
UPDATED: (based on [spu_NewEnrol_SSTMyVCE_Allocation] altered to allow single Student to be allocated, and new terminology 'LAd')
29-Jan-2017|EA| late changes to the methods mean creating this proc based on old proc so we can make the necessary changes


exec spu_NewEnrol_AddLAdLaunchPad 0, 2,1
*/

 declare @retval     int
 SET @retval = 0        

 DECLARE @RC int      -- returnvalue from spu_NewEnrol_SSTeacher_Allocation        
        
 declare @FailCount int    -- stores total fails in a batch - if > @batchSize then jump out of batch        
 set @FailCount = 0   
             
 DECLARE @tmpSTUDENT_ID int        
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
  declare @SSStaffID		VARCHAR(10)	
  SET @SSStaffID = 'N-A'

 -- do an exists and a loop here        
 while (@retval < @batchSize)        
  begin        
	   select top 1 @tmpSTUDENT_ID=student.STUDENT_ID, @tmpyearlevel = STUDENT_ENROLMENT.YEAR_LEVEL
		, @tmpEnrolCategory = student.CATEGORY_CODE, @SSStaffID = STUDENT_ENROLMENT.PASTORAL_CARE_ID
	   --select top 10 student.STUDENT_ID
	   from Student_enrolment, student
	   where Student_enrolment.STUDENT_ID = student.STUDENT_ID
		and enrolment_year = @ENROLMENT_YEAR
		and enrolment_status = 'E'
		and PASTORAL_CARE_ID not in ('N-A','NA') -- HAS as LAd

		-- exclude special categories of enrolment which will be manually allocated
		and (student.subcategory_code not in ('DOTS' ,'YOUNGPARNT', 'DANCEARTS'))
		and (student.HOME_SCHOOL_ID not in ('18890.00','18890.10','18736.00','18736.10')) --Wonthaggi and The Pavilion
		and YEAR_LEVEL between 3 and 10

		-- 14-Jan-2014|EA| per addition of MyVCE (LP4 for 11/12) will also add them here
		and student.student_id not in (select distinct student_id from student_subject where enrolment_year = @ENROLMENT_YEAR and SUBJECT_ID in (921, 922, 923, 924))
   		-- exclude failed students by Student ID for this batch
		and student.STUDENT_ID not in (Select STUDENT_ID from @tmpStudentIDExclusions)       
		order by enrolment_date asc, student.STUDENT_ID asc 
    
		set @retval = @retval + 1
   
	   --debug        
	   -- print @student_ID        
	   -- debug - save student ID for later printing - will NOT be processed
	   if (@updateFlag>=0) insert into @tmpStudentIDBatch(STUDENT_ID) values(@tmpSTUDENT_ID)

	   if (@tmpSTUDENT_ID is not null and @updateFlag=1)        
		begin        
			-- set the SST and the later add VCE Orientation if needed
			/* put the section from Allocation in here to insert the MyVCE subject*/
			if not exists(select * from STUDENT_SUBJECT WHERE STUDENT_ID = @tmpSTUDENT_ID and ENROLMENT_YEAR = @ENROLMENT_YEAR and SUBJECT_ID in (921, 922, 923, 924))  
			begin  
				print 'Adding LaunchPad'  + convert(varchar(8), @tmpSTUDENT_ID)
				-- insert MyVCE subject
				INSERT INTO STUDENT_SUBJECT  (student_id, enrolment_year, subject_id, staff_id, semester, enrolment_date, subj_enrol_status
											, VBOS_REGISTERED, APPEARS_ON_VASS, NUM_ASSMT_SUBMISSIONS, EXTENSION_OF_VCE_UNIT, course_distribution
											, LAST_ALTERED_BY, LAST_ALTERED_DATE)
				select @tmpSTUDENT_ID, @ENROLMENT_YEAR
					 ,(case when (@tmpyearlevel>=3 and @tmpyearlevel<=6) then 921
								when (@tmpyearlevel>=7 and @tmpyearlevel<=8) then 922
								when (@tmpyearlevel>=9 and @tmpyearlevel<=10) then 923
								else 923		--likely any unknowns are Yr 10
							end
							) as subject_id
					,  @SSStaffID, @semester, GETDATE(), 'C'
					, 1,0,0,0,'I'
					,'AutoJob', GETDATE()

				--15-Jan-2014|EA|set to previous Student to exclude for this batch.        
				if (@@ERROR <> 0)        
				begin
					
					insert into @tmpStudentIDExclusions(STUDENT_ID) values(@tmpSTUDENT_ID)
					set @retval = @retval - 1        
					set @FailCount = @FailCount + 1        
					--print @FailCount        
					--print @@ERROR    --debug
					if (@FailCount > @batchSize) set @retval = @retval + 1        
				end        
             
				-- ADD The Interim and Final Result inserts for MyVCE
				insert into STUD_SUBJ_FINAL (STUDENT_ID,ENROLMENT_YEAR,SUBJECT_ID,LAST_ALTERED_BY, LAST_ALTERED_DATE)
				select @tmpSTUDENT_ID, @ENROLMENT_YEAR
					,(case when (@tmpyearlevel>=3 and @tmpyearlevel<=6) then 921
								when (@tmpyearlevel>=7 and @tmpyearlevel<=8) then 922
								when (@tmpyearlevel>=9 and @tmpyearlevel<=10) then 923
								else 923		--likely any unknowns are Yr 10
							end
							) as subject_id, 'AutoJob', GETDATE()
				
				/* Insert STUD_SUB_INTERIM Table */
				insert into STUD_SUB_INTERIM (STUDENT_ID,ENROLMENT_YEAR,SUBJECT_ID,LAST_ALTERED_BY, LAST_ALTERED_DATE)
				select @tmpSTUDENT_ID, @ENROLMENT_YEAR
					,(case when (@tmpyearlevel>=3 and @tmpyearlevel<=6) then 921
								when (@tmpyearlevel>=7 and @tmpyearlevel<=8) then 922
								when (@tmpyearlevel>=9 and @tmpyearlevel<=10) then 923
								else 923		--likely any unknowns are Yr 10
							end
							) as subject_id, 'AutoJob', GETDATE()

			end	      -- not exists (select * from STUDENT_SUBJECT...  

		end        --(@STUDENT_ID is not null )
		-- debug
		--print @STUDENT_ID
            
   end		-- while (@retval < @batchSize)  
             
   if (@updateFlag>=0) 
	begin
		
		select * from @tmpStudentIDBatch

		select * from @tmpStudentIDExclusions    
		
	end 
        
end


GO


