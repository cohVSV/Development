<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" accessDeniedPage="../Login.ccp" PathID="getRegionStudentDetails">
	<Components>
		<Grid id="2" secured="True" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPROD_RegionEnrolments" dataSource="tblRegionEnrolments" activeCollection="TableParameters" name="tblRegionEnrolments" pageSizeLimit="100" wizardCaption="List of Tbl Region Enrolments " wizardAllowInsert="False" PathID="getRegionStudentDetailstblRegionEnrolments">
			<Components>
				<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="lookupid" fieldSource="lookupid">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="ApprovalPeriod" fieldSource="ApprovalPeriod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="FirstName" fieldSource="FirstName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="51" fieldSourceType="DBColumn" dataType="Text" html="False" name="Surname" fieldSource="Surname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="52" fieldSourceType="DBColumn" dataType="Date" html="False" name="DateBirth" fieldSource="DateBirth">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" name="Sex" fieldSource="Sex">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="54" fieldSourceType="DBColumn" dataType="Text" html="False" name="YearLevel" fieldSource="YearLevel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="56" fieldSourceType="DBColumn" dataType="Text" html="False" name="EnrolCategory" fieldSource="EnrolCategory">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="57" fieldSourceType="DBColumn" dataType="Text" html="False" name="Notes" fieldSource="Notes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="45" conditionType="Parameter" useIsNull="False" field="id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="0" parameterSource="racid"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="44" tableName="tblRegionEnrolments" schemaName="dbo" posLeft="10" posTop="10" posWidth="119" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups>
				<Group id="58" groupID="3" read="True"/>
				<Group id="59" groupID="4" read="True"/>
				<Group id="60" groupID="6" read="True"/>
				<Group id="61" groupID="9" read="True"/>
			</SecurityGroups>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="getRegionStudentDetails.aspx" forShow="True" url="getRegionStudentDetails.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="getRegionStudentDetails.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="getRegionStudentDetailsDataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="62" groupID="3"/>
		<Group id="63" groupID="4"/>
		<Group id="64" groupID="6"/>
		<Group id="65" groupID="9"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
