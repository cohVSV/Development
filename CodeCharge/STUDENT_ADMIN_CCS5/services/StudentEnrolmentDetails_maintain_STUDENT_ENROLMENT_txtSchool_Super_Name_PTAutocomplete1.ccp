<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutocomplete1">
	<Components>
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="SELECT rtrim(SCHOOL_SUPERVISOR_NAME) AS SCHOOL_SUPERVISOR_NAME 
FROM STUDENT_ENROLMENT
WHERE ENROLMENT_YEAR = {ENROLMENT_YEAR}
AND SCHOOL_SUPERVISOR_NAME LIKE '{STUDENT_ENROLMENTtxtSchool_Super_Name}%'
AND SCHOOL_SUPERVISOR_NAME &lt;&gt; 'NULL' " activeCollection="SQLParameters" name="STUDENT_ENROLMENT1" pageSizeLimit="100" wizardCaption="List of STUDENT ENROLMENT1 " parameterTypeListName="ParameterTypeList" PathID="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutocomplete1STUDENT_ENROLMENT1">
			<Components>
				<Label id="191" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_SUPERVISOR_NAME" fieldSource="SCHOOL_SUPERVISOR_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="187" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="YEAR(getdate())" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="188" conditionType="Parameter" useIsNull="False" field="SCHOOL_SUPERVISOR_NAME" dataType="Text" searchConditionType="BeginsWith" parameterType="Form" logicOperator="And" expression="SCHOOL_SUPERVISOR_NAME is not null" parameterSource="STUDENT_ENROLMENTtxtSchool_Super_Name"/>
				<TableParameter id="189" conditionType="Parameter" useIsNull="False" field="SCHOOL_SUPERVISOR_NAME" dataType="Text" searchConditionType="NotEqual" parameterType="Expression" logicOperator="And" parameterSource="NULL"/>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="192" parameterType="URL" variable="ENROLMENT_YEAR" dataType="Float" parameterSource="ENROLMENT_YEAR" defaultValue="YEAR(today())" designDefaultValue="2009"/>
				<SQLParameter id="193" parameterType="URL" variable="STUDENT_ENROLMENTtxtSchool_Super_Name" dataType="Text" parameterSource="keyword" designDefaultValue="s"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutocomplete1.aspx" forShow="True" url="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutocomplete1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutocomplete1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutocomplete1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
