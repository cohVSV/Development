/****** Object:  StoredProcedure [dbo].[spu_NewEnrol_AddLAdLaunchPad]    Script Date: 7/12/2021 3:41:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
   Procedure:     spu_NewEnrol_AddLAdLaunchPad
   Created:       12 Feb 2021|RW|
   Description:   Process to automatically create or backfill Launch Pad and VCE-O subjects for Y3-12 students after their Learning Advisor has been assigned.
                  A secondary fix-it process retrospectively assigns actual teachers to those subjects where students initially had 'N-A' (no teacher) for all
                     of their subjects. 

                  Outlined at the DB team meeting on 11 Feb 2021, the rules for creation of LP and VCE-O for the Year 3 - 12 students are:
                  - School-based students to be assigned one and only one of a LP or VCE-O subject, based on their subject year level only
                     Where they have subjects covering multiple levels, defer to the highest level subject eg. VCE
                  - VSV-based students can be assigned both a LP (one of LP1, LP2, LP3) and a VCE-O subject, based on their subject year level
                     and chronological year level. If either of those fit within the LP or VCE-O range, then the respective subjects should be generated.
                     Where there is ambiguity in the lower year levels between LP1, LP2, and LP3, again opt for the highest year level LP subject.
   
                  The algorithm steps separately through three groups of students, detecting which subjects need to be created:
                  - School-based students, year levels 3 - 12
                  - VSV-based students, year levels 3 - 10
                  - VSV-based students, VCE year levels
   
                  Note that with the rules above regarding subject and chronological year levels, there may be some overlap between the 2nd and 3rd groups
                  (the VSV-based students) where students fulfill both LP and VCE-O allocation criteria.

                  At each step, eligible LP and VCE-O subjects are determined for the students and added to a local table, which is eventually used to
                  populate the STUDENT_SUBJECT, STUD_SUBJ_FINAL, and STUD_SUBJ_INTERIM tables.

                  If for whatever reason a student has already been assigned a LP1, LP2, or LP3 other than the one that this process determines they should have,
                     a defensive approach is taken and no further LP is added; the non-standard LP is considered to have been added for a good reason.

                  LP teacher allocation:

                  VSV-based students (except for single subject students) will have their Learning Advisor assigned as their LP teacher.
                  School-based students and single-subject students will have a NO_SST Learning Advisor, so one of their teachers is assigned; this process
                     follows the previous policy of choosing an arbitrary teacher.

                  The 2nd group may initially end up having 'N-A' teachers allocated to their LP or VCE-O subject. The fix-it task towards the end of this procedure
                  exists to update those subjects once the student has an actual teacher assigned for any subject.

   Notes:         The subject codes are LP1: 921, LP2: 922, LP3: 923, and VCE-O: 924.

                  There are a couple of fix-it tasks similar to the one implemented here, to sync up the Learning Advisor and the LP or VCE-O teacher assigned:
                  - SQL Server Job STUDENT_ADMIN_DataIntegrityUpdates: "Update Changed SS Teacher to LaunchPad/DL/MYVCE subject Teacher NOT Primary"
                  - Same job, step "Update SS Teacher to subject Teacher PRIMARY Cascade", which executes spu_SSTeacher_PrimaryCascade
                  I've kept these active for now as they seem to have the purpose of undoing manual changes made by staff

   Replaces:      The previous version of spu_NewEnrol_AddLAdLaunchPad
                  The VCE-O addition section of spu_NewEnrol_LAdVCE_Allocation
                  spu_NewEnrol_AssignLAdLaunchPadTeacher
*/
ALTER procedure [dbo].[spu_NewEnrol_AddLAdLaunchPad]
(
   @updateFlag bit = 'false'
)
as
begin
   set nocount on;
   set xact_abort on;

   declare @enrolmentYear int = year(getdate());
   declare @semester char(1) = iif(month(getdate()) < 6, '1', '2');

   /*
      The local table into which new Launch Pad and VCE-O subjects will be added over the next few steps.
      The records within this table represent the LP and VCE-O subjects that this process has determined will need to be added for all enrolled students.
      After this table has been populated, it will be used to generate the subjects in the STUDENT_SUBJECT, STUD_SUBJ_FINAL, and STUD_SUB_INTERIM tables.
   */
   declare @ToBeCreatedList table
   (
      RowNumber          int          identity,
      StudentID          int          not null,
      LaunchPadSubjectID int          not null,
      StaffID            nvarchar(20) not null
   );


   /* School-based students, year levels 3 - 12
      These students need to have one and only one of LP1, LP2, LP3, or LP4 depending on their subject year level only
      If for whatever reason a student has already been assigned any LP subject including other than the one that this query determines they should have,
        this query will take a defensive approach and not add an additional LP; the non-standard LP is considered to have been added for a good reason
      Who to assign as the LP teacher, since school-based students have no Learning Advisor? The existing logic has been to select any subject teacher
      This process follows the same rule, including if the teacher is initially 'N-A'; BUT, any instances where 'N-A' is assigned to LP will eventually be
      cleaned up by the fix-it update below once an actual teacher is assigned for any subject.
   */
   with
      StudentNonLPSubject as
         (
            select
               ss.STUDENT_ID,
               sbj.YEAR_LEVEL,
               ss.STAFF_ID, -- May be 'N-A'; see comments above
               row_number() over (partition by ss.STUDENT_ID order by sbj.YEAR_LEVEL desc) as StudentSubjectNumber
             from
               dbo.STUDENT_SUBJECT as ss
               inner join dbo.SUBJECT as sbj
                  on (sbj.SUBJECT_ID = ss.SUBJECT_ID)
             where
               (ss.ENROLMENT_YEAR = @enrolmentYear)
               and (ss.SEMESTER in (@semester, 'B'))
               and (ss.SUBJ_ENROL_STATUS in ('P', 'C', 'D'))
               and (ss.SUBJECT_ID not in (921, 922, 923, 924))
               and (sbj.YEAR_LEVEL between 3 and 12)
         )
   insert into @ToBeCreatedList
   (
      StudentID,
      LaunchPadSubjectID,
      StaffID
   )
    select
       subq.STUDENT_ID,
       case
          when subq.LaunchPadYearLevel between 3 and 5 then 921
          when subq.LaunchPadYearLevel between 6 and 8 then 922
          when subq.LaunchPadYearLevel between 9 and 10 then 923
          else 924
       end as LaunchPadSubjectID,
       subq.SubjectTeacherID
     from
     (
        select
           st.STUDENT_ID,
           ss.YEAR_LEVEL as LaunchPadYearLevel,
           ss.STAFF_ID as SubjectTeacherID
         from
           dbo.STUDENT as st
           inner join dbo.STUDENT_ENROLMENT as se
              on (se.STUDENT_ID = st.STUDENT_ID)
           inner join StudentNonLPSubject as ss
              on (
                    (ss.STUDENT_ID = st.STUDENT_ID)
                    and (ss.StudentSubjectNumber = 1)
                 )
         where
           (se.ENROLMENT_YEAR = @enrolmentYear)
           and (se.ENROLMENT_STATUS = 'E')
           and (st.CATEGORY_CODE = 'SCHOOL')
           and (se.PASTORAL_CARE_ID <> 'N-A')
           and not exists
         (
            select
               *
             from
               dbo.STUDENT_SUBJECT as ss2
             where
               (ss2.STUDENT_ID = st.STUDENT_ID)
               and (ss2.ENROLMENT_YEAR = se.ENROLMENT_YEAR)
               and (ss2.SUBJECT_ID in (921, 922, 923, 924))
         )
     ) as subq;



   /* VSV-based students, year levels 3 - 10
      Students need to be allocated one of LP1, LP2, or LP3 if either their chronological year level OR one of their subject levels
        falls within the year 3 - 10 range.
      Where there is ambiguity around which LP should be assigned, the rules are:
      - Prefer the chronological year level
      - Otherwise, prefer the subject having the highest year level
      If for whatever reason a student has already been assigned a LP1, LP2, or LP3 other than the one that this query determines they should have,
        this query will take a defensive approach and not add an additional LP; the non-standard LP is considered to have been added for a good reason
      Aside from single subject students, VSV-based students will eventually have a Learning Advisor assigned even if there is none ('N-A') at this point.
      Once that happens, that Learning Advisor will also be allocated as their LP teacher by the fix-it update below.
      What about the single subject students? They will be assigned NO_SST as their Learning Advisor and we need to be careful not to assign that as
      their LP teacher. If they already have a teacher assigned for their subject, we can simply pick that up here and allocate them to the LP immediately,
      otherwise they will also be taken care of at a later time by the fix-it update further below.
   */
   with
      StudentNonLPSubject as
         (
            select
               ss.STUDENT_ID,
               sbj.YEAR_LEVEL,
               ss.STAFF_ID, -- May be 'N-A'; see comments above
               row_number() over (partition by ss.STUDENT_ID order by sbj.YEAR_LEVEL desc) as StudentSubjectNumber
             from
               dbo.STUDENT_SUBJECT as ss
               inner join dbo.SUBJECT as sbj
                  on (sbj.SUBJECT_ID = ss.SUBJECT_ID)
             where
               (ss.ENROLMENT_YEAR = @enrolmentYear)
               and (ss.SEMESTER in (@semester, 'B'))
               and (ss.SUBJ_ENROL_STATUS in ('P', 'C', 'D'))
               and (ss.SUBJECT_ID not in (921, 922, 923, 924))
               and (sbj.YEAR_LEVEL between 3 and 10)
         )
   insert into @ToBeCreatedList
   (
      StudentID,
      LaunchPadSubjectID,
      StaffID
   )
    select
       subq.STUDENT_ID,
       case
          when subq.LaunchPadYearLevel between 3 and 5 then 921
          when subq.LaunchPadYearLevel between 6 and 8 then 922
          else 923
       end as LaunchPadSubjectID,
       iif(subq.PASTORAL_CARE_ID <> 'NO_SST', subq.PASTORAL_CARE_ID, 'N-A') -- Check for NO_SST which will occur for single subject VSV-based students
     from
     (
        select
           st.STUDENT_ID,
           iif(se.YEAR_LEVEL between 3 and 10, se.YEAR_LEVEL, ss.YEAR_LEVEL) as LaunchPadYearLevel,
           se.PASTORAL_CARE_ID
         from
           dbo.STUDENT as st
           inner join dbo.STUDENT_ENROLMENT as se
              on (se.STUDENT_ID = st.STUDENT_ID)
           left join StudentNonLPSubject as ss
              on (
                    (ss.STUDENT_ID = st.STUDENT_ID)
                    and (ss.StudentSubjectNumber = 1)
                 )
         where
           (se.ENROLMENT_YEAR = @enrolmentYear)
           and (se.ENROLMENT_STATUS = 'E')
           and (st.CATEGORY_CODE <> 'SCHOOL')
           and (se.PASTORAL_CARE_ID <> 'N-A')
           and
           (
              (se.YEAR_LEVEL between 3 and 10)
              or (ss.YEAR_LEVEL between 3 and 10)
           )
           and not exists
         (
            -- Don't check for 924 (LP4), as we want to be able to add in one of the other LPs in addition to it
            select
               *
             from
               dbo.STUDENT_SUBJECT as ss2
             where
               (ss2.STUDENT_ID = st.STUDENT_ID)
               and (ss2.ENROLMENT_YEAR = se.ENROLMENT_YEAR)
               and (ss2.SUBJECT_ID in (921, 922, 923))
         )
     ) as subq;


   /* VSV-based students, years 11 and 12
      Students need to be allocated LP4 if either their chronological year level OR one of their subject levels
        falls within the VCE range.
      Aside from single subject students, VSV-based students will eventually have a Learning Advisor assigned even if there is none ('N-A') at this point.
      Once that happens, that Learning Advisor will also be allocated as their VCE-O teacher by the fix-it update below.
      What about the single subject students? They will be assigned NO_SST as their Learning Advisor and we need to be careful not to assign that as
      their VCE-O teacher. If they already have a teacher assigned for their subject, we can simply pick that up here and allocate them to the VCE-O immediately,
      otherwise they will also be taken care of at a later time by the fix-it update further below.
   */
   with
      StudentNonLPSubject as
         (
            select
               ss.STUDENT_ID,
               sbj.YEAR_LEVEL,
               row_number() over (partition by ss.STUDENT_ID order by sbj.YEAR_LEVEL desc) as StudentSubjectNumber
             from
               dbo.STUDENT_SUBJECT as ss
               inner join dbo.SUBJECT as sbj
                  on (sbj.SUBJECT_ID = ss.SUBJECT_ID)
             where
               (ss.ENROLMENT_YEAR = @enrolmentYear)
               and (ss.SEMESTER in (@semester, 'B'))
               and (ss.SUBJ_ENROL_STATUS in ('P', 'C', 'D'))
               and (ss.SUBJECT_ID not in (921, 922, 923, 924))
               and (sbj.YEAR_LEVEL in (11, 12))
         )
   insert into @ToBeCreatedList
   (
      StudentID,
      LaunchPadSubjectID,
      StaffID
   )
    select
       subq.STUDENT_ID,
       924,
       iif(subq.PASTORAL_CARE_ID <> 'NO_SST', subq.PASTORAL_CARE_ID, 'N-A') -- Check for NO_SST which will occur for single subject VSV-based students
     from
     (
        select
           st.STUDENT_ID,
           iif(se.YEAR_LEVEL in (11, 12), se.YEAR_LEVEL, ss.YEAR_LEVEL) as LaunchPadYearLevel,
           se.PASTORAL_CARE_ID
         from
           dbo.STUDENT as st
           inner join dbo.STUDENT_ENROLMENT as se
              on (se.STUDENT_ID = st.STUDENT_ID)
           left join StudentNonLPSubject as ss
              on (
                    (ss.STUDENT_ID = st.STUDENT_ID)
                    and (ss.StudentSubjectNumber = 1)
                 )
         where
           (se.ENROLMENT_YEAR = @enrolmentYear)
           and (se.ENROLMENT_STATUS = 'E')
           and (st.CATEGORY_CODE <> 'SCHOOL')
           and (se.PASTORAL_CARE_ID <> 'N-A')
           and
           (
              (se.YEAR_LEVEL in (11, 12))
              or (ss.YEAR_LEVEL in (11, 12))
           )
           and not exists
         (
            select
               *
             from
               dbo.STUDENT_SUBJECT as ss2
             where
               (ss2.STUDENT_ID = st.STUDENT_ID)
               and (ss2.ENROLMENT_YEAR = se.ENROLMENT_YEAR)
               and (ss2.SUBJECT_ID = 924)
         )
     ) as subq;


   if (@updateFlag = 'true')
   begin

      begin transaction;

      /*
         The local table has been populated with the list of LP subjects to generate.
         Use the table to create the records in the STUDENT_SUBJECT, STUD_SUBJ_FINAL, and STUD_SUB_INTERIM tables.
      */

      insert into dbo.STUDENT_SUBJECT
      (
         STUDENT_ID,
         ENROLMENT_YEAR,
         SUBJECT_ID,
         STAFF_ID,
         SEMESTER,
         ENROLMENT_DATE,
         SUBJ_ENROL_STATUS,
         VBOS_REGISTERED,
         APPEARS_ON_VASS,
         NUM_ASSMT_SUBMISSIONS,
         EXTENSION_OF_VCE_UNIT,
         COURSE_DISTRIBUTION,
         LAST_ALTERED_BY,
         LAST_ALTERED_DATE
      )
       select
          tbcl.StudentID,
          @enrolmentYear,
          tbcl.LaunchPadSubjectID,
          tbcl.StaffID,
          @semester,
          getdate(),
          'C',
          1,
          0,
          0,
          0,
          'I',
          'AutoJob',
          getdate()
        from
          @ToBeCreatedList as tbcl;

      insert into dbo.STUD_SUBJ_FINAL
      (
         STUDENT_ID,
         ENROLMENT_YEAR,
         SUBJECT_ID,
         LAST_ALTERED_BY,
         LAST_ALTERED_DATE
      )
       select
          tbcl.StudentID,
          @enrolmentYear,
          tbcl.LaunchPadSubjectID,
          'AutoJob',
          getdate()
        from
          @ToBeCreatedList as tbcl;

      insert into dbo.STUD_SUB_INTERIM
      (
         STUDENT_ID,
         ENROLMENT_YEAR,
         SUBJECT_ID,
         LAST_ALTERED_BY,
         LAST_ALTERED_DATE
      )
       select
          tbcl.StudentID,
          @enrolmentYear,
          tbcl.LaunchPadSubjectID,
          'AutoJob',
          getdate()
        from
          @ToBeCreatedList as tbcl;


      /*
         Perform a fix-it job to assign actual teachers to LP and VCE-O subjects if they're still set to 'N-A'.

         The above process has auto-created missing LP and VCE-O subjects for students.

         But some students may initially have no teachers assigned to their subjects, leading to 'N-A' being assigned as
         their LP or VCE-O teacher.

         The purpose of this task is to pick up any of those students where a teacher has since been assigned for
         at least one of their regular subjects for the semester (or full year), and assign that same teacher to their LP or VCE-O.
         This task is independent of the @ToBeCreatedList used above, and instead applies across all students for the
         current enrolment year.
      */

      with
         -- CTE to list the actual teachers (must not be N-A) of non-LP, non-VCE-O subjects for each student for the semester and full year
         -- The row numbering is per student so we can choose the first match for each student
         NonNATeacher as
            (
               select
                  ss.STUDENT_ID,
                  ss.STAFF_ID,
                  row_number() over (partition by ss.STUDENT_ID order by sbj.YEAR_LEVEL desc) as StudentSubjectNumber
                from
                  dbo.STUDENT_SUBJECT as ss
                  inner join dbo.SUBJECT as sbj
                     on (sbj.SUBJECT_ID = ss.SUBJECT_ID)
                where
                  ss.ENROLMENT_YEAR = @enrolmentYear
                  and ss.SEMESTER in (@semester, 'B')
                  and ss.SUBJ_ENROL_STATUS in ('C', 'D', 'P')
                  and ss.SUBJECT_ID not in (921, 922, 923, 924)
                  and ss.STAFF_ID not in ('N-A')
            )
      update
         lp
       set
         lp.STAFF_ID = iif(se.PASTORAL_CARE_ID <> 'NO_SST', se.PASTORAL_CARE_ID, nnat.STAFF_ID),
         lp.LAST_ALTERED_BY = 'AutoJob',
         lp.LAST_ALTERED_DATE = getdate()
       -- select
       --    ss.STUDENT_ID,
       --    ss.SUBJECT_ID,
       --    ss.STAFF_ID,
       --    nnat.STAFF_ID,
       --    nnat.StudentSubjectNumber
       from
         dbo.STUDENT_ENROLMENT as se
         inner join dbo.STUDENT_SUBJECT as lp
            on (
                  (lp.STUDENT_ID = se.STUDENT_ID)
                  and (lp.ENROLMENT_YEAR = se.ENROLMENT_YEAR)
               )
         inner join NonNATeacher as nnat
            on (
                  (nnat.STUDENT_ID = se.STUDENT_ID)
                  and (nnat.StudentSubjectNumber = 1)
               )
       where
         (se.ENROLMENT_YEAR = @enrolmentYear)
         and (se.ENROLMENT_STATUS = 'E')
         and (se.PASTORAL_CARE_ID <> 'N-A')
         and (lp.SUBJECT_ID in (921, 922, 923, 924))
         and (lp.SUBJ_ENROL_STATUS in ('C', 'D', 'P'))
         and (lp.STAFF_ID = 'N-A');

      commit transaction;
   end;
   else
   begin
      -- Debug output of the subjects that would have been created for the students
      select * from @ToBeCreatedList as tbcl;
   end;
end;