<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Student_SubjectStatus_search" wizardCaption="Search ASSIGNMENT SUBMISSION STU " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Student_SubjectStatus_Maintain.ccp" PathID="Student_SubjectStatus_search" pasteActions="pasteActions">
			<Components>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Student_SubjectStatus_Maintain.ccp" removeParameters="s_STAFF_SUBJECT_ID;s_STUDENT_ID;flagdone;List_Staff_ID;selected_STAFF_SUBJECT_ID;hidden_Staff_id;s_DefaultingFlag" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="Student_SubjectStatus_searchClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="Student_SubjectStatus_searchButton_DoSearch" removeParameters="flagdone">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="57" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="s_STAFF_SUBJECT_ID" wizardEmptyCaption="Select Value" PathID="Student_SubjectStatus_searchs_STAFF_SUBJECT_ID" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel" parameterTypeListName="ParameterTypeList" orderBy="SUBJECT_ID" dataSource="select * from view_ReportParams_Subjects
where subject_id in 
(select subject_ID 
from 
student_subject where 
SUBJ_ENROL_STATUS='D' 
 AND ENROLMENT_YEAR=year(getdate())
 and staff_id='{hidden_Staff_id}'
 )
ORDER BY SUBJECT_TITLE">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="60" conditionType="Expression" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="ENROLMENT_YEAR=year(getdate())" parameterSource="year(getdate())"/>
						<TableParameter id="61" conditionType="Parameter" useIsNull="False" field="STAFF_ID" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="Trim(session(&quot;UserID&quot;).toupper)" parameterSource="s_STAFF_ID"/>
						<TableParameter id="62" conditionType="Expression" useIsNull="False" field="SUBJ_ENROL_STATUS" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="SUBJ_ENROL_STATUS='D'" parameterSource="D"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="63" parameterType="URL" variable="hidden_Staff_id" dataType="Text" parameterSource="hidden_Staff_id" defaultValue="Trim(session(&quot;UserID&quot;).toupper)" designDefaultValue="cford"/>
					</SQLParameters>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="65" fieldName="Distinct(SUBJECT_ID)" alias="SUBJECT_ID" isExpression="True"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Label id="70" fieldSourceType="CodeExpression" dataType="Text" html="False" name="s_Staff_ID" PathID="Student_SubjectStatus_searchs_Staff_ID" fieldSource="Trim(session(&quot;UserID&quot;).toupper)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="80" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="List_Staff_ID" wizardEmptyCaption="Select Value" PathID="Student_SubjectStatus_searchList_Staff_ID" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" boundColumn="staff_ID" textColumn="staffname" orderBy="status_type">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="109"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="145" conditionType="Expression" useIsNull="False" dataType="Boolean" expression="status = 1" field="status" logicOperator="And" parameterSource="status" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="158" tableName="View_StaffList_Active_Inactive"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="146" fieldName="*"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Hidden id="108" fieldSourceType="DBColumn" dataType="Text" name="hidden_Staff_id" PathID="Student_SubjectStatus_searchhidden_Staff_id" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="110" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="selected_STAFF_SUBJECT_ID" wizardEmptyCaption="Select Value" PathID="Student_SubjectStatus_searchselected_STAFF_SUBJECT_ID" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" orderBy="view_ReportParams_Subjects.SUBJECT_ID" dataSource="select * from view_ReportParams_Subjects
where subject_id in 
(select subject_ID 
from 
student_subject where 
SUBJ_ENROL_STATUS='D' 
 AND ENROLMENT_YEAR=year(getdate())
 and staff_id='{hidden_Staff_id}'
 )
ORDER BY SUBJECT_TITLE" connection="connDECVPRODSQL2005" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="111" conditionType="Expression" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="ENROLMENT_YEAR=year(getdate())" parameterSource="year(getdate())"/>
						<TableParameter id="112" conditionType="Parameter" useIsNull="False" field="STAFF_ID" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="Trim(session(&quot;UserID&quot;).toupper)" parameterSource="s_STAFF_ID"/>
						<TableParameter id="113" conditionType="Expression" useIsNull="False" field="SUBJ_ENROL_STATUS" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="SUBJ_ENROL_STATUS='D'" parameterSource="D"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="114" parameterType="URL" variable="hidden_Staff_id" dataType="Text" parameterSource="hidden_Staff_id" defaultValue="Trim(session(&quot;UserID&quot;).toupper)"/>
					</SQLParameters>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features>
					</Features>
					<PKFields/>
				</ListBox>
				<RadioButton id="139" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="s_DefaultingFlag" PathID="Student_SubjectStatus_searchs_DefaultingFlag" dataSource="[D];&lt;strong&gt;Defaulting Only&lt;/strong&gt;;[CD];Current AND Defaulting" defaultValue="&quot;[D]&quot;">
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
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="81"/>
					</Actions>
				</Event>
			</Events>
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
		<EditableGrid id="13" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="SQL" defaultPageSize="50" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" activeCollection="UFormElements" name="Student_SubjectStatus_Result" pageSizeLimit="100" wizardCaption="List of ASSIGNMENT SUBMISSION, STUDENT SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Assignment Details found" PathID="Student_SubjectStatus_Result" dataSource="SELECT STUDENT_ID, SUBJECT_ID, SUBJ_ENROL_STATUS, NUM_ASSMT_SUBMISSIONS, DEFAULTING_STATUS, DEFAULTING_STATUS_DATE, WARNING_LETTER,
