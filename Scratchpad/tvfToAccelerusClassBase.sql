A proof of concept replacement base view for the SDB to Accelerus sync of class codes (view_ToAccelerus_Class).
Developed at the time when it was requested that individual primary level subjects be brought across.
This method condenses the existing view into a scattergun of all possible class & suffix combinations,
relying on the fact that if a generated subject code doesn't exist in Accelerus, nothing is created or updated.

Ended up playing it safe and updating the existing view.


-- =============================================
-- Author:      Russell Whipp
-- Create date: 30 Oct 2020
-- Description: Base query tvf to generate the Accelerus subject codes, class codes, and teacher codes for a specified year
--              Replaces most of the previous view_ToAccelerus_Class
--              The subject, class, and teacher codes are generated using a specific set of string formats, allowing entities
--              in the SDB to match up with the corresponding items in Accelerus. For each subject and class, the intention is
--              to generate every possible code so that at least one match can be found in Accelerus.
-- =============================================
ALTER function [dbo].[tvfToAccelerusClassBase]
(
   @year numeric(4, 0)
)
returns table
as
return
(
   with
      suffixCTE as
      (
         -- A table of every known Accelerus subject code suffix
         -- They will be applied to every student subject for the year
         select
            sf.sf
          from
          (
             values
                ('1'),
                ('2'),
                ('B'),
                ('17'),
                ('18'),
                ('19'),
                ('11'),
                ('27'),
                ('28'),
                ('29'),
                ('21')
          ) as sf (sf)
      ),
      primaryYearCTE as
      (
         -- Primary year table for generating 'year' codes
         select
            sbj.YEAR_LEVEL,
            ss.STAFF_ID
          from
            dbo.STUDENT_SUBJECT as ss
            inner join dbo.SUBJECT as sbj
               on (sbj.SUBJECT_ID = ss.SUBJECT_ID)
          where
            (ss.ENROLMENT_YEAR = @year)
            and (sbj.YEAR_LEVEL between 0 and 6)
            and (ss.STAFF_ID not in ('N-A', 'NO_SST'))
            and (ss.STAFF_ID not like 'NSUBMIT%')
      ),
      secondaryYearCTE as
      (
         -- Secondary year level table
         select
            se.YEAR_LEVEL,
            se.PASTORAL_CARE_ID
          from
            dbo.STUDENT_ENROLMENT as se
          where
            (se.ENROLMENT_YEAR = @year)
            and (se.YEAR_LEVEL between 7 and 12)
            and (se.PASTORAL_CARE_ID not in ('N-A', 'NO_SST'))
            and (se.PASTORAL_CARE_ID not like 'NSUBMIT%')
      )
   -- 1. Generate every possible subject specific code for all year levels
   select distinct
      left(upper(concat(rtrim(replace(s.SUBJECT_ABBREV, '-', '')), '_', sf.sf)), 12) as SubjectCode,
      left(upper(concat(rtrim(replace(s.SUBJECT_ABBREV, '-', '')), '_', sf.sf, rtrim(ss.STAFF_ID))), 12) as ClassCode,
      left(rtrim(ss.STAFF_ID), 6) as TeacherCode
    from(dbo.STUDENT_SUBJECT as ss
         inner join dbo.SUBJECT as s
            on (s.SUBJECT_ID = ss.SUBJECT_ID))
        cross join suffixCTE as sf
    where
      (ss.ENROLMENT_YEAR = @year)
      and (ss.STAFF_ID not in ('N-A', 'NO_SST'))
      and (ss.STAFF_ID not like 'NSUBMIT%')
   union

   -- 2. Generate every possible 'year' code, as a SubjectCode, for all year levels
   --    In order to match up with existing Accelerus class codes, up to 5 characters are used to try to generate unique active staff ID prefixes
   --    This scheme should probably be changed as it's likely to produce duplicates at some stage

   select
      concat(right('0' + cast(sycte.YEAR_LEVEL as varchar(20)), 2), 'SS') as SubjectCode,
      concat(right('0' + cast(sycte.YEAR_LEVEL as varchar(20)), 2), 'SS', isnull(dbo.fnStaffUniquePrefix(sycte.PASTORAL_CARE_ID, 4, 5), left(sycte.PASTORAL_CARE_ID, 5))) as ClassCode,
      left(rtrim(sycte.PASTORAL_CARE_ID), 6) as TeacherCode
    from
      secondaryYearCTE as sycte
   union
   select
      concat(right('0' + cast(pycte.YEAR_LEVEL as varchar(20)), 2), 'SS') as SubjectCode,
      concat(right('0' + cast(pycte.YEAR_LEVEL as varchar(20)), 2), 'SS', isnull(dbo.fnStaffUniquePrefix(pycte.STAFF_ID, 4, 5), left(pycte.STAFF_ID, 5))) as ClassCode,
      left(rtrim(pycte.STAFF_ID), 6) as TeacherCode
    from
      primaryYearCTE as pycte
);




-- And the view that hooks into it and tries to link the codes to existing Accelerus subject, class, and teacher codes:


create view [dbo].[view_ToAccelerus_Class_Test]
as
select
   ttacb.ClassCode as Code,
   sbj.Name,
   '' as Description,
   sbj.Id as ExistingSubjectId,
   cg.Id as ExistingClassGroupId,
   tch.Id as ExistingTeacherId,
   year(getdate()) as Year,
   ttacb.SubjectCode,
   ttacb.ClassCode,
   ttacb.TeacherCode
 from
   dbo.tvfToAccelerusClassBase(year(getdate())) as ttacb
   inner join [DECV-ACCLWEB].Accelerus.dbo.AcademicCycle as ac
      on (ac.Name = cast(year(getdate()) as nvarchar(20)))
   left join [DECV-ACCLWEB].Accelerus.dbo.Subject as sbj
      on (
            -- The Subject table has a unique index on AcademicCycleId and Code
            (sbj.AcademicCycleId = ac.Id)
            and (sbj.Code = ttacb.SubjectCode)
         )
   left join [DECV-ACCLWEB].Accelerus.dbo.ClassGroup as cg
      on (
            -- The ClassGroup table has a unique index on Code and SubjectId
            (cg.Code = ttacb.ClassCode)
            and (cg.SubjectId = sbj.Id)
         )
   left join [DECV-ACCLWEB].Accelerus.dbo.Teacher as tch
      on -- The Teacher table has a unique index on Code
      (tch.Code = ttacb.TeacherCode);