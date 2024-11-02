<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="80" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_TEACHER_SUBJECT_S" connection="connDECVPRODSQL2005" dataSource="SUBJECT_TEACHER, SUBJECT, STAFF" pageSizeLimit="100" wizardGridPageSize="True" wizardUseSearch="True" allowCancel="True" wizardSubmitConfirmation="False" wizardCaption="Manage Course Developer Staff" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Staff or Subjects Found!" wizardGridKey=" " wizardGridPaging="Simple" wizardAddNbsp="False" wizardTotalRecords="True" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="SUBJECT_TEACHER_SUBJECT_S" composition="6" isParent="True" wizardUsePageScroller="True" editableComponentTypeString="EditableGrid" childId="40" customUpdateType="Table" activeCollection="UFormElements" activeTableType="SUBJECT_TEACHER" customUpdate="SUBJECT_TEACHER" orderBy="SUBJECT_ABBREV">
			<Components>
				<Sorter id="25" visible="True" name="Sorter_SUBJECT_ABBREV" column="SUBJECT_ABBREV" wizardCaption="SUBJECT ABBREV" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ABBREV" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_SUBJECT_TITLE" column="SUBJECT_TITLE" wizardCaption="SUBJECT TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_SCAFFOLD_COURSEDEV_FLAG" column="SCAFFOLD_COURSEDEV_FLAG" wizardCaption="SCAFFOLD COURSEDEV FLAG" wizardSortingType="SimpleDir" wizardControl="SCAFFOLD_COURSEDEV_FLAG" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SCAFFOLD_COURSEDEV_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_SCAFFOLD_COURSEDEV_UPDATED" column="SCAFFOLD_COURSEDEV_UPDATED" wizardCaption="SCAFFOLD COURSEDEV UPDATED" wizardSortingType="SimpleDir" wizardControl="SCAFFOLD_COURSEDEV_UPDATED" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SCAFFOLD_COURSEDEV_UPDATED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT ABBREV" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT TITLE" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Memo" html="False" generateSpan="False" name="FIRSTNAME" fieldSource="FIRSTNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="FIRSTNAME" PathID="SUBJECT_TEACHER_SUBJECT_SFIRSTNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="35" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="SCAFFOLD_COURSEDEV_FLAG" fieldSource="SCAFFOLD_COURSEDEV_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SCAFFOLD COURSEDEV FLAG" caption="SCAFFOLD COURSE DEV?" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_FLAG" dataSource="0;No;1;Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
				<Hidden id="36" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_UPDATED" fieldSource="SCAFFOLD_COURSEDEV_UPDATED" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" wizardCaption="SCAFFOLD COURSEDEV UPDATED" caption="SCAFFOLD COURSEDEV UPDATED" required="False" unique="False" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_UPDATED" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="44" name="SCAFFOLD_COURSEDEV_UPDATED" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="30" fieldSourceType="DBColumn" dataType="Text" name="SUBJECT_TEACHER_STAFF_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" wizardCaption="SUBJECT TEACHER STAFF ID" caption="SUBJECT TEACHER STAFF ID" required="True" unique="False" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_TEACHER_STAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="29" fieldSourceType="DBColumn" dataType="Integer" name="SUBJECT_TEACHER_SUBJECT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" wizardCaption="SUBJECT TEACHER SUBJECT ID" caption="SUBJECT TEACHER SUBJECT ID" required="True" unique="False" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_TEACHER_SUBJECT_ID" fieldSource="SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="34" fieldSourceType="DBColumn" dataType="Memo" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SURNAME" PathID="SUBJECT_TEACHER_SUBJECT_SSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="lblScaffoldLastUpdated" PathID="SUBJECT_TEACHER_SUBJECT_SlblScaffoldLastUpdated" fieldSource="SCAFFOLD_COURSEDEV_UPDATED" format="d mmm yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="113" size="10" type="Simple" pageSizes="80;250;500" name="Navigator1" PathID="SUBJECT_TEACHER_SUBJECT_SNavigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="Images" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardPageSize="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="114" urlType="Relative" enableValidation="True" isDefault="False" name="ButtonUpdate" PathID="SUBJECT_TEACHER_SUBJECT_SButtonUpdate" operation="Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="115" urlType="Relative" enableValidation="False" isDefault="False" name="ButtonCancel" PathID="SUBJECT_TEACHER_SUBJECT_SButtonCancel" operation="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="198" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="TotalRecords" PathID="SUBJECT_TEACHER_SUBJECT_STotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="199"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="293" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCAFFOLD_COURSEDEV_MODIFIER" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_MODIFIER" fieldSource="SCAFFOLD_COURSEDEV_MODIFIER" caption="Scaffold Modifier" required="False" html="False">