WARNING_SENT_DATE 
FROM STUDENT_SUBJECT
WHERE ( STUDENT_SUBJECT.ENROLMENT_YEAR=year(getdate()) )
AND STUDENT_SUBJECT.STAFF_ID = '{hidden_Staff_id}'
AND ( SUBJ_ENROL_STATUS LIKE '{s_DefaultingFlag}' )
AND ( STUDENT_SUBJECT.SUBJECT_ID = {s_STAFF_SUBJECT_ID} 
OR SUBJECT_ID = {selected_STAFF_SUBJECT_ID} ) " pasteActions="pasteActions" pasteAsReplace="pasteAsReplace" customUpdateType="Table" activeTableType="STUDENT_SUBJECT" customUpdate="STUDENT_SUBJECT">
			<Components>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="Student_SubjectStatus_TotalRecords" wizardUseTemplateBlock="False" PathID="Student_SubjectStatus_ResultStudent_SubjectStatus_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="15" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="16" visible="True" name="Sorter_ASSIGNMENT_SUBMISSION_SUBJECT_ID" column="SUBJECT_ID" wizardCaption="ASSIGNMENT SUBMISSION SUBJECT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_SUBMISSION_SUBJECT_ID" PathID="Student_SubjectStatus_ResultSorter_ASSIGNMENT_SUBMISSION_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="17" visible="True" name="Sorter_ASSIGNMENT_SUBMISSION_STUDENT_ID" column="STUDENT_ID" wizardCaption="ASSIGNMENT SUBMISSION STUDENT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_SUBMISSION_STUDENT_ID" PathID="Student_SubjectStatus_ResultSorter_ASSIGNMENT_SUBMISSION_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="18" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="SUBJ_ENROL_STATUS" wizardCaption="ASSIGNMENT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_ID" PathID="Student_SubjectStatus_ResultSorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="19" visible="True" name="Sorter_ASSMT_SUBMISSIONS" column="NUM_ASSMT_SUBMISSIONS" wizardCaption="SUBMISSION ID" wizardSortingType="SimpleDir" wizardControl="SUBMISSION_ID" PathID="Student_SubjectStatus_ResultSorter_ASSMT_SUBMISSIONS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="24" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SS_SUBJECT_ID" fieldSource="SUBJECT_ID" required="True" caption="ASSIGNMENT SUBMISSION SUBJECT ID" wizardCaption="ASSIGNMENT SUBMISSION SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Student_SubjectStatus_ResultSS_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="25" fieldSourceType="DBColumn" dataType="Float" html="False" name="SS_STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="ASSIGNMENT SUBMISSION STUDENT ID" wizardCaption="ASSIGNMENT SUBMISSION STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Student_SubjectStatus_ResultSS_STUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="StudentSummary.ccp" linkProperties="{'textSource':'','textSourceDB':'STUDENT_ID','hrefSource':'StudentSummary.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID'},'1':{'sourceType':'Expression','parameterSource':'Datetime.Today.Year','parameterName':'ENROLMENT_YEAR'},'length':2,'objectType':'linkParameters'}}"><Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="134" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="135" sourceType="Expression" name="ENROLMENT_YEAR" source="Datetime.Today.Year"/>
					</LinkParameters>
				</Link>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" required="True" caption="ASSIGNMENT ID" wizardCaption="ASSIGNMENT ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Student_SubjectStatus_ResultSUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Integer" html="False" name="NUM_OF_ASSIGNMENTS" fieldSource="NUM_ASSMT_SUBMISSIONS" required="True" caption="SUBMISSION ID" wizardCaption="SUBMISSION ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Student_SubjectStatus_ResultNUM_OF_ASSIGNMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="35" size="10" type="Simple" pageSizes="10;25;50;80;100" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="True" wizardImagesScheme="Blueprint" PathID="Student_SubjectStatus_ResultNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="36" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="Student_SubjectStatus_ResultButton_Submit" returnPage="Student_SubjectStatus_Maintain.ccp">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="37" message="Submit records?" eventType="Client"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="38" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Student_SubjectStatus_ResultCancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="55" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="DEFAULTING_STATUS_ID" fieldSource="DEFAULTING_STATUS" required="False" caption="DEFAULTING_STATUS" wizardCaption="ASSIGNMENT SUBMISSION STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="Student_SubjectStatus_ResultDEFAULTING_STATUS_ID" connection="connDECVPRODSQL2005" orderBy="STAFF_ID" _valueOfList="I" _nameOfList="INACTIVE" dataSource="A;No - Do not Send;I;Yes - Send Warning">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="68" eventType="Client"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Label id="72" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbl_StudentName" PathID="Student_SubjectStatus_Resultlbl_StudentName">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="DLookup" actionCategory="Database" id="73" typeOfTarget="Control" expression="&quot;dbo.ProperCase(RTRIM(dbo.STUDENT.FIRST_NAME))+ ' ' + RTRIM(dbo.STUDENT.SURNAME) &quot;" domain="&quot;STUDENT&quot;" criteria="&quot;STUDENT_ID = &quot; &amp; Item.SS_STUDENT_ID.Value" connection="connDECVPRODSQL2005" dataType="Text" target="lbl_StudentName"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="83" fieldSourceType="DBColumn" dataType="Text" html="False" name="Lbl_Warning_Letter" PathID="Student_SubjectStatus_ResultLbl_Warning_Letter" fieldSource="WARNING_LETTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="21" visible="True" name="Sorter_WARNING_LETTER" column="WARNING_LETTER" wizardCaption="RETURNED DATE" wizardSortingType="SimpleDir" wizardControl="RETURNED_DATE" PathID="Student_SubjectStatus_ResultSorter_WARNING_LETTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="85" fieldSourceType="DBColumn" dataType="Date" html="False" name="Lbl_Warning_Sent_Date" PathID="Student_SubjectStatus_ResultLbl_Warning_Sent_Date" fieldSource="WARNING_SENT_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="86" visible="True" name="Sorter_Warning_Sent_Date" column="WARNING_SENT_DATE" wizardCaption="RETURNED DATE" wizardSortingType="SimpleDir" wizardControl="RETURNED_DATE" PathID="Student_SubjectStatus_ResultSorter_Warning_Sent_Date">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<ListBox id="87" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="WARNING_LETTER_Id" fieldSource="WARNING_LETTER" required="False" caption="WARNING_LETTER" wizardCaption="ASSIGNMENT SUBMISSION STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="Student_SubjectStatus_ResultWARNING_LETTER_Id" connection="connDECVPRODSQL2005" orderBy="STAFF_ID" _valueOfList="I" _nameOfList="INACTIVE" dataSource="Y;YES;N;NO">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="118"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="89" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="WARNING_SENT_DATE" fieldSource="WARNING_SENT_DATE" required="False" caption="WARNING_SENT_DATE" wizardCaption="RETURNED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="Student_SubjectStatus_ResultWARNING_SENT_DATE" format="dd/mm/yy">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="91" name="DatePicker_WARNING_SENT_DATE" control="WARNING_SENT_DATE" wizardSatellite="True" wizardControl="RETURNED_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="Student_SubjectStatus_ResultDatePicker_WARNING_SENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<Sorter id="84" visible="True" name="Sorter_DEFAULTING_STATUS_DATE" column="DEFAULTING_STATUS_DATE" PathID="Student_SubjectStatus_ResultSorter_DEFAULTING_STATUS_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_DEFAULTING_STATUS" column="DEFAULTING_STATUS" PathID="Student_SubjectStatus_ResultSorter_DEFAULTING_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="119" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbl_StudentEmail" PathID="Student_SubjectStatus_Resultlbl_StudentEmail" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="DLookup" actionCategory="Database" id="120" typeOfTarget="Control" domain="&quot;STUDENT&quot;" criteria="&quot;STUDENT_ID = &quot; &amp; Item.SS_STUDENT_ID.Value" connection="connDECVPRODSQL2005" dataType="Text" target="lbl_StudentEmail" expression="&quot;isnull(STUDENT_EMAIL,'')&quot;"/><Action actionName="Custom Code" actionCategory="General" id="121"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="122" fieldSourceType="DBColumn" dataType="Text" html="True" name="label_ALERTS" PathID="Student_SubjectStatus_Resultlabel_ALERTS" defaultValue="&quot;Bob&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="123" name="intAlerts" type="Integer" initialValue="0" eventType="Server"/>
								<Action actionName="DLookup" actionCategory="Database" id="124" typeOfTarget="Variable" expression="&quot;count(student_id)&quot;" domain="&quot;view_StudentSummary_Alerts&quot;" criteria="&quot;STUDENT_ID = &quot; &amp; Item.SS_STUDENT_ID.Value &amp; &quot;&quot;" connection="connDECVPRODSQL2005" dataType="Integer" target="intAlerts" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="125"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="126" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblDefaultingStatusDate" PathID="Student_SubjectStatus_ResultlblDefaultingStatusDate" fieldSource="DEFAULTING_STATUS_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="127" fieldSourceType="DBColumn" dataType="Text" name="Hidden_DefaultingStatus" PathID="Student_SubjectStatus_ResultHidden_DefaultingStatus" required="False" defaultValue="&quot;&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="136" sourceType="Expression" sourceName="DataItem.DEFAULTING_STATUS_ID.GetFormattedValue()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="129" fieldSourceType="DBColumn" dataType="Text" html="True" name="LIST_OF_ASSIGNMENTS" required="True" caption="SUBMISSION ID" wizardCaption="SUBMISSION ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Student_SubjectStatus_ResultLIST_OF_ASSIGNMENTS" defaultValue="&quot;&lt;em&gt;none&lt;/em&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="137" fieldSourceType="DBColumn" dataType="Date" name="DEFAULTING_STATUS_DATE" PathID="Student_SubjectStatus_ResultDEFAULTING_STATUS_DATE" fieldSource="DEFAULTING_STATUS_DATE" format="dd/mm/yy" caption="Send Warning Letter Date">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="AfterSubmit" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="74"/>
					</Actions>
				</Event>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="115"/>
						<Action actionName="Custom Code" actionCategory="General" id="132"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="117"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="128"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="147" dataType="Text" defaultValue="Trim(session(&quot;UserID&quot;).toupper)" designDefaultValue="KBLAKE" parameterSource="hidden_Staff_id" parameterType="URL" variable="hidden_Staff_id"/>
				<SQLParameter id="148" dataType="Text" defaultValue="&quot;[D]&quot;" designDefaultValue="&quot;[D]&quot;" parameterSource="s_DefaultingFlag" parameterType="URL" variable="s_DefaultingFlag"/>
				<SQLParameter id="149" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="s_STAFF_SUBJECT_ID" parameterType="URL" variable="s_STAFF_SUBJECT_ID"/>
				<SQLParameter id="150" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="selected_STAFF_SUBJECT_ID" parameterType="URL" variable="selected_STAFF_SUBJECT_ID"/>
			</SQLParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
			</Fields>
			<PKFields>
			</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="155" conditionType="Expression" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="Expression" logicOperator="And" expression="ENROLMENT_YEAR = YEAR(GETDATE())" parameterSource="YEAR(GETDATE())"/>
				<TableParameter id="156" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="157" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="SUBJECT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="151" field="DEFAULTING_STATUS" dataType="Text" parameterType="Control" parameterSource="DEFAULTING_STATUS_ID"/>
				<CustomParameter id="152" field="WARNING_LETTER" dataType="Text" parameterType="Control" parameterSource="WARNING_LETTER_Id"/>
				<CustomParameter id="153" field="WARNING_SENT_DATE" dataType="Date" parameterType="Control" parameterSource="WARNING_SENT_DATE" format="dd/mm/yy"/>
				<CustomParameter id="154" field="DEFAULTING_STATUS_DATE" dataType="Date" parameterType="Control" parameterSource="DEFAULTING_STATUS_DATE" format="dd/mm/yy"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Panel id="75" visible="False" name="Panel1" PathID="Panel1">
			<Components/>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="76" action="Show" conditionType="Parameter" dataType="Integer" componentName="Panel1" condition="Equal" sourceType1="URL" name1="flagdone" sourceType2="Expression" name2="1"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
		<IncludePage id="77" name="Footer" PathID="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_SubjectStatus_Maintain.aspx" forShow="True" url="Student_SubjectStatus_Maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_SubjectStatus_Maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_SubjectStatus_MaintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Hide-Show Component" actionCategory="General" id="103" action="Hide" conditionType="Parameter" dataType="Text" componentName="Student_SubjectStatus_Result" condition="Equal" name1="hidden_Staff_ID" sourceType1="URL" format1="&quot;&quot;" name2="&quot;&quot;" sourceType2="Expression"/>
			</Actions>
		</Event>
	</Events>
</Page>
