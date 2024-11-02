<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0" wizardSortingType="SimpleDir">
	<Components>
		<IncludePage id="7" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="CLASS_LIST_Panel" returnPage="Student_ClassList_Extender.ccp" PathID="CLASS_LIST_Panel" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
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
AND ( STUDENT_SUBJECT.STAFF_ID = '{STAFF_ID}')
AND ( SUBJECT.EXTENDABLE_FLAG = 1)" activeCollection="SQLParameters" required="True" caption="SUBJECT" parameterTypeListName="ParameterTypeList">
					<Components/>
					<Events>
					</Events>
					<TableParameters>
					</TableParameters>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="263" dataType="Text" designDefaultValue="JWARD" parameterSource="DBUtility.UserLogin.ToUpper" parameterType="Expression" variable="STAFF_ID"/>
</SQLParameters>
					<JoinTables>
					</JoinTables>
					<JoinLinks>
					</JoinLinks>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="ClearParameters" hrefSource="Student_ClassList_Extender.ccp" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="CLASS_LIST_PanelClearParameters" wizardUseTemplateBlock="False" removeParameters="List_Subject_id">
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
		<EditableGrid id="210" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="False" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="120" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="EditGrid_ExtendStudents" connection="connDECVPRODSQL2005" dataSource="view_Class_Contact_List_04022011" pageSizeLimit="120" wizardGridPageSize="False" wizardUseSearch="False" allowCancel="False" wizardSubmitConfirmation="True" wizardCaption="Extend Students" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Student Details found!" wizardGridKey=" " wizardGridPaging="Simple" wizardAddNbsp="False" wizardTotalRecords="False" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="EditGrid_ExtendStudents" deleteControl="CheckBox_Delete" customDeleteType="Procedure" parameterTypeListName="CustomTableParameterTypeList" customDelete="spu_ExtendStudentSubject;1" activeCollection="DSPParameters">
			<Components>
				<Sorter id="225" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="EditGrid_ExtendStudentsSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="226" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="EditGrid_ExtendStudentsSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="227" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="EditGrid_ExtendStudentsSorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="229" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSortingType="SimpleDir" wizardControl="SUBJ_ENROL_STATUS" wizardAddNbsp="False" PathID="EditGrid_ExtendStudentsSorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="230" visible="True" name="Sorter_SEMESTER" column="SEMESTER" wizardCaption="SEMESTER" wizardSortingType="SimpleDir" wizardControl="SEMESTER" wizardAddNbsp="False" PathID="EditGrid_ExtendStudentsSorter_SEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="231" visible="True" name="Sorter_LAd" column="LAd" wizardCaption="LAd" wizardSortingType="SimpleDir" wizardControl="LAd" wizardAddNbsp="False" PathID="EditGrid_ExtendStudentsSorter_LAd">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="232" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="STUDENT ID" PathID="EditGrid_ExtendStudentsSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="233" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SURNAME" PathID="EditGrid_ExtendStudentsSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="234" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="FIRST NAME" PathID="EditGrid_ExtendStudentsFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="236" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJ ENROL STATUS" PathID="EditGrid_ExtendStudentsSUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="237" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SEMESTER" fieldSource="SEMESTER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SEMESTER" PathID="EditGrid_ExtendStudentsSEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="238" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAd" fieldSource="LAd" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="LAd" PathID="EditGrid_ExtendStudentsLAd">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="239" visible="Dynamic" fieldSourceType="CodeExpression" dataType="Boolean" defaultValue="Unchecked" name="CheckBox_Delete" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardAddNbsp="True" PathID="EditGrid_ExtendStudentsCheckBox_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Navigator id="240" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="False" wizardImagesScheme="Blueprint">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="241" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="EditGrid_ExtendStudentsButton_Submit">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="242" message="Extend Selected Students?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="243" fieldSourceType="CodeExpression" dataType="Integer" html="False" name="lblCnt" PathID="EditGrid_ExtendStudentslblCnt">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="244" name="lblCnt" sourceType="Variable" sourceName="EditGrid_ExtendStudentsCurrentRowNumber" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="259" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lblHintExtend" PathID="EditGrid_ExtendStudentslblHintExtend">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="260" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lblHintPending" PathID="EditGrid_ExtendStudentslblHintPending">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="257" action="Hide" conditionType="Parameter" dataType="Text" componentName="EditGrid_ExtendStudents" condition="Equal" sourceType1="URL" name1="List_Subject_id" name2="&quot;&quot;" sourceType2="Expression"/>
						<Action actionName="Custom Code" actionCategory="General" id="261"/>
</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="278" conditionType="Expression" useIsNull="False" expression="ENROLMENT_YEAR=year(getdate())" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="279" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="0" field="SUBJECT_ID" logicOperator="And" parameterSource="List_Subject_id" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="280" conditionType="Expression" useIsNull="False" expression="SEMESTER ='1'" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="281" conditionType="Parameter" useIsNull="False" dataType="Text" defaultValue="&quot;ZZZ&quot;" field="STAFF_ID" logicOperator="And" parameterSource="DBUtility.UserLogin.ToUpper" parameterType="Expression" searchConditionType="Equal"/>
</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="277" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="view_Class_Contact_List_04022011"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="282" fieldName="STUDENT_ID" tableName="view_Class_Contact_List_04022011"/>
<Field id="283" fieldName="SURNAME" tableName="view_Class_Contact_List_04022011"/>
<Field id="284" fieldName="FIRST_NAME" tableName="view_Class_Contact_List_04022011"/>
<Field id="285" fieldName="SUBJECT_ID" tableName="view_Class_Contact_List_04022011"/>
<Field id="286" fieldName="SUBJ_ENROL_STATUS" tableName="view_Class_Contact_List_04022011"/>
<Field id="287" fieldName="SEMESTER" tableName="view_Class_Contact_List_04022011"/>
<Field id="288" fieldName="LAd" tableName="view_Class_Contact_List_04022011"/>
</Fields>
			<PKFields>
				<PKField id="289" dataType="Text" fieldName="SEMESTER" tableName="view_Class_Contact_List_04022011"/>
</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements/>
			<DSPParameters>
				<SPParameter id="Key2" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="DataSourceColumn" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key3" parameterName="@SUBJECT_ID" parameterSource="SUBJECT_ID" dataType="Int" parameterType="DataSourceColumn" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key4" parameterName="@LAST_ALTERED_BY" parameterSource="DBUtility.UserId.ToString()" dataType="Char" parameterType="Expression" dataSize="12" direction="Input" scale="0" precision="0"/>
				<SPParameter id="Key1" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
			</DSPParameters>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_ClassList_Extender.aspx" forShow="True" url="Student_ClassList_Extender.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_ClassList_Extender.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_ClassList_ExtenderDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