<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
<TextBox id="294" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_STARTDATE" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_STARTDATE" fieldSource="SCAFFOLD_COURSEDEV_STARTDATE" caption="Date From" format="d/m/yyyy" generateDiv="False" required="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="296" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_ENDDATE" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_ENDDATE" fieldSource="SCAFFOLD_COURSEDEV_ENDDATE" caption="Date To" format="d/m/yyyy" generateDiv="False" required="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="326" name="DatePicker_SCAFFOLD_COURSEDEV_STARTDATE1" PathID="SUBJECT_TEACHER_SUBJECT_SDatePicker_SCAFFOLD_COURSEDEV_STARTDATE1" control="SCAFFOLD_COURSEDEV_STARTDATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<DatePicker id="327" name="DatePicker_SCAFFOLD_COURSEDEV_ENDDATW" PathID="SUBJECT_TEACHER_SUBJECT_SDatePicker_SCAFFOLD_COURSEDEV_ENDDATW" control="SCAFFOLD_COURSEDEV_ENDDATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="303" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT_TEACHER.STAFF_ID" leftBrackets="1" logicOperator="Or" orderNumber="2" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains" searchFormParameter="True"/>
				<TableParameter id="304" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT.SUBJECT_ABBREV" logicOperator="Or" orderNumber="3" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains" searchFormParameter="True"/>
				<TableParameter id="305" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT.SUBJECT_TITLE" logicOperator="Or" orderNumber="4" parameterSource="s_keyword" parameterType="URL" rightBrackets="0" searchConditionType="Contains" searchFormParameter="True"/>
				<TableParameter id="306" conditionType="Parameter" useIsNull="False" dataType="Text" field="SURNAME" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="307" conditionType="Parameter" useIsNull="False" dataType="Text" field="FIRSTNAME" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
				<TableParameter id="308" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_TEACHER.SUBJECT_ID" logicOperator="And" parameterSource="s_SUBJECT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="346" tableName="SUBJECT_TEACHER"/>
				<JoinTable id="347" tableName="SUBJECT"/>
				<JoinTable id="348" tableName="STAFF"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="301" fieldLeft="SUBJECT_TEACHER.SUBJECT_ID" fieldRight="SUBJECT.SUBJECT_ID" joinType="inner" tableLeft="SUBJECT_TEACHER" tableRight="SUBJECT"/>
				<JoinTable2 id="302" fieldLeft="SUBJECT_TEACHER.STAFF_ID" fieldRight="STAFF.STAFF_ID" joinType="inner" tableLeft="SUBJECT_TEACHER" tableRight="STAFF"/>
			</JoinLinks>
			<Fields>
				<Field id="309" fieldName="SCAFFOLD_COURSEDEV_FLAG" tableName="SUBJECT_TEACHER"/>
				<Field id="310" fieldName="SUBJECT_ABBREV" tableName="SUBJECT"/>
				<Field id="311" fieldName="SUBJECT_TITLE" tableName="SUBJECT"/>
				<Field id="312" alias="FIRSTNAME" fieldName="rtrim(FIRSTNAME)" isExpression="True"/>
				<Field id="313" alias="SURNAME" fieldName="rtrim(SURNAME)" isExpression="True"/>
				<Field id="314" fieldName="SCAFFOLD_COURSEDEV_UPDATED" tableName="SUBJECT_TEACHER"/>
				<Field id="315" alias="SUBJECT_ID" fieldName="SUBJECT_TEACHER.SUBJECT_ID" tableName="SUBJECT_TEACHER"/>
				<Field id="316" alias="STAFF_ID" fieldName="SUBJECT_TEACHER.STAFF_ID" tableName="SUBJECT_TEACHER"/>
				<Field id="317" fieldName="SCAFFOLD_COURSEDEV_STARTDATE" tableName="SUBJECT_TEACHER"/>
				<Field id="318" fieldName="SCAFFOLD_COURSEDEV_ENDDATE" tableName="SUBJECT_TEACHER"/>
				<Field id="319" fieldName="SCAFFOLD_COURSEDEV_MODIFIER" tableName="SUBJECT_TEACHER"/>
			</Fields>
			<PKFields>
				<PKField id="320" alias="STAFF_ID" dataType="Text" fieldName="STAFF_ID" tableName="SUBJECT_TEACHER"/>
				<PKField id="321" dataType="Integer" fieldName="SUBJECT_ID" tableName="SUBJECT"/>
				<PKField id="322" dataType="Text" fieldName="STAFF_ID" tableName="STAFF"/>
			</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="116" field="SCAFFOLD_COURSEDEV_FLAG" dataType="Integer" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_FLAG"/>
				<CustomParameter id="117" field="SCAFFOLD_COURSEDEV_UPDATED" dataType="Date" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_UPDATED"/>
				<CustomParameter id="118" field="SUBJECT_TEACHER.STAFF_ID" dataType="Text" parameterType="Control" parameterSource="SUBJECT_TEACHER_STAFF_ID"/>
				<CustomParameter id="119" field="SUBJECT_TEACHER.SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="SUBJECT_TEACHER_SUBJECT_ID"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="204" conditionType="Parameter" useIsNull="False" field="STAFF_ID" dataType="Text" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="STAFF_ID"/>
				<TableParameter id="205" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="SUBJECT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="213" field="SCAFFOLD_COURSEDEV_FLAG" dataType="Integer" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_FLAG"/>
				<CustomParameter id="214" field="SCAFFOLD_COURSEDEV_UPDATED" dataType="Date" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_UPDATED"/>
				<CustomParameter id="215" field="STAFF_ID" dataType="Text" parameterType="Control" parameterSource="SUBJECT_TEACHER_STAFF_ID" omitIfEmpty="True"/>
				<CustomParameter id="216" field="SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="SUBJECT_TEACHER_SUBJECT_ID" omitIfEmpty="True"/>
				<CustomParameter id="324" field="SCAFFOLD_COURSEDEV_STARTDATE" dataType="Date" parameterType="Control" DBFormat="yyyy-mm-dd HH:nn:ss" format="dd/mm/yyyy" omitIfEmpty="True" parameterSource="SCAFFOLD_COURSEDEV_STARTDATE"/>
				<CustomParameter id="325" field="SCAFFOLD_COURSEDEV_ENDDATE" dataType="Date" parameterType="Control" DBFormat="yyyy-mm-dd HH:nn:ss" format="dd/mm/yyyy" omitIfEmpty="True" parameterSource="SCAFFOLD_COURSEDEV_ENDDATE"/>
				<CustomParameter id="328" field="SCAFFOLD_COURSDEV_UPDATED_BY" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="dbutility.userid.tostring.toupper"/>
				<CustomParameter id="349" field="SCAFFOLD_COURSEDEV_MODIFIER" dataType="Text" parameterType="Control" defaultValue="&quot;&quot;" omitIfEmpty="False" parameterSource="SCAFFOLD_COURSEDEV_MODIFIER"/>
