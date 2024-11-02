<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutocomplete1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="STUDENT_CARER_CONTACT" activeCollection="TableParameters" name="STUDENT_CARER_CONTACT1" pageSizeLimit="100" wizardCaption="List of STUDENT CARER CONTACT1 " pasteActions="pasteActions" pasteAsReplace="pasteAsReplace" PathID="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutocomplete1STUDENT_CARER_CONTACT1">
			<Components>
				<Label id="118" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="119" fieldSourceType="DBColumn" dataType="Text" html="False" name="CARER_ID" fieldSource="CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="124" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="125" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="115" conditionType="Parameter" useIsNull="False" field="RELATIONSHIP" dataType="Text" searchConditionType="Equal" parameterType="Expression" logicOperator="And" parameterSource="&quot;SS&quot;"/>
				<TableParameter id="117" conditionType="Parameter" useIsNull="False" field="SURNAME" dataType="Text" logicOperator="And" searchConditionType="BeginsWith" parameterType="Form" parameterSource="STUDENT_CARER_CONTACTSURNAME"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="105" tableName="STUDENT_CARER_CONTACT" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="108" tableName="STUDENT_CARER_CONTACT" fieldName="SURNAME"/>
				<Field id="120" tableName="STUDENT_CARER_CONTACT" fieldName="CARER_ID"/>
				<Field id="121" tableName="STUDENT_CARER_CONTACT" fieldName="FIRST_NAME"/>
				<Field id="122" tableName="STUDENT_CARER_CONTACT" fieldName="EMAIL"/>
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
		<CodeFile id="3" language="VB" name="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutocomplete1.aspx" forShow="True" url="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutocomplete1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutocomplete1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutocomplete1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
