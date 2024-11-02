<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="StudentEnrolment_AddNewYear_STUDENT_inputREgionID_PTAutoFill1">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" connection="connDECVPROD_RegionEnrolments" dataSource="tblRegionEnrolments" name="tblRegionEnrolments" pageSizeLimit="100" wizardCaption="List of Tbl Region Enrolments " PathID="StudentEnrolment_AddNewYear_STUDENT_inputREgionID_PTAutoFill1tblRegionEnrolments">
			<Components>
				<Label id="140" fieldSourceType="DBColumn" dataType="Integer" html="False" name="id" fieldSource="id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="141" fieldSourceType="DBColumn" dataType="Text" html="False" name="FirstName" fieldSource="FirstName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="142" fieldSourceType="DBColumn" dataType="Text" html="False" name="Surname" fieldSource="Surname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="143" fieldSourceType="DBColumn" dataType="Date" html="False" name="DateBirth" fieldSource="DateBirth">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="144" fieldSourceType="DBColumn" dataType="Text" html="False" name="Sex" fieldSource="Sex">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="145" fieldSourceType="DBColumn" dataType="Text" html="False" name="YearLevel" fieldSource="YearLevel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="146" fieldSourceType="DBColumn" dataType="Text" html="False" name="lookupid" fieldSource="lookupid">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="147" fieldSourceType="DBColumn" dataType="Text" html="False" name="EnrolNotes" fieldSource="Notes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="148" fieldSourceType="DBColumn" dataType="Text" html="False" name="EnrolCategory" fieldSource="EnrolCategory">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="149" fieldSourceType="DBColumn" dataType="Text" html="False" name="ApprovalPeriod" fieldSource="ApprovalPeriod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="150" fieldSourceType="DBColumn" dataType="Text" html="False" name="SchoolID" fieldSource="SchoolID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="139" conditionType="Parameter" useIsNull="False" field="id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="116" tableName="tblRegionEnrolments" posLeft="10" posTop="10" posWidth="204" posHeight="254"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="117" tableName="tblRegionEnrolments" fieldName="lookupid"/>
				<Field id="119" tableName="tblRegionEnrolments" fieldName="ApprovalPeriod"/>
				<Field id="120" tableName="tblRegionEnrolments" fieldName="SchoolID"/>
				<Field id="121" tableName="tblRegionEnrolments" fieldName="EnrolCategory"/>
				<Field id="122" tableName="tblRegionEnrolments" fieldName="YearLevel"/>
				<Field id="123" tableName="tblRegionEnrolments" fieldName="Sex"/>
				<Field id="124" tableName="tblRegionEnrolments" fieldName="DateBirth"/>
				<Field id="125" tableName="tblRegionEnrolments" fieldName="Surname"/>
				<Field id="126" tableName="tblRegionEnrolments" fieldName="FirstName"/>
				<Field id="127" tableName="tblRegionEnrolments" fieldName="id"/>
				<Field id="151" tableName="tblRegionEnrolments" fieldName="Notes"/>
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
		<CodeFile id="3" language="VB" name="StudentEnrolment_AddNewYear_STUDENT_inputREgionID_PTAutoFill1.aspx" forShow="True" url="StudentEnrolment_AddNewYear_STUDENT_inputREgionID_PTAutoFill1.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolment_AddNewYear_STUDENT_inputREgionID_PTAutoFill1.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolment_AddNewYear_STUDENT_inputREgionID_PTAutoFill1DataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