</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="40" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_SUBJECT_TEACHER" searchIds="40" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="Or" wizardInteractiveSearch="True" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="EditableGrid" returnPage="Subject_CourseDev_maint.ccp" PathID="SUBJECT_SUBJECT_TEACHER" composition="6" connection="connDECVPRODSQL2005" customUpdateType="SQL" customUpdate="UPDATE SUBJECT_TEACHER 
SET SCAFFOLD_COURSEDEV_FLAG = ALLOCATABLE_FLAG 
, SCAFFOLD_COURSEDEV_UPDATED = GETDATE() " dataSource="SUBJECT_TEACHER" customDeleteType="SQL" customDelete="UPDATE SUBJECT_TEACHER 
SET SCAFFOLD_COURSEDEV_FLAG = 0 
, SCAFFOLD_COURSEDEV_UPDATED = GETDATE() 
WHERE SCAFFOLD_COURSEDEV_FLAG = 1 ">
			<Components>
				<Link id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Subject_CourseDev_maint.ccp" removeParameters="s_keyword;s_SUBJECT_ID" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="SUBJECT_SUBJECT_TEACHERClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="42" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SUBJECT_SUBJECT_TEACHERButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardIsPassword="False" wizardCaption="Keyword" caption="Keyword" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="SUBJECT_SUBJECT_TEACHERs_keyword">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="69" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="s_SUBJECT_ID" wizardEmptyCaption="Select Value" PathID="SUBJECT_SUBJECT_TEACHERs_SUBJECT_ID" caption="Subject" connection="connDECVPRODSQL2005" dataSource="select * from view_ReportParams_Subjects
