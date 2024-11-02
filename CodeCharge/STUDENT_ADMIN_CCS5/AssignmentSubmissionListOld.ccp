<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="ASSIGNMENT_SUBMISSION, SUBJECT, ASSIGNMENT" activeCollection="TableParameters" name="ASSIGNMENT_SUBMISSION_SUB" pageSizeLimit="100" wizardCaption="List of ASSIGNMENT SUBMISSION, SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Assignments found" PathID="ASSIGNMENT_SUBMISSION_SUB" pasteActions="pasteActions" editableComponentTypeString="Grid" orderBy="ASSIGNMENT_SUBMISSION.SUBJECT_ID, ASSIGNMENT_SUBMISSION.ASSIGNMENT_ID, ASSIGNMENT_SUBMISSION.SUBMISSION_ID" wizardAllowSorting="True">
			<Components>
				<Label id="40" fieldSourceType="CodeExpression" dataType="Text" html="False" name="lblStudent" fieldSource="request.querystring(&quot;STUDENT_ID&quot;)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="CodeExpression" dataType="Text" html="False" name="lblYear" fieldSource="request.querystring(&quot;ENROLMENT_YEAR&quot;)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="ASSIGNMENT_SUBMISSION_SUB_TotalRecords" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="18" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="19" visible="True" name="Sorter_ASSIGNMENT_SUBMISSION_SUBJECT_ID" column="ASSIGNMENT_SUBMISSION.SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_SUBMISSION_SUBJECT_ID" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_ASSIGNMENT_SUBMISSION_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_ASSIGNMENT_ID" column="ASSIGNMENT_ID" wizardCaption="ASSIGNMENT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_ID" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="21" visible="True" name="Sorter_SUBMISSION_ID" column="SUBMISSION_ID" wizardCaption="SUBMISSION ID" wizardSortingType="SimpleDir" wizardControl="SUBMISSION_ID" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_SUBMISSION_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="22" visible="True" name="Sorter_SUBJECT_TITLE" column="SUBJECT_TITLE" wizardCaption="TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="23" visible="True" name="Sorter_received_date" column="ASSIGNMENT_SUBMISSION.RECEIVED_DATE" wizardCaption="Received Date" wizardSortingType="SimpleDir" wizardControl="received_date" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_received_date" connection="connDECVPRODSQL2005">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="24" visible="True" name="Sorter_returned_date" column="ASSIGNMENT_SUBMISSION.returned_date" wizardCaption="Returned Date" wizardSortingType="SimpleDir" wizardControl="returned_date" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_returned_date">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="25" visible="True" name="Sorter_STAFF_ID" column="STAFF_ID" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_COMMENTS" column="COMMENTS" wizardCaption="COMMENTS" wizardSortingType="SimpleDir" wizardControl="COMMENTS" wizardAddNbsp="False" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_COMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="28" fieldSourceType="DBColumn" dataType="Integer" html="False" name="ASSIGNMENT_SUBMISSION_SUBJECT_ID" fieldSource="ASSIGNMENT_SUBMISSION_SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Integer" html="False" name="ASSIGNMENT_ID" fieldSource="ASSIGNMENT_SUBMISSION_ASSIGNMENT_ID" wizardCaption="ASSIGNMENT ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBMISSION_ID" fieldSource="SUBMISSION_ID" wizardCaption="SUBMISSION ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" name="received_date" fieldSource="received_date" wizardCaption="Received Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" name="returned_date" fieldSource="returned_date" wizardCaption="Returned Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENTS" fieldSource="COMMENTS" wizardCaption="COMMENTS" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="36" size="10" type="Centered" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="ASSIGNMENT_SUBMISSION_SUBNavigator">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="38" action="Hide" conditionType="Expression" dataType="Text" componentName="Navigator" condition="PagesCount &lt; 2" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="95" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="ASSIGNMENT_SUBMISSION_LAST_ALTERED_BY" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="96" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="ASSIGNMENT_SUBMISSION_LAST_ALTERED_DATE" wizardCaption="Returned Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="60" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_ReturnAssignment" PathID="ASSIGNMENT_SUBMISSION_SUBLink_ReturnAssignment" wizardUseTemplateBlock="True" hrefSource="AssignmentSubmissionListOld.ccp" linkProperties="{'textSource':'edit','textSourceDB':'','hrefSource':'AssignmentSubmissionListOld.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'ASSIGNMENT_SUBMISSION_SUBJECT_ID','parameterName':'SUBJECT_ID'},'1':{'sourceType':'DataField','parameterSource':'ASSIGNMENT_SUBMISSION_ASSIGNMENT_ID','parameterName':'ASSIGNMENT_ID'},'2':{'sourceType':'DataField','parameterSource':'SUBMISSION_ID','parameterName':'SUBMISSION_ID'},'3':{'sourceType':'DataField','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID'},'4':{'sourceType':'DataField','parameterSource':'ENROLMENT_YEAR','parameterName':'ENROLMENT_YEAR'},'length':5,'objectType':'linkParameters'}}">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="61" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ID" source="ASSIGNMENT_SUBMISSION_SUBJECT_ID"/>
						<LinkParameter id="62" sourceType="DataField" format="yyyy-mm-dd" name="ASSIGNMENT_ID" source="ASSIGNMENT_SUBMISSION_ASSIGNMENT_ID"/>
						<LinkParameter id="63" sourceType="DataField" format="yyyy-mm-dd" name="SUBMISSION_ID" source="SUBMISSION_ID"/>
						<LinkParameter id="64" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="65" sourceType="DataField" format="yyyy-mm-dd" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="186" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="DESCRIPTION" PathID="ASSIGNMENT_SUBMISSION_SUBDESCRIPTION" fieldSource="DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="187" visible="True" name="Sorter_DESCRIPTION" wizardSortingType="SimpleDir" PathID="ASSIGNMENT_SUBMISSION_SUBSorter_DESCRIPTION" wizardCaption="Description" column="DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="226" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkAddAssignment" PathID="ASSIGNMENT_SUBMISSION_SUBlinkAddAssignment" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Add Assignment','textSourceDB':'','hrefSource':'','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'Expression','parameterSource':'true','parameterName':'ADD_ASSIGNMENT'},'length':1,'objectType':'linkParameters'}}" removeParameters="ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="227" sourceType="Expression" format="yyyy-mm-dd" name="ADD_ASSIGNMENT" source="true"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="27" styles="Row;AltRow" name="rowStyle" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="163" conditionType="Parameter" useIsNull="False" dataType="Float" field="ASSIGNMENT_SUBMISSION.STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="164" conditionType="Parameter" useIsNull="False" dataType="Float" field="ASSIGNMENT_SUBMISSION.ENROLMENT_YEAR" logicOperator="And" parameterSource="ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="231" tableName="ASSIGNMENT_SUBMISSION"/>
				<JoinTable id="232" tableName="SUBJECT"/>
				<JoinTable id="233" tableName="ASSIGNMENT"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="160" conditionType="Equal" fieldLeft="ASSIGNMENT_SUBMISSION.SUBJECT_ID" fieldRight="SUBJECT.SUBJECT_ID" joinType="inner" tableLeft="ASSIGNMENT_SUBMISSION" tableRight="SUBJECT"/>
				<JoinTable2 id="161" fieldLeft="ASSIGNMENT_SUBMISSION.ASSIGNMENT_ID" fieldRight="ASSIGNMENT.ASSIGNMENT_ID" joinType="inner" tableLeft="ASSIGNMENT_SUBMISSION" tableRight="ASSIGNMENT"/>
				<JoinTable2 id="162" conditionType="Equal" fieldLeft="ASSIGNMENT_SUBMISSION.SUBJECT_ID" fieldRight="ASSIGNMENT.SUBJECT_ID" joinType="inner" tableLeft="ASSIGNMENT_SUBMISSION" tableRight="ASSIGNMENT"/>
			</JoinLinks>
			<Fields>
				<Field id="165" alias="ASSIGNMENT_SUBMISSION_SUBJECT_ID" fieldName="ASSIGNMENT_SUBMISSION.SUBJECT_ID" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="166" alias="ASSIGNMENT_SUBMISSION_ASSIGNMENT_ID" fieldName="ASSIGNMENT_SUBMISSION.ASSIGNMENT_ID" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="167" fieldName="SUBMISSION_ID" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="168" fieldName="SUBJECT_TITLE" tableName="SUBJECT"/>
				<Field id="169" alias="received_date" fieldName="isnull(convert(char(8),RECEIVED_DATE,3), ' ')" isExpression="True"/>
				<Field id="170" alias="returned_date" fieldName="isnull(convert(char(8),RETURNED_DATE,3), ' ')" isExpression="True"/>
				<Field id="171" fieldName="STAFF_ID" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="172" fieldName="COMMENTS" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="173" fieldName="STUDENT_ID" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="174" fieldName="ENROLMENT_YEAR" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="175" alias="ASSIGNMENT_SUBMISSION_LAST_ALTERED_BY" fieldName="ASSIGNMENT_SUBMISSION.LAST_ALTERED_BY" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="176" alias="ASSIGNMENT_SUBMISSION_LAST_ALTERED_DATE" fieldName="ASSIGNMENT_SUBMISSION.LAST_ALTERED_DATE" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="177" fieldName="DESCRIPTION" tableName="ASSIGNMENT"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Link id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_BacktoPastoralList" PathID="Link_BacktoPastoralList" hrefSource="PastoralTeacher_StudentList.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Panel id="46" visible="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<IncludePage id="47" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="48"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
		<Link id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_Menu" hrefSource="Menu.ccp" wizardUseTemplateBlock="False" PathID="link_Menu">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_SearchRequest" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False" PathID="Link_SearchRequest">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_Assignments" hrefSource="AssignmentSubmissionListOld.ccp" wizardUseTemplateBlock="False" PathID="link_Assignments">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link10" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="Link10" hrefSource="Send_SMS_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link6" PathID="Link6" hrefSource="Student_Future_Intentions.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link5" PathID="Link5" hrefSource="Student_Comments_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="66" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="ASSIGNMENT_SUBMISSION" dataSource="ASSIGNMENT_SUBMISSION" errorSummator="Error" wizardCaption="Add/Edit ASSIGNMENT SUBMISSION " wizardFormMethod="post" PathID="ASSIGNMENT_SUBMISSION" activeCollection="TableParameters" removeParameters="ASSIGNMENT_ID; SUBMISSION_ID; SUBJECT_ID" pasteActions="pasteActions" returnPage="AssignmentSubmissionListOld.ccp">
			<Components>
				<Button id="67" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ASSIGNMENT_SUBMISSIONButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="68" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ASSIGNMENT_SUBMISSIONButton_Cancel" removeParameters="ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="69" fieldSourceType="DBColumn" dataType="Date" html="False" name="RECEIVED_DATE" fieldSource="RECEIVED_DATE" required="True" caption="RECEIVED DATE" wizardCaption="RECEIVED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONRECEIVED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="70" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="RETURNED_DATE" fieldSource="RETURNED_DATE" required="True" caption="RETURNED DATE" wizardCaption="RETURNED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONRETURNED_DATE" defaultValue="Now()" format="dd/mm/yyyy">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="100" eventType="Server"/>
							</Actions>
						</Event>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="104" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="71" name="DatePicker_RETURNED_DATE" control="RETURNED_DATE" wizardSatellite="True" wizardControl="RETURNED_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="ASSIGNMENT_SUBMISSIONDatePicker_RETURNED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<ListBox id="72" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" required="True" caption="MARKER ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="ASSIGNMENT_SUBMISSIONSTAFF_ID" dataSource="View_StaffList_Active_Inactive" connection="connDECVPRODSQL2005" activeCollection="TableParameters" boundColumn="staff_ID" textColumn="staffname" defaultValue="DBUtility.UserLogin.ToUpper()">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="101" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="73" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="status = 1"/>
						<TableParameter id="74" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="teacher_flag = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="75" tableName="View_StaffList_Active_Inactive" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextArea id="76" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENTS" fieldSource="COMMENTS" required="False" caption="COMMENT" wizardCaption="COMMENTS" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="ASSIGNMENT_SUBMISSIONCOMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Hidden id="77" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="78" fieldSourceType="DBColumn" dataType="Float" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" required="True" caption="ENROLMENT YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="79" fieldSourceType="DBColumn" dataType="Integer" name="SUBJECT_ID" fieldSource="SUBJECT_ID" required="True" caption="SUBJECT ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONSUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="80" fieldSourceType="DBColumn" dataType="Integer" name="ASSIGNMENT_ID" fieldSource="ASSIGNMENT_ID" required="True" caption="ASSIGNMENT ID" wizardCaption="ASSIGNMENT ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="81" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="82" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSIONLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="91" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblAssignment" PathID="ASSIGNMENT_SUBMISSIONlblAssignment" fieldSource="ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="92" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubmission" PathID="ASSIGNMENT_SUBMISSIONlblSubmission" fieldSource="SUBMISSION_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="102" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblDefaulted_Marker" PathID="ASSIGNMENT_SUBMISSIONlblDefaulted_Marker" defaultValue="&quot;&lt;em&gt;auto selected&lt;/em&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="103" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblDefaulted_Returned" PathID="ASSIGNMENT_SUBMISSIONlblDefaulted_Returned" defaultValue="&quot;&lt;em&gt;auto selected&lt;/em&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="105" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblRECEIVED_DATE" PathID="ASSIGNMENT_SUBMISSIONlblRECEIVED_DATE" fieldSource="RECEIVED_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="83" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="84" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="93" action="Hide" conditionType="Parameter" dataType="Text" componentName="ASSIGNMENT_SUBMISSION" condition="Equal" sourceType1="URL" name1="ASSIGNMENT_ID" sourceType2="Expression" name2="&quot;&quot;" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="85" conditionType="Parameter" useIsNull="False" field="ASSIGNMENT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" parameterSource="ASSIGNMENT_ID"/>
				<TableParameter id="86" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="87" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="88" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SUBJECT_ID"/>
				<TableParameter id="89" conditionType="Parameter" useIsNull="False" field="SUBMISSION_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SUBMISSION_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="188" tableName="ASSIGNMENT_SUBMISSION"/>
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
		<Record id="192" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="RECEIVE_ASSIGNMENT" dataSource="ASSIGNMENT_SUBMISSION" errorSummator="Error" wizardCaption="Add/Edit ASSIGNMENT SUBMISSION " wizardFormMethod="post" PathID="RECEIVE_ASSIGNMENT" activeCollection="ISPParameters" removeParameters="ASSIGNMENT_ID; SUBMISSION_ID; SUBJECT_ID;ADD_ASSIGNMENT" pasteActions="pasteActions" visible="Dynamic" generateDiv="False" features="(assigned)" customInsertType="Procedure" customInsert="sp_upd_assignment_receipt;1" parameterTypeListName="ParameterTypeList" returnPage="AssignmentSubmissionListOld.ccp">
			<Components>
				<Button id="193" urlType="Relative" enableValidation="True" isDefault="True" name="Button_Insert" operation="Insert" wizardCaption="Submit" PathID="RECEIVE_ASSIGNMENTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="194" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="RECEIVE_ASSIGNMENTButton_Cancel" removeParameters="ADD_ASSIGNMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="206" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="RECEIVE_ASSIGNMENTSTUDENT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="268" name="STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="207" fieldSourceType="DBColumn" dataType="Float" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" required="True" caption="ENROLMENT YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="RECEIVE_ASSIGNMENTENROLMENT_YEAR">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="269" name="ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="210" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="RECEIVE_ASSIGNMENTLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="211" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="RECEIVE_ASSIGNMENTLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="228" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="listSUBJECTS" wizardEmptyCaption="Select Value" PathID="RECEIVE_ASSIGNMENTlistSUBJECTS" dataSource="select * 
from view_ReportParams_Subjects sub
where subject_id in (select subject_id from student_subject where student_id = {STUDENT_ID} and  enrolment_year = year(getdate()) and SUBJ_ENROL_STATUS not in ('W') )
ORDER BY SUBJECT_TITLE" connection="connDECVPRODSQL2005" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel" caption="Student Subject" fieldSource="SUBJECT_ID" required="True">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="270" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
					</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<ListBox id="234" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="listASSIGNMENTS" wizardEmptyCaption="Select Value" PathID="RECEIVE_ASSIGNMENTlistASSIGNMENTS" fieldSource="ASSIGNMENT_ID" required="True" caption="Assignment" connection="connDECVPRODSQL2005" orderBy="SUBJECT_ID, ASSIGNMENT_ID" features="(assigned)" boundColumn="ASSIGNMENT_ID" textColumn="displaytext" dataSource="ASSIGNMENT">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="303" conditionType="Expression" useIsNull="False" dataType="Boolean" expression="STATUS = 1" field="STATUS" logicOperator="And" parameterSource="STATUS" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="302" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="ASSIGNMENT"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="304" fieldName="SUBJECT_ID" tableName="ASSIGNMENT"/>
						<Field id="305" fieldName="ASSIGNMENT_ID" tableName="ASSIGNMENT"/>
						<Field id="306" alias="displaytext" fieldName="convert(varchar(4), assignment_id) + ' ' + rtrim(isnull(DESCRIPTION,''))" isExpression="True"/>
					</Fields>
					<PKFields>
						<PKField id="307" dataType="Integer" fieldName="ASSIGNMENT_ID" tableName="ASSIGNMENT"/>
					</PKFields>
					<Attributes/>
					<Features>
						<PTDependentListBox id="247" enabled="True" name="PTDependentListBox1" servicePage="services/AssignmentSubmissionList_RECEIVE_ASSIGNMENT_listASSIGNMENTS_PTDependentListBox1.ccp" masterListbox="listSUBJECTS" category="Prototype">
							<Components/>
							<Events/>
							<Features/>
						</PTDependentListBox>
					</Features>
				</ListBox>
				<Image id="248" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ajaxBusy" PathID="RECEIVE_ASSIGNMENTajaxBusy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="219" action="Hide" conditionType="Parameter" dataType="Text" componentName="RECEIVE_ASSIGNMENT" condition="Equal" sourceType1="URL" name1="ADD_ASSIGNMENT" sourceType2="Expression" name2="&quot;&quot;" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="217" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="218" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="220" conditionType="Parameter" useIsNull="False" field="ASSIGNMENT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" parameterSource="ASSIGNMENT_ID"/>
				<TableParameter id="221" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="222" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="223" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SUBJECT_ID"/>
				<TableParameter id="224" conditionType="Parameter" useIsNull="False" field="SUBMISSION_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SUBMISSION_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="237" tableName="ASSIGNMENT_SUBMISSION"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key1" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key2" parameterName="@pnStudentID" parameterSource="STUDENT_ID" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key3" parameterName="@pnEnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key4" parameterName="@psiSubjectID" parameterSource="listSUBJECTS" dataType="SmallInt" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="5"/>
				<SPParameter id="Key5" parameterName="@psiAssignmentID" parameterSource="listASSIGNMENTS" dataType="SmallInt" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="5"/>
				<SPParameter id="Key6" parameterName="@last_altered_by" parameterSource="LAST_ALTERED_BY" dataType="Char" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="0"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="261" field="RECEIVED_DATE" dataType="Date" parameterType="Control" parameterSource="RECEIVED_DATE" format="dd/mm/yyyy"/>
				<CustomParameter id="262" field="STUDENT_ID" dataType="Float" parameterType="Control" parameterSource="STUDENT_ID"/>
				<CustomParameter id="263" field="ENROLMENT_YEAR" dataType="Float" parameterType="Control" parameterSource="ENROLMENT_YEAR"/>
				<CustomParameter id="264" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="LAST_ALTERED_BY"/>
				<CustomParameter id="265" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" parameterSource="LAST_ALTERED_DATE"/>
				<CustomParameter id="266" field="SUBJECT_ID" dataType="Text" parameterType="Control" parameterSource="listSUBJECTS"/>
				<CustomParameter id="267" field="ASSIGNMENT_ID" dataType="Text" parameterType="Control" parameterSource="listASSIGNMENTS"/>
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
				<HideShow id="249" enabled="True" name="HideShow_ajaxbusy" category="Ajax" featureNameChanged="No" controlId="RECEIVE_ASSIGNMENTajaxBusy" ccsIdsOnly="False" show="RECEIVE_ASSIGNMENTlistSUBJECTS.onchange;" hide="RECEIVE_ASSIGNMENT.onload;RECEIVE_ASSIGNMENTlistASSIGNMENTSPTDependentListBox1.onsuccess;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="250" name="RECEIVE_ASSIGNMENTlistSUBJECTS.onchange" relProperty="show">
							<Items>
								<ControlPointItem id="251" name="AssignmentSubmissionList" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="252" name="RECEIVE_ASSIGNMENT" ccpId="192" type="Record" isFeature="False" PathID="RECEIVE_ASSIGNMENT"/>
								<ControlPointItem id="253" name="listSUBJECTS" ccpId="228" type="ListBox" isFeature="False" PathID="RECEIVE_ASSIGNMENTlistSUBJECTS"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="286" name="RECEIVE_ASSIGNMENT.onload" relProperty="hide">
							<Items>
								<ControlPointItem id="287" name="AssignmentSubmissionList" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="288" name="RECEIVE_ASSIGNMENT" ccpId="192" type="Record" isFeature="False" PathID="RECEIVE_ASSIGNMENT"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="289" name="RECEIVE_ASSIGNMENTlistASSIGNMENTSPTDependentListBox1.onsuccess" relProperty="hide">
							<Items>
								<ControlPointItem id="290" name="AssignmentSubmissionList" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="291" name="RECEIVE_ASSIGNMENT" ccpId="192" type="Record" isFeature="False" PathID="RECEIVE_ASSIGNMENT"/>
								<ControlPointItem id="292" name="listASSIGNMENTS" ccpId="234" type="ListBox" isFeature="False" PathID="RECEIVE_ASSIGNMENTlistASSIGNMENTS"/>
								<ControlPointItem id="293" name="PTDependentListBox1" ccpId="247" type="PTDependentListBox" isFeature="True" PathID="RECEIVE_ASSIGNMENTlistASSIGNMENTSPTDependentListBox1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Features/>
				</HideShow>
			</Features>
			<PKFields/>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="AssignmentSubmissionListOld.aspx" forShow="True" url="AssignmentSubmissionListOld.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="AssignmentSubmissionListOld.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="AssignmentSubmissionListOldDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
