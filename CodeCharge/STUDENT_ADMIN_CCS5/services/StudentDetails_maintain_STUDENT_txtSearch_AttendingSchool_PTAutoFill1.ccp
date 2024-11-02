<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="StudentDetails_maintain_STUDENT_txtSearch_AttendingSchool_PTAutoFill1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="SCHOOL" activeCollection="TableParameters" name="SCHOOL" pageSizeLimit="100" wizardCaption="List of SCHOOL " PathID="StudentDetails_maintain_STUDENT_txtSearch_AttendingSchool_PTAutoFill1SCHOOL">
			<Components>
				<Label id="81" fieldSourceType="DBColumn" dataType="Float" html="False" name="SCHOOL_ID" fieldSource="SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="82" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_NAME" fieldSource="SCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="77" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS=1"/>
				<TableParameter id="78" conditionType="Parameter" useIsNull="False" field="SCHOOL_NAME" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="74" tableName="SCHOOL" posLeft="10" posTop="10" posWidth="202" posHeight="213"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="75" tableName="SCHOOL" fieldName="SCHOOL_ID"/>
				<Field id="76" fieldName="SCHOOL_NAME" isExpression="False" alias="SCHOOL_NAME" tableName="SCHOOL"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentDetails_maintain_STUDENT_txtSearch_AttendingSchool_PTAutoFill1.aspx" forShow="True" url="StudentDetails_maintain_STUDENT_txtSearch_AttendingSchool_PTAutoFill1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentDetails_maintain_STUDENT_txtSearch_AttendingSchool_PTAutoFill1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentDetails_maintain_STUDENT_txtSearch_AttendingSchool_PTAutoFill1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