ORDER BY SUBJECT_TITLE" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<Button id="120" urlType="Relative" enableValidation="False" isDefault="False" name="ButtonResetDevToNo" PathID="SUBJECT_SUBJECT_TEACHERButtonResetDevToNo" operation="Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="122" message="This will reset all the Course Devs to NO?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="121" urlType="Relative" enableValidation="False" isDefault="False" name="ButtonResetDevToTeachers" PathID="SUBJECT_SUBJECT_TEACHERButtonResetDevToTeachers" operation="Update">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="123" message="Change Devs to match only active Teachers?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events/>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="217" tableName="SUBJECT_TEACHER"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="124" field="SUBJECT_TEACHER_SUBJECT_ID,SUBJECT_TEACHER_STAFF_ID,SUBJECT_ABBREV,SUBJECT_TITLE" dataType="Text" parameterType="Control" parameterSource="s_keyword"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="125" field="SUBJECT_TEACHER_SUBJECT_ID,SUBJECT_TEACHER_STAFF_ID,SUBJECT_ABBREV,SUBJECT_TITLE" dataType="Text" parameterType="Control" parameterSource="s_keyword"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Record>
		<Record id="93" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_TEACHER" connection="connDECVPRODSQL2005" dataSource="SUBJECT_TEACHER" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="SUBJECT_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="False" wizardCaption="Add Subject Course Developer" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Horizontal" templatePageRecord="C:\Program Files (x86)\CodeChargeStudio5//Templates//Record//Horizontal.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="SUBJECT_TEACHER" customInsertType="Table" activeCollection="IFormElements" activeTableType="SUBJECT_TEACHER" customInsert="SUBJECT_TEACHER">
			<Components>
				<ListBox id="94" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUBJECT ID" caption="SUBJECT ID" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" dataSource="select * from view_ReportParams_Subjects
