<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutocomplete1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="STUDENT_CARER_CONTACT" activeCollection="TableParameters" name="STUDENT_CARER_CONTACT5" pageSizeLimit="100" wizardCaption="List of STUDENT CARER CONTACT5 " PathID="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutocomplete1STUDENT_CARER_CONTACT5">
			<Components>
				<Label id="256" fieldSourceType="DBColumn" dataType="Text" html="False" name="super_name" fieldSource="super_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="251" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="RELATIONSHIP='SS'"/><TableParameter id="255" conditionType="Parameter" useIsNull="False" field="SURNAME" dataType="Text" logicOperator="And" searchConditionType="BeginsWith" parameterType="Form" parameterSource="STUDENT_CARER_CONTACT4SURNAME"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="242" tableName="STUDENT_CARER_CONTACT" posLeft="10" posTop="10" posWidth="298" posHeight="237"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="258" fieldName="Upper(surname) + ', ' + first_name + '  (' + isnull(email,'no email')+')'" alias="super_name" isExpression="True"/>
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
		<CodeFile id="3" language="VB" name="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutocomplete1.aspx" forShow="True" url="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutocomplete1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutocomplete1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutocomplete1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
