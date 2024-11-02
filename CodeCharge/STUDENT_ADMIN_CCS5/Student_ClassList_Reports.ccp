<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0" wizardSortingType="SimpleDir">
	<Components>
		<IncludePage id="7" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="CLASS_LIST_Panel" returnPage="Student_ClassList_Reports.ccp" PathID="CLASS_LIST_Panel" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<Button id="80" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" PathID="CLASS_LIST_PanelButton_DoSearch" removeParameters="showall">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="90" eventType="Client"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="62" visible="Yes" fieldSourceType="CodeExpression" sourceType="SQL" dataType="Text" returnValueType="Number" name="List_Subject_id" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" boundColumn="SUBJECT_SUBJECT_ID" textColumn="subject_displaylabel" PathID="CLASS_LIST_PanelList_Subject_id" dataSource="SELECT distinct SUBJECT_TITLE, 
SUBJECT.SUBJECT_ID AS SUBJECT_SUBJECT_ID, 
SUBJECT_ABBREV, RTRIM(SUBJECT_TITLE) +' [' + SUBJECT_ABBREV + '] ' + ' (ID ' + CAST(SUBJECT.SUBJECT_ID AS varchar(255)) + ')'  AS subject_displaylabel 
FROM SUBJECT INNER JOIN STUDENT_SUBJECT ON
SUBJECT.SUBJECT_ID = STUDENT_SUBJECT.SUBJECT_ID
WHERE ( CAMPUS_CODE='D' )
AND ( status = 1 )
AND ( ENROLMENT_YEAR=year(getdate())  ) 
AND ( STAFF_ID = '{STAFF_ID}')" activeCollection="SQLParameters" required="True" caption="SUBJECT" parameterTypeListName="ParameterTypeList">
					<Components/>
					<Events>
					</Events>
					<TableParameters>
						<TableParameter id="98" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="status = 1"/>
						<TableParameter id="101" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="ENROLMENT_YEAR=year(getdate()) "/>
						<TableParameter id="110" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CAMPUS_CODE='D'"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="143" variable="STAFF_ID" parameterType="Expression" dataType="Text" parameterSource="DBUtility.UserLogin.ToUpper" designDefaultValue="JWARD"/>
					</SQLParameters>
					<JoinTables>
					</JoinTables>
					<JoinLinks>
					</JoinLinks>
					<Fields>
						<Field id="96" fieldName="RTRIM(SUBJECT_TITLE) +' [' + SUBJECT_ABBREV + '] ' + ' (ID ' + CAST(SUB.SUBJECT_ID AS varchar(255)) + ')' " isExpression="True" alias="subject_displaylabel"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="85" visible="Yes" fieldSourceType="CodeExpression" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="List_SEMESTER" wizardEmptyCaption="Select Value" PathID="CLASS_LIST_PanelList_SEMESTER" orderBy="SUBJECT_TITLE" connection="connDECVPRODSQL2005" dataSource="[1,2,B];All Semesters;[1,B];1 AND B;[2,B];2 AND B;[1];1;[2];2;[B];B" _valueOfList="[1,2,B]" _nameOfList="All Semesters" defaultValue="&quot;[1,2,B]&quot;">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="87" fieldName="*"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="88" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="List_SUBJECT_ENROL_STATUS" wizardEmptyCaption="Select Value" PathID="CLASS_LIST_PanelList_SUBJECT_ENROL_STATUS" orderBy="SUBJECT_TITLE" connection="connDECVPRODSQL2005" dataSource="[C,D,E];CURRENT(C,D,E);[C,D,E,P];CURRENT + PENDING (C,D,E,P);[C,D,E,F];CURRENT + FINISHED (C,D,E,F);[F,W];FINISHED + WITHDRAWN (F,W);[C,D,F,P];NON-WITHDRAWN (C,D,F,P);[C,D,E,F,P,W];All Status (C,D,E,F,P,W)" fieldSource="SEMESTER" defaultValue="&quot;[C,D,E]&quot;" required="True" _valueOfList="[C,D,E,P]" _nameOfList="CURRENT + PENDING (C,D,E,P)">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="89" fieldName="*"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="ClearParameters" hrefSource="Student_ClassList_Reports.ccp" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="CLASS_LIST_PanelClearParameters" wizardUseTemplateBlock="False" removeParameters="List_Subject_id,List_SUBJECT_ENROL_STATUS,List_SEMESTER">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="9" tableName="view_ReportParams_Subjects" posWidth="135" posHeight="120" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="10" tableName="view_ReportParams_Subjects" fieldName="SUBJECT_TITLE" isExpression="False"/>
				<Field id="60" tableName="view_ReportParams_Subjects" fieldName="subject_displaylabel"/>
				<Field id="61" tableName="view_ReportParams_Subjects" fieldName="SUBJECT_ID"/>
			</Fields>
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
		<Grid id="25" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="100" connection="connDECVPRODSQL2005" dataSource="view_Class_Contact_List_04022011" name="Students_Grid" pageSizeLimit="150" wizardCaption="List of View Class List " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Student found" activeCollection="TableParameters" wizardAllowSorting="True" pasteActions="pasteActions" pasteAsReplace="pasteAsReplace" PathID="Students_Grid">
			<Components>
				<Sorter id="37" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="Students_GridSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="38" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="Students_GridSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="39" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="Students_GridSorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="40" visible="True" name="Sorter_SCHOOL_NAME" column="SCHOOL_NAME" wizardCaption="SCHOOL NAME" wizardSortingType="SimpleDir" wizardControl="SCHOOL_NAME" wizardAddNbsp="False" PathID="Students_GridSorter_SCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="41" visible="True" name="Sorter_ATTENDING_SCHOOL_ID" column="SCHOOL_ID" wizardCaption="ATTENDING SCHOOL ID" wizardSortingType="SimpleDir" wizardControl="ATTENDING_SCHOOL_ID" wizardAddNbsp="False" PathID="Students_GridSorter_ATTENDING_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="42" visible="True" name="Sorter_STAFF_ID" column="STAFF_ID" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="Students_GridSorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="43" visible="True" name="Sorter_SUBJECT_ABBREV" column="SUBJECT_ABBREV" wizardCaption="SUBJECT ABBREV" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ABBREV" wizardAddNbsp="False" PathID="Students_GridSorter_SUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="44" visible="True" name="Sorter_SUBJECT_ID" column="SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ID" wizardAddNbsp="False" PathID="Students_GridSorter_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="45" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSortingType="SimpleDir" wizardControl="SUBJ_ENROL_STATUS" wizardAddNbsp="False" PathID="Students_GridSorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="46" visible="True" name="Sorter_SEMESTER" column="SEMESTER" wizardCaption="SEMESTER" wizardSortingType="SimpleDir" wizardControl="SEMESTER" wizardAddNbsp="False" PathID="Students_GridSorter_SEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="50" wizardMaxLength="82" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_NAME" fieldSource="SCHOOL_NAME" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="51" fieldSourceType="DBColumn" dataType="Text" html="False" name="ATTENDING_SCHOOL_ID" fieldSource="SCHOOL_ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridATTENDING_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSTAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardCaption="SUBJECT ABBREV" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="54" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Students_GridSUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="55" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="56" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="57" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Blueprint" PathID="Students_GridNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Link id="84" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="StudentSummary.ccp" removeParameters="s_SURNAME;s_ENROLMENT_YEAR" PathID="Students_GridSTUDENT_ID">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="31" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="33" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<ImageLink id="117" visible="No" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" preserveParameters="None" name="ClippyLink1" PathID="Students_GridClippyLink1">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</ImageLink>
				<Label id="119" fieldSourceType="DBColumn" dataType="Date" html="False" name="ENROLMENT_DATE" PathID="Students_GridENROLMENT_DATE" fieldSource="ENROLMENT_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="120" visible="True" name="Sorter_ENROLMENT_DATE" wizardSortingType="SimpleDir" PathID="Students_GridSorter_ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" column="ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Hidden id="121" fieldSourceType="CodeExpression" dataType="Text" name="Hidden_clipboardtext" PathID="Students_GridHidden_clipboardtext">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="122"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="126" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link1" PathID="Students_GridLink1" hrefSource="Student_Comments_maintain.ccp" wizardUseTemplateBlock="False" removeParameters="showprofilepanel">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="127" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="128" sourceType="DataField" format="yyyy-mm-dd" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="144" fieldSourceType="DBColumn" dataType="Text" html="True" name="label_ALERTS" PathID="Students_Gridlabel_ALERTS" defaultValue="&quot;Bob&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="151" name="intAlerts" type="Integer" initialValue="0" eventType="Server"/>
								<Action actionName="DLookup" actionCategory="Database" id="152" typeOfTarget="Variable" expression="&quot;count(student_id)&quot;" domain="&quot;view_StudentSummary_Alerts&quot;" criteria="&quot;STUDENT_ID = &quot; &amp;  DataItem.STUDENT_ID.GetFormattedValue() &amp; &quot;&quot;" connection="connDECVPRODSQL2005" dataType="Integer" target="intAlerts" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="157" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="189" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ClassList_TotalRecords" PathID="Students_GridSTUDENT_ClassList_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="190"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="191" fieldSourceType="CodeExpression" dataType="Integer" html="False" name="lblCnt" PathID="Students_GridlblCnt">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="192" name="lblCnt" sourceType="Variable" sourceName="Students_GridCurrentRowNumber"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="205" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="StandardLearningProgram" PathID="Students_GridStandardLearningProgram" fieldSource="MODULE_CUSTOMPROGRAM_display">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="209" visible="True" name="Sorter_CLASS_CODE" column="CLASS_CODE" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="Students_GridSorter_CLASS_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
