<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutoFill1">
	<Components>
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="SELECT distinct SCHOOL_SUPERVISOR_NAME, isnull(SCHOOL_SUPERVISOR_PHONE,'') as SCHOOL_SUPERVISOR_PHONE, isnull(SCHOOL_SUPERVISOR_EMAIL,'') as SCHOOL_SUPERVISOR_EMAIL
FROM STUDENT_ENROLMENT 
" name="SELECT_distinct_SCHOOL_SU" pageSizeLimit="100" wizardCaption="List of SELECT Distinct SCHOOL SU " PathID="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutoFill1SELECT_distinct_SCHOOL_SU">
			<Components>
				<Label id="202" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_SUPERVISOR_NAME" fieldSource="SCHOOL_SUPERVISOR_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="203" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_SUPERVISOR_PHONE" fieldSource="SCHOOL_SUPERVISOR_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="204" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_SUPERVISOR_EMAIL" fieldSource="SCHOOL_SUPERVISOR_EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="201" conditionType="Parameter" useIsNull="False" field="SCHOOL_SUPERVISOR_NAME" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="197" tableName="STUDENT_ENROLMENT" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutoFill1.aspx" forShow="True" url="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutoFill1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutoFill1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutoFill1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