ORDER BY SUBJECT_TITLE" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel" PathID="SUBJECT_TEACHERSUBJECT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="95" name="SUBJECT_ID" sourceType="URL" sourceName="s_SUBJECT_ID"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="96" conditionType="Expression" useIsNull="False" expression="STATUS = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<ListBox id="101" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STAFF ID" caption="STAFF ID" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" dataSource="View_StaffList_Active_Inactive" boundColumn="staff_ID" textColumn="staffname" PathID="SUBJECT_TEACHERSTAFF_ID">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="219" conditionType="Expression" useIsNull="False" expression="status = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="218" posHeight="152" posLeft="10" posTop="10" posWidth="125" tableName="View_StaffList_Active_Inactive"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="220" fieldName="*"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<Hidden id="104" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_UPDATED" fieldSource="SCAFFOLD_COURSEDEV_UPDATED" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="SCAFFOLD COURSEDEV UPDATED" caption="SCAFFOLD COURSEDEV UPDATED" required="False" unique="False" PathID="SUBJECT_TEACHERSCAFFOLD_COURSEDEV_UPDATED" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="221" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Button id="111" urlType="Relative" enableValidation="True" isDefault="False" name="ButtonInsert" PathID="SUBJECT_TEACHERButtonInsert" operation="Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="112" urlType="Relative" enableValidation="False" isDefault="False" name="ButtonCancel" PathID="SUBJECT_TEACHERButtonCancel" operation="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="103" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="SCAFFOLD_COURSEDEV_FLAG" fieldSource="SCAFFOLD_COURSEDEV_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SCAFFOLD COURSEDEV FLAG" caption="SCAFFOLD COURSEDEV FLAG" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="SUBJECT_TEACHERSCAFFOLD_COURSEDEV_FLAG" dataSource="0;No;1;Yes" defaultValue="1">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="330" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_STARTDATE" PathID="SUBJECT_TEACHERSCAFFOLD_COURSEDEV_STARTDATE" fieldSource="SCAFFOLD_COURSEDEV_STARTDATE" format="d/m/yyyy" caption="Date From" required="True" defaultValue="CurrentDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="332" name="DatePicker_StartDate" PathID="SUBJECT_TEACHERDatePicker_StartDate" control="SCAFFOLD_COURSEDEV_STARTDATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<TextBox id="333" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCAFFOLD_COURSEDEV_MODIFIER" PathID="SUBJECT_TEACHERSCAFFOLD_COURSEDEV_MODIFIER" fieldSource="SCAFFOLD_COURSEDEV_MODIFIER" caption="Subject Modifier" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="335" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_ENDDATE" PathID="SUBJECT_TEACHERSCAFFOLD_COURSEDEV_ENDDATE" fieldSource="SCAFFOLD_COURSEDEV_ENDDATE" format="d/m/yyyy" caption="Date To" required="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="336" name="DatePicker_SCAFFOLD_COURSEDEV_ENDDATE" PathID="SUBJECT_TEACHERDatePicker_SCAFFOLD_COURSEDEV_ENDDATE" control="SCAFFOLD_COURSEDEV_ENDDATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
			</Components>
			<Events>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="266"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="105" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" parameterSource="SUBJECT_ID" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="334" tableName="SUBJECT_TEACHER"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="107" field="SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="SUBJECT_ID" omitIfEmpty="True"/>
				<CustomParameter id="108" field="STAFF_ID" dataType="Text" parameterType="Control" parameterSource="STAFF_ID" omitIfEmpty="True"/>
				<CustomParameter id="109" field="SCAFFOLD_COURSEDEV_FLAG" dataType="Integer" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_FLAG" omitIfEmpty="True"/>
				<CustomParameter id="110" field="SCAFFOLD_COURSEDEV_UPDATED" dataType="Date" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_UPDATED" omitIfEmpty="True"/>
				<CustomParameter id="200" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" defaultValue="&quot;unknown&quot;" omitIfEmpty="False" parameterSource="dbutility.userid.tostring.toupper"/>
				<CustomParameter id="201" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="Now()"/>
				<CustomParameter id="202" field="SUBJECT_TIMEFRACTION" dataType="Float" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;0.00&quot;"/>
				<CustomParameter id="203" field="ALLOCATABLE_FLAG" dataType="Integer" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;0&quot;"/>
				<CustomParameter id="343" field="SCAFFOLD_COURSEDEV_STARTDATE" dataType="Date" parameterType="Control" DBFormat="yyyy-mm-dd HH:nn:ss" format="d/m/yyyy" omitIfEmpty="True" parameterSource="SCAFFOLD_COURSEDEV_STARTDATE"/>
				<CustomParameter id="344" field="SCAFFOLD_COURSEDEV_ENDDATE" dataType="Date" parameterType="Control" DBFormat="yyyy-mm-dd HH:nn:ss" format="d/m/yyyy" omitIfEmpty="True" parameterSource="SCAFFOLD_COURSEDEV_ENDDATE"/>
				<CustomParameter id="345" field="SCAFFOLD_COURSEDEV_MODIFIER" dataType="Text" parameterType="Control" omitIfEmpty="False" parameterSource="SCAFFOLD_COURSEDEV_MODIFIER"/>
			</IFormElements>
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
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Subject_CourseDev_maint.aspx" forShow="True" url="Subject_CourseDev_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Subject_CourseDev_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Subject_CourseDev_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="267"/>
			</Actions>
		</Event>
	</Events>
</Page>
