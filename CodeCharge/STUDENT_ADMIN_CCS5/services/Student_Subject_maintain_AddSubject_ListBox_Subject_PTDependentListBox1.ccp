<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="Student_Subject_maintain_AddSubject_ListBox_Subject_PTDependentListBox1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" connection="connDECVPRODSQL2005" dataSource="SUBJECT" activeCollection="TableParameters" orderBy="SUBJECT_TITLE, YEAR_LEVEL" name="SUBJECT" pageSizeLimit="500" wizardCaption="List of SUBJECT " PathID="Student_Subject_maintain_AddSubject_ListBox_Subject_PTDependentListBox1SUBJECT">
			<Components>
				<Label id="132" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="133" fieldSourceType="DBColumn" dataType="Text" html="False" name="subject_displaytext" fieldSource="subject_displaytext">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="128" conditionType="Expression" useIsNull="False" field="CAMPUS_CODE" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CAMPUS_CODE = 'D'" parameterSource="CAMPUS_CODE"/>
				<TableParameter id="129" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
				<TableParameter id="131" conditionType="Parameter" useIsNull="False" field="YEAR_LEVEL" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="124" tableName="SUBJECT" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="125" tableName="SUBJECT" fieldName="SUBJECT_ID"/>
				<Field id="126" fieldName="rtrim(SUBJECT_TITLE) + ' (' + rtrim(SUBJECT_ABBREV) + ')  (' + rtrim(SUBJECT_ID) +')'" isExpression="True" alias="subject_displaytext"/>
				<Field id="127" tableName="SUBJECT" fieldName="YEAR_LEVEL" isExpression="False"/>
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
		<CodeFile id="3" language="VB" name="Student_Subject_maintain_AddSubject_ListBox_Subject_PTDependentListBox1.aspx" forShow="True" url="Student_Subject_maintain_AddSubject_ListBox_Subject_PTDependentListBox1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Subject_maintain_AddSubject_ListBox_Subject_PTDependentListBox1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Subject_maintain_AddSubject_ListBox_Subject_PTDependentListBox1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
