<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0">
	<Components>
		<Report id="4" secured="False" enablePrint="False" showMode="Web" sourceType="SQL" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" name="rptTeacherAllocation" connection="connDECVPRODSQL2005" dataSource="with
   TeacherSubjectTimeFraction as
      (
         select
            st.SUBJECT_ID,
            rtrim(st.STAFF_ID) as STAFF_ID,
            st.SUBJECT_TIMEFRACTION,
            floor(sbj.ALLOCATE_STUDENTS_MAX * st.SUBJECT_TIMEFRACTION) as FTE_StudentMax
          from
            dbo.SUBJECT_TEACHER as st
            inner join dbo.SUBJECT as sbj
               on (sbj.SUBJECT_ID = st.SUBJECT_ID)
          where
            (st.SUBJECT_ID = {subject_id})
      )
 select
    iif(vs.SemesterID is not null, vs.SEMESTER, '(No allocations)') as SEMESTER,
    tstf.STAFF_ID,
    tstf.SUBJECT_TIMEFRACTION,
    tstf.FTE_StudentMax,
    iif(vs.SemesterID is not null, count(ss.STUDENT_ID), null) as [Current Student Count],
    iif((vs.SemesterID is not null) and (tstf.FTE_StudentMax &gt; 0), (count(ss.STUDENT_ID) / tstf.FTE_StudentMax), null) as Percentage
  from
    TeacherSubjectTimeFraction as tstf
    left join dbo.STUDENT_SUBJECT as ss
       on (
             (ss.ENROLMENT_YEAR = {ENROLMENT_YEAR})
             and (ss.SUBJECT_ID = tstf.SUBJECT_ID)
             and (ss.STAFF_ID = tstf.STAFF_ID)
             and
             (
                ss.NON_SUBMITTING_FLAG is null
                or ss.NON_SUBMITTING_FLAG = 0
             )
             and (ss.SUBJ_ENROL_STATUS in ('C', 'D', 'E', 'P'))
          )
    left join vwSemester as vs
       on (vs.SemesterID = ss.SEMESTER)
  group by
    vs.SemesterID,
    vs.SEMESTER,
    tstf.STAFF_ID,
    tstf.SUBJECT_TIMEFRACTION,
    tstf.FTE_StudentMax
  order by
    SEMESTER,
    Percentage,
    FTE_StudentMax
-- order by dummy clause to keep CodeCharge Studio happy " pageSizeLimit="100" wizardCaption="Current Active Subject Enrolments (Excludes Non-Submits)" changedCaptionReport="True" wizardLayoutType="GroupLeftAbove" wizardHideDetail="False" wizardPercentForSums="False" wizardEnablePrintMode="False" wizardReportSeparator="False" wizardReportAddTotalRecords="False" wizardReportAddPageNumbers="False" wizardReportAddNbsp="False" wizardReportAddDateTime="False" wizardReportDateTimeAs="CurrentDate" wizardReportAddRowNumber="False" wizardReportRowNumberResetAt="Report" wizardUseSearch="False" wizardNoRecords="No Student Details found!" wizardUseInterVariables="False" reportAddTemplatePanel="False">
			<Components>
				<Section id="7" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader">
					<Components>
						<ReportLabel id="31" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="lblEnrolmentYear" PathID="rptTeacherAllocationReport_HeaderlblEnrolmentYear">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="33"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</ReportLabel>
<ReportLabel id="32" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="lblSubjectAbbreviation" PathID="rptTeacherAllocationReport_HeaderlblSubjectAbbreviation">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="34"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</ReportLabel>
</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="8" visible="True" lines="1" name="Page_Header" wizardSectionType="PageHeader">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="10" visible="True" lines="1" name="SEMESTER_Header">
					<Components>
						<ReportLabel id="16" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="rptTeacherAllocationSEMESTER_HeaderSEMESTER">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="11" visible="True" lines="1" name="Detail">
					<Components>
						<ReportLabel id="23" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="STAFF_ID" fieldSource="STAFF_ID" wizardCaption="STAFF ID" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="rptTeacherAllocationDetailSTAFF_ID">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="24" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="SUBJECT_TIMEFRACTION" fieldSource="SUBJECT_TIMEFRACTION" wizardCaption="SUBJECT TIMEFRACTION" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="rptTeacherAllocationDetailSUBJECT_TIMEFRACTION" format="0.00">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="25" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="FTE_StudentMax" fieldSource="FTE_StudentMax" wizardCaption="FTE Student Max" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="rptTeacherAllocationDetailFTE_StudentMax" format="0">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" hideDuplicates="False" resetAt="Report" name="Current_Student_Count" fieldSource="Current Student Count" wizardCaption="Current Student Count" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardAlign="right" PathID="rptTeacherAllocationDetailCurrent_Student_Count">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="27" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="Percentage" fieldSource="Percentage" wizardCaption="Percentage" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="rptTeacherAllocationDetailPercentage" format="0%">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="12" visible="True" lines="1" name="SEMESTER_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="13" visible="True" lines="1" name="Report_Footer" wizardSectionType="ReportFooter">
					<Components>
						<Panel id="14" visible="True" generateDiv="False" name="NoRecords" wizardNoRecords="No Student Details found!">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
						<ReportLabel id="20" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="TotalSum_SUBJECT_TIMEFRACTION" fieldSource="SUBJECT_TIMEFRACTION" summarised="True" function="Sum" wizardCaption="SUBJECT TIMEFRACTION" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardPrefix="Sum: " wizardAddNbsp="False" wizardAlign="right" wizardVAlign="baseline" PathID="rptTeacherAllocationReport_FooterTotalSum_SUBJECT_TIMEFRACTION">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="21" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="TotalSum_FTE_StudentMax" fieldSource="FTE_StudentMax" summarised="True" function="Sum" wizardCaption="FTE Student Max" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardPrefix="Sum: " wizardAddNbsp="False" wizardAlign="right" wizardVAlign="baseline" PathID="rptTeacherAllocationReport_FooterTotalSum_FTE_StudentMax">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="22" fieldSourceType="DBColumn" dataType="Integer" html="False" hideDuplicates="False" resetAt="Report" name="TotalSum_Current_Student_Count" fieldSource="Current Student Count" summarised="True" function="Sum" wizardCaption="Current Student Count" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardPrefix="Sum: " wizardAddNbsp="False" wizardAlign="right" wizardVAlign="baseline" PathID="rptTeacherAllocationReport_FooterTotalSum_Current_Student_Count">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="29" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="lblTotalAllocationPercentage" PathID="rptTeacherAllocationReport_FooterlblTotalAllocationPercentage">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events>
						<Event name="OnCalculate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="30"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="15" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="5" dataType="Text" defaultValue="0" designDefaultValue="501" parameterSource="subject_id" parameterType="URL" variable="subject_id"/>
				<SQLParameter id="6" dataType="Integer" defaultValue="Date.Today.Year" designDefaultValue="year(getdate())" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
			</SQLParameters>
			<ReportGroups>
				<ReportGroup id="9" name="SEMESTER" field="SEMESTER" sortOrder="asc"/>
			</ReportGroups>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Report>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentSubject_TeacherStats.aspx" forShow="True" url="StudentSubject_TeacherStats.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentSubject_TeacherStats.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentSubject_TeacherStatsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
