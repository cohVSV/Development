<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" connection="connDECVPRODSQL2005" dataSource="STAFF_INDUCTIONS_COURSES" name="STAFF_INDUCTIONS_COURSES" orderBy="INDUCTION_TITLE" pageSizeLimit="100" wizardCaption="List of STAFF INDUCTIONS COURSES " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Induction Courses found" PathID="STAFF_INDUCTIONS_COURSES">
			<Components>
				<Label id="8" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_INDUCTIONS_COURSES_TotalRecords" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSESSTAFF_INDUCTIONS_COURSES_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="9"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="12" visible="True" name="Sorter_id" column="id" wizardCaption="Id" wizardSortingType="SimpleDir" wizardControl="id" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="13" visible="True" name="Sorter_INDUCTION_TITLE" column="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSortingType="SimpleDir" wizardControl="INDUCTION_TITLE" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="15" fieldSourceType="DBColumn" dataType="Integer" html="False" name="id" fieldSource="id" wizardCaption="Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESid" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="Staff_Inductions_ByCourse.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="20" sourceType="DataField" name="ind_id" source="id"/>
					</LinkParameters>
				</Link>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" name="INDUCTION_TITLE" fieldSource="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESINDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Integer" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESSTATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="18" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint" PathID="STAFF_INDUCTIONS_COURSESNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Link id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="STAFF_INDUCTIONS_COURSESLink1" hrefSource="Staff_Inductions_ByCourse.ccp" wizardUseTemplateBlock="False" removeParameters="ind_id">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="10" conditionType="Parameter" useIsNull="False" field="INDUCTION_TITLE" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="1" leftBrackets="1"/>
				<TableParameter id="11" conditionType="Parameter" useIsNull="False" field="INDUCTION_DESCRIPTION" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="2" rightBrackets="1"/>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STAFF_INDUCTIONS_COURSESSearch" wizardCaption="Search STAFF INDUCTIONS COURSES " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Staff_Inductions_ByCourse.ccp" PathID="STAFF_INDUCTIONS_COURSESSearch">
			<Components>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Staff_Inductions_ByCourse.ccp" removeParameters="s_keyword" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="STAFF_INDUCTIONS_COURSESSearchClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STAFF_INDUCTIONS_COURSESSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardCaption="Keyword" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="STAFF_INDUCTIONS_COURSESSearchs_keyword">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
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
		<Record id="21" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STAFF_INDUCTIONS_COURSES1" dataSource="STAFF_INDUCTIONS_COURSES" errorSummator="Error" wizardCaption="Add/Edit STAFF INDUCTIONS COURSES " wizardFormMethod="post" PathID="STAFF_INDUCTIONS_COURSES1" pasteActions="pasteActions" activeCollection="TableParameters">
			<Components>
				<Button id="22" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STAFF_INDUCTIONS_COURSES1Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="23" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STAFF_INDUCTIONS_COURSES1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="24" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STAFF_INDUCTIONS_COURSES1Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="INDUCTION_TITLE" fieldSource="INDUCTION_TITLE" required="True" caption="INDUCTION TITLE" wizardCaption="INDUCTION TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSES1INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextArea id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="INDUCTION_DESCRIPTION" fieldSource="INDUCTION_DESCRIPTION" required="True" caption="INDUCTION DESCRIPTION" wizardCaption="INDUCTION DESCRIPTION" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSES1INDUCTION_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="28" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="STATUS" fieldSource="STATUS" required="False" caption="STATUS" wizardCaption="STATUS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSES1STATUS" _valueOfList="0" _nameOfList="Inactive" dataSource="1;Active;0;Inactive" defaultValue="1">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</RadioButton>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="False" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSES1LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="31" fieldSourceType="DBColumn" dataType="Text" name="Hidden_last_altered_by" PathID="STAFF_INDUCTIONS_COURSES1Hidden_last_altered_by" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="32" name="Hidden_last_altered_by" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper()" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="33" fieldSourceType="DBColumn" dataType="Text" name="Hidden_last_altered_date" PathID="STAFF_INDUCTIONS_COURSES1Hidden_last_altered_date" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="34" name="Hidden_last_altered_date" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="30" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="False" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSES1LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="60"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="61"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="25" conditionType="Parameter" useIsNull="False" field="id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" parameterSource="ind_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="35" tableName="STAFF_INDUCTIONS_COURSES" posLeft="10" posTop="10" posWidth="160" posHeight="152"/>
			</JoinTables>
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
		<EditableGrid id="36" urlType="Relative" secured="False" emptyRows="1" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="40" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" dataSource="STAFF_INDUCTIONS_PROGRESS" name="STAFF_INDUCTIONS_PROGRESS" pageSizeLimit="100" wizardCaption="List of STAFF INDUCTIONS PROGRESS " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Staff / Induction Details found" PathID="STAFF_INDUCTIONS_PROGRESS" deleteControl="CheckBox_Delete" activeCollection="TableParameters" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<Label id="38" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_INDUCTIONS_PROGRESS_TotalRecords" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_PROGRESSSTAFF_INDUCTIONS_PROGRESS_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="39"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="42" visible="True" name="Sorter_STAFF_ID" column="STAFF_ID" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" PathID="STAFF_INDUCTIONS_PROGRESSSorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="43" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" PathID="STAFF_INDUCTIONS_PROGRESSSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="44" visible="True" name="Sorter_DATE_COMPLETED" column="DATE_COMPLETED" wizardCaption="DATE COMPLETED" wizardSortingType="SimpleDir" wizardControl="DATE_COMPLETED" PathID="STAFF_INDUCTIONS_PROGRESSSorter_DATE_COMPLETED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<ListBox id="47" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" required="True" caption="STAFF ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STAFF_INDUCTIONS_PROGRESSSTAFF_ID" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" activeCollection="TableParameters" orderBy="status desc, staffname" boundColumn="staff_ID" textColumn="staffname">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="57" tableName="View_StaffList_Active_Inactive" schemaName="dbo" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="58" tableName="View_StaffList_Active_Inactive" fieldName="staff_ID"/>
						<Field id="59" tableName="View_StaffList_Active_Inactive" fieldName="staffname"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="48" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="STATUS" fieldSource="STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STAFF_INDUCTIONS_PROGRESSSTATUS" _valueOfList="NA" _nameOfList="Not Required" dataSource="INCOMPLETE;Not Completed;COMPLETED;Completed;NA;Not Required" defaultValue="&quot;INCOMPLETE&quot;">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DATE_COMPLETED" fieldSource="DATE_COMPLETED" required="True" caption="DATE COMPLETED" wizardCaption="DATE COMPLETED" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_PROGRESSDATE_COMPLETED" format="dd/mm/yyyy" validationRule="DATE_COMPLETED.Value &lt;= Today()" validationText="The DATE COMPLETED cannot be in the future." defaultValue="CurrentDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="50" name="DatePicker_DATE_COMPLETED" control="DATE_COMPLETED" wizardSatellite="True" wizardControl="DATE_COMPLETED" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STAFF_INDUCTIONS_PROGRESSDatePicker_DATE_COMPLETED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<CheckBox id="51" visible="Dynamic" fieldSourceType="CodeExpression" dataType="Boolean" name="CheckBox_Delete" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_PROGRESSCheckBox_Delete" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Navigator id="52" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="True" wizardImagesScheme="Blueprint" PathID="STAFF_INDUCTIONS_PROGRESSNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="53" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="STAFF_INDUCTIONS_PROGRESSButton_Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="54" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STAFF_INDUCTIONS_PROGRESSCancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="46" fieldSourceType="DBColumn" dataType="Integer" name="induction_id" fieldSource="induction_id" required="False" caption="Induction Id" wizardCaption="Induction Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_PROGRESSinduction_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="62"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="63"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="56" conditionType="Parameter" useIsNull="False" field="induction_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="-1" parameterSource="ind_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="55" tableName="STAFF_INDUCTIONS_PROGRESS" posLeft="10" posTop="10" posWidth="160" posHeight="168"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
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
		</EditableGrid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Staff_Inductions_ByCourse.aspx" forShow="True" url="Staff_Inductions_ByCourse.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Staff_Inductions_ByCourse.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Staff_Inductions_ByCourseDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
