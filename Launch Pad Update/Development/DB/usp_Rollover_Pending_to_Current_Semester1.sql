SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[usp_Rollover_Pending_to_Current_Semester1]

As
Begin
/*
Created By:			Leo Nigro (originally, this comments added by Eric Jan 2018)
Created Date:		pre 2015
Functionality:		Changes Subject Status from P(ending) to C(urrent) for certain Year Levels

Subsciption:		(to be determined)
Status:				Live
Updated:			29 Jan 2018|EA| added parameters for yearlevels and to show testing 
               23 Jan 2021|RW| Added temporary criteria to enable subjects for the start of year:
                               - F-2 English subjects, which include the introductory module for those year levels
                               - Launch Pad subjects for years 3 - 10
                               - VCE Orientation subject
                               - All semester 1 VCE subjects (Units 1 & 3)
                9 Dec 2021|RW| Updated reference to LP/introductory subjects to use the view instead of hardcoding subject IDs
                               At the same time, remove the hardcoded references to the test student IDs and use the view for those as well
(             
 @minYearLevel int = 0, @maxYearLevel int = 12, @updateFlag int = 0
)   
-- exec [usp_Rollover_Pending_to_Current_Semester1] 0,12,0
*/
set nocount on
	BEGIN TRY
		BEGIN TRAN
	
			UPDATE ss SET ss.SUBJ_ENROL_STATUS='C'
			-- select count(*)
			--  select top 50 se.ENROLMENT_STATUS, ss.*
			FROM STUDENT_SUBJECT ss 
			INNER JOIN STUDENT_ENROLMENT se ON ss.STUDENT_ID = se.STUDENT_ID AND ss.ENROLMENT_YEAR = se.ENROLMENT_YEAR
			WHERE se.ENROLMENT_YEAR = YEAR(getdate())
			AND se.ENROLMENT_STATUS = 'E'
			AND ss.SUBJ_ENROL_STATUS = 'P'
			AND ss.SEMESTER <> '2'		-- get all Sem 1 and any 'B'

         ---- Start of year clause: LPs, F-2 introductory modules (delivered via English subjects), and all VCE
         --and
         --(
         --   (ss.SUBJECT_ID in (2, 12, 22))
         --   or (ss.SUBJECT_ID in (select vis.IntroductorySubjectID from dbo.vwIntroductorySubject as vis where (vis.IntroductorySubjectStatus = 1)))
         --   or
         --   (
         --      -- Pick up the students outside of years 11 & 12 who are taking the VCE level subjects
         --      (se.YEAR_LEVEL between 7 and 12)
         --      and (ss.SUBJECT_ID between 500 and 699)
         --   )
         --)

         -- Ongoing clause: open up all of the semester 1 subjects
         and
         (
            (ss.SUBJECT_ID between 0 and 699)
            or (ss.SUBJECT_ID in (select vis.IntroductorySubjectID from dbo.vwIntroductorySubject as vis where (vis.IntroductorySubjectStatus = 1)))
         )

         -- Exclude test students
         and (se.STUDENT_ID not in (select vts.TestStudentID from dbo.vwTestStudent as vts))
			-- AND ss.subject_id BETWEEN 500 AND 940
			-- AND se.YEAR_LEVEL BETWEEN  10 AND 12 -- LN 15/1/2015: Change this for different year levels.
			-- AND se.YEAR_LEVEL BETWEEN 0 AND 12  -- LN 15/1/2015: Change this for different year levels.

		COMMIT TRAN
	PRINT 'job successful'
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		RAISERROR ('Error occured job failed',10,1,@@error)
	END CATCH


End