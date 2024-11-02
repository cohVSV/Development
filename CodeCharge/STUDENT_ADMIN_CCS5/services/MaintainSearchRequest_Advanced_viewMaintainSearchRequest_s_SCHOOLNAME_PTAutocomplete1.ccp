<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="SCHOOL" activeCollection="TableParameters" orderBy="SCHOOL_NAME" name="SCHOOL" pageSizeLimit="100" wizardCaption="List of SCHOOL " PathID="MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1SCHOOL">
			<Components>
				<Label id="56" fieldSourceType="DBColumn" dataType="Text" html="False" name="school_name" fieldSource="school_name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="52" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS=1"/>
				<TableParameter id="55" conditionType="Parameter" useIsNull="False" field="school_name" dataType="Text" logicOperator="Or" searchConditionType="BeginsWith" parameterType="Form" leftBrackets="1" parameterSource="viewMaintainSearchRequests_SCHOOLNAME"/>
				<TableParameter id="57" conditionType="Parameter" useIsNull="False" field="school_name" dataType="Text" searchConditionType="BeginsWith" parameterType="Form" logicOperator="And" rightBrackets="1" parameterSource="STUDENT_CENSUS_DATASCHOOL_NAME"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="49" tableName="SCHOOL" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="54" fieldName="rtrim(school_name)" isExpression="True" alias="school_name"/>
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
		<CodeFile id="3" language="VB" name="MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1.aspx" forShow="True" url="MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
