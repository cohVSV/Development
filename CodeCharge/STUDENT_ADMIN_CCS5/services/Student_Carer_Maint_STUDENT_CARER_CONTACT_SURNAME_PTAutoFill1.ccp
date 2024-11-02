<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutoFill1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="STUDENT_CARER_CONTACT" activeCollection="TableParameters" name="STUDENT_CARER_CONTACT1" pageSizeLimit="100" wizardCaption="List of STUDENT CARER CONTACT1 " PathID="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutoFill1STUDENT_CARER_CONTACT1">
			<Components>
				<Label id="157" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="158" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="159" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="160" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="161" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="162" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="163" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="164" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="165" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="146" conditionType="Parameter" useIsNull="False" field="RELATIONSHIP" dataType="Text" searchConditionType="Equal" parameterType="Expression" logicOperator="And" parameterSource="&quot;SS&quot;"/>
				<TableParameter id="156" conditionType="Parameter" useIsNull="False" field="CARER_ID" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="136" tableName="STUDENT_CARER_CONTACT" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="137" tableName="STUDENT_CARER_CONTACT" fieldName="CARER_ID"/>
				<Field id="138" tableName="STUDENT_CARER_CONTACT" fieldName="TITLE"/>
				<Field id="139" tableName="STUDENT_CARER_CONTACT" fieldName="SURNAME"/>
				<Field id="140" tableName="STUDENT_CARER_CONTACT" fieldName="FIRST_NAME"/>
				<Field id="141" tableName="STUDENT_CARER_CONTACT" fieldName="RELATIONSHIP"/>
				<Field id="142" tableName="STUDENT_CARER_CONTACT" fieldName="HOME_PHONE"/>
				<Field id="143" tableName="STUDENT_CARER_CONTACT" fieldName="WORK_PHONE"/>
				<Field id="144" tableName="STUDENT_CARER_CONTACT" fieldName="MOBILE"/>
				<Field id="145" tableName="STUDENT_CARER_CONTACT" fieldName="EMAIL"/>
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
		<CodeFile id="3" language="VB" name="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutoFill1.aspx" forShow="True" url="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutoFill1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutoFill1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutoFill1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