<Label id="210" fieldSourceType="DBColumn" dataType="Text" html="False" name="CLASS_CODE" fieldSource="CLASS_CODE" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridCLASS_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
</Components>
			<Events>
			</Events>
			<TableParameters>
				<TableParameter id="199" conditionType="Expression" useIsNull="False" dataType="Float" expression="ENROLMENT_YEAR =year(getdate())" field="ENROLMENT_YEAR" logicOperator="And" parameterSource="year(getdate())" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="200" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_ID" logicOperator="And" parameterSource="List_Subject_id" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="201" conditionType="Parameter" useIsNull="False" dataType="Text" field="SEMESTER" logicOperator="And" parameterSource="List_SEMESTER" parameterType="URL" searchConditionType="BeginsWith"/>
				<TableParameter id="202" conditionType="Parameter" useIsNull="False" dataType="Text" expression="SEMESTER like '{Semester_Checked}'" field="SUBJ_ENROL_STATUS" logicOperator="And" parameterSource="List_SUBJECT_ENROL_STATUS" parameterType="URL" searchConditionType="BeginsWith"/>
				<TableParameter id="203" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF_ID" logicOperator="And" parameterSource="DBUtility.UserLogin.ToUpper" parameterType="Expression" searchConditionType="BeginsWith"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="208" tableName="view_Class_Contact_List_04022011"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="204" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Link id="114" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="LinkExportToExcel" PathID="LinkExportToExcel" hrefSource="Student_ClassList_Reports_Export.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="13" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_COMMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT COMMENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" activeCollection="ISPParameters" activeTableType="STUDENT_COMMENT" parameterTypeListName="ParameterTypeList" PathID="STUDENT_COMMENT" pasteActions="pasteActions" visible="Dynamic" customInsertType="Procedure" customInsert="spi_ins_ClassComments_multiple;1" dataSource="STUDENT_COMMENT" generateDiv="False">
			<Components>
				<TextArea id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT" fieldSource="COMMENT" required="True" caption="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="STUDENT_COMMENTCOMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Button id="14" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_COMMENTButton_Insert">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="15" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_COMMENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="17" fieldSourceType="DBColumn" dataType="Integer" name="hidden_SUBJECT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_COMMENThidden_SUBJECT_ID" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="24" fieldSourceType="DBColumn" dataType="Text" name="hidden_ENROLSTATUS" PathID="STUDENT_COMMENThidden_ENROLSTATUS" defaultValue="&quot;[C,D,E]&quot;" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<RadioButton id="68" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="lbSpecialCommentType1" wizardEmptyCaption="Select Value" PathID="STUDENT_COMMENTlbSpecialCommentType1" dataSource="CONTACT_PHONE;Telephone Contact;CONTACT_EMAIL;Email Contact;CONTACT_POST;Paper/Post Contact;CONTACT_VISIT;Visit to/by Student;CONTACT_OTHER;Other" required="True" caption="Contact Type" _valueOfList="CONTACT_OTHER" _nameOfList="Other" html="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="173"/>
							</Actions>
						</Event>
					</Events>
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
				<Hidden id="175" fieldSourceType="DBColumn" dataType="Text" name="Hidden_SEMESTER" PathID="STUDENT_COMMENTHidden_SEMESTER" visible="Yes" defaultValue="&quot;[1,2,B]&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="26" name="hidden_SUBJECT_ID" sourceType="URL" sourceName="List_SUBJECT_ID" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="27" name="hidden_ENROLSTATUS" sourceType="URL" sourceName="List_SUBJECT_ENROL_STATUS" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="174" name="Hidden_SEMESTER" sourceType="URL" sourceName="List_SEMESTER"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="176" name="hidden_SUBJECT_ID" errorMessage="The Subject for this Class could not be found. Comments will NOT be added."/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="16" conditionType="Parameter" useIsNull="False" field="COMMENT_ID" parameterSource="COMMENT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key189" parameterName="@RETURN_VALUE" parameterSource="0" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key190" parameterName="@SubjectID" parameterSource="hidden_SUBJECT_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key191" parameterName="@Enrolment" parameterSource="hidden_ENROLSTATUS" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10" defaultValue="&quot;[C,D,E]&quot;"/>
				<SPParameter id="Key192" parameterName="@Semester" parameterSource="Hidden_SEMESTER" dataType="VarChar" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="10" defaultValue="&quot;[1,2,B]&quot;"/>
				<SPParameter id="Key193" parameterName="@CommentType" parameterSource="lbSpecialCommentType1" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key194" parameterName="@CommentText" parameterSource="COMMENT" dataType="VarChar" parameterType="Control" dataSize="255" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key195" parameterName="@UserID" parameterSource="DBUtility.UserLogin.ToUpper" dataType="VarChar" parameterType="Expression" dataSize="8" direction="Input" scale="0" precision="10"/>
			</ISPParameters>
			<ISQLParameters>
				<SQLParameter id="30" variable="STUDENT_ID" parameterType="Control" dataType="Text" parameterSource="STUDENT_ID"/>
				<SQLParameter id="161" variable="COMMENTTEXT" parameterType="Control" dataType="Text" parameterSource="COMMENT"/>
				<SQLParameter id="32" variable="LAST_ALTERED_BY" parameterType="Expression" dataType="Text" parameterSource="DBUtility.UserLogin.ToUpper"/>
				<SQLParameter id="162" variable="COMMENT_TYPE" parameterType="Control" defaultValue="'REGULAR'" dataType="Text" parameterSource="Hidden_CommentType"/>
			</ISQLParameters>
			<IFormElements>
				<CustomParameter id="21" field="COMMENT" dataType="Text" parameterType="Control" parameterSource="COMMENT" omitIfEmpty="True"/>
				<CustomParameter id="23" field="STUDENT_ID" dataType="Float" parameterType="Control" parameterSource="STUDENT_ID" omitIfEmpty="True"/>
				<CustomParameter id="163" field="ACTIVE_STATUS" dataType="Text" parameterType="Control" parameterSource="hidden_STATUS" defaultValue="&quot;A&quot;" omitIfEmpty="False"/>
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
			<Features>
			</Features>
			<PKFields/>
		</Record>
		<Link id="165" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_ShowBulkComment" PathID="Link_ShowBulkComment" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_ClassList_Reports.aspx" forShow="True" url="Student_ClassList_Reports.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_ClassList_Reports.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_ClassList_ReportsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Hide-Show Component" actionCategory="General" id="69" action="Hide" conditionType="Parameter" dataType="Text" componentName="Students_Grid" condition="Equal" name1="List_Subject_id" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
				<Action actionName="Custom Code" actionCategory="General" id="123"/>
			</Actions>
		</Event>
	</Events>
</Page>
