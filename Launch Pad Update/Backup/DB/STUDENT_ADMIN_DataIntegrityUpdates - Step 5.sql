-- Feb-2013 - force changes in SSTeacher to their LP/DL subjects, incase not done manually.
--3-Feb-2014|EA| updated to include 924 (MYVCE/LP4) as some teachers are being updated
-- 12-Feb-2015|EA| Primary now in Cascade step
update SS 
	set ss.staff_id = se.pastoral_care_id
		, LAST_ALTERED_BY = 'AutoFix', LAST_ALTERED_DATE= GETDATE()
	from student_enrolment se, student_subject ss
	where se.student_id = ss.student_id
		and se.enrolment_year = ss.enrolment_year
		and se.enrolment_year = year(GETDATE())
		and ss.SUBJECT_ID in (921, 922, 923, 924, 931, 932, 933)		--LP/DL subjects (924: Feb-2014)
		and se.enrolment_status = 'E'							-- Enrolled
		and se.year_level between 7 and 12		--Feb2015|EA| Primary in 'Cascade' step
		and ss.subj_enrol_status in ('C','D','E','P')
		and se.pastoral_care_id not in ('N-A','NA','NO_SST')  -- could have School based with LP/DL but no SS Teacher
		and se.pastoral_care_id <> ss.staff_id		-- where SSTeacher differs from LP/DL Staff ID 
