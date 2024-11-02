<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" dataSource="viewPrimaryTeacherSearchRequest" orderBy="STUDENT_ID, ENROLMENT_YEAR" name="viewPrimaryTeacherSearchR1" pageSizeLimit="100" wizardCaption="List of View Primary Teacher Search Request " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No records - try changing the search criteria" activeCollection="TableParameters" PathID="viewPrimaryTeacherSearchR1">
			<Components>
				<Sorter id="13" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="16" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="17" visible="True" name="Sorter_ENROLMENT_STATUS" column="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_STATUS" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="18" visible="True" name="Sorter_STAFF_ID" column="STAFF_ID" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="19" visible="True" name="Sorter_PASTORAL_CARE_ID" column="PASTORAL_CARE_ID" wizardCaption="PASTORAL CARE ID" wizardSortingType="SimpleDir" wizardControl="PASTORAL_CARE_ID" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_PASTORAL_CARE_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_ENROLMENT_YEAR" column="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="viewPrimaryTeacherSearchR1Sorter_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="21" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="PASTORAL_CARE_ID" fieldSource="PASTORAL_CARE_ID" wizardCaption="PASTORAL CARE ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1PASTORAL_CARE_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Float" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewPrimaryTeacherSearchR1ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="40"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="10" conditionType="Parameter" useIsNull="False" field="SURNAME" dataType="Text" logicOperator="Or" searchConditionType="BeginsWith" parameterType="URL" orderNumber="1" leftBrackets="1" parameterSource="s_SURNAME"/>
				<TableParameter id="11" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" parameterSource="s_STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="2" rightBrackets="1"/>
				<TableParameter id="12" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" parameterSource="s_ENROLMENT_YEAR" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="3"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="39" tableName="viewPrimaryTeacherSearchRequest" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewPrimaryTeacherSearchR" wizardCaption="Search View Primary Teacher Search R " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="MaintainSearchRequest_Primary.ccp" PathID="viewPrimaryTeacherSearchR" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="viewPrimaryTeacherSearchRButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="viewPrimaryTeacherSearchRs_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="viewPrimaryTeacherSearchRs_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="viewPrimaryTeacherSearchRs_ENROLMENT_YEAR" defaultValue="Year(Now())">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="MaintainSearchRequest_Primary.ccp" removeParameters="s_SURNAME;s_STUDENT_ID;s_ENROLMENT_YEAR" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="viewPrimaryTeacherSearchRClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link1" PathID="viewPrimaryTeacherSearchRLink1" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="MaintainSearchRequest_Primary.aspx" forShow="True" url="MaintainSearchRequest_Primary.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="MaintainSearchRequest_Primary.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="MaintainSearchRequest_PrimaryDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="30" groupID="2"/>
		<Group id="31" groupID="3"/>
		<Group id="32" groupID="4"/>
		<Group id="33" groupID="5"/>
		<Group id="34" groupID="6"/>
		<Group id="35" groupID="7"/>
		<Group id="36" groupID="8"/>
		<Group id="37" groupID="9"/>
		<Group id="38" groupID="11"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="29" form="viewPrimaryTeacherSearchR" name="s_SURNAME"/>
			</Actions>
		</Event>
	</Events>
</Page>
