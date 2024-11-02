<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutoFill1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="STUDENT_CARER_CONTACT" activeCollection="TableParameters" name="STUDENT_CARER_CONTACT5" pageSizeLimit="100" wizardCaption="List of STUDENT CARER CONTACT5 " PathID="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutoFill1STUDENT_CARER_CONTACT5">
			<Components>
				<Label id="265" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="266" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="267" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="268" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="269" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="270" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="271" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="272" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="273" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="274" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="275" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="256" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="RELATIONSHIP='SS'"/><TableParameter id="264" conditionType="Parameter" useIsNull="False" field="Upper(rtrim(surname)) + ',_' + rtrim(first_name) + '_(' + isnull(email,'no_email')+')'" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" expression="Upper(surname) + ', ' + first_name + '  (' + isnull(email,'no email')+')'" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="255" tableName="STUDENT_CARER_CONTACT" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="286" fieldName="*"/>
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
		<CodeFile id="3" language="VB" name="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutoFill1.aspx" forShow="True" url="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutoFill1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutoFill1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Carer_maintainext_STUDENT_CARER_CONTACT4_SURNAME_PTAutoFill1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
