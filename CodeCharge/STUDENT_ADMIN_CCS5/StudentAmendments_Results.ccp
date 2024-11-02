<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" wizardSortingType="SimpleDir" isService="False">
	<Components>
		<IncludePage id="56" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="109" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="StudentAmendment.ccp" wizardUseTemplateBlock="False" PathID="Link1">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="57" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="UpdateForm" actionPage="TeacherAllocations_Results" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" PathID="UpdateForm">
			<Components>
				<Label id="65" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="69" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblEnrolmentYear">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="111" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblRowsPerPage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="110" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblYearLevel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="listTeacher" sourceType="Table" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" activeCollection="TableParameters" orderBy="STAFF_ID" boundColumn="staff_ID" textColumn="staffname" caption="Pastoral Care ID" PathID="UpdateFormlistTeacher">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters>
						<TableParameter id="86" conditionType="Expression" useIsNull="False" field="TEACHER_FLAG" dataType="Boolean" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="TEACHER_FLAG=1" parameterSource="TEACHER_FLAG"/>
						<TableParameter id="87" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS=1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="123" tableName="View_StaffList_Active_Inactive" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="124" tableName="View_StaffList_Active_Inactive" fieldName="staff_ID"/>
						<Field id="125" tableName="View_StaffList_Active_Inactive" fieldName="staffname"/>
					</Fields>
					<PKFields/>
				</ListBox>
				<Button id="64" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoTeacher" PathID="UpdateFormbutton_DoTeacher">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="73" name="listTeacher" errorMessage="Field - Pastoral Care ID\nOption must be selected from list"/>
								<Action actionName="Confirmation Message" actionCategory="General" id="120" message="Are you Sure you want to Change the Pastoral Care ID?"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="94"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="62" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSelections">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="71" name="lblStudentID" sourceType="URL" sourceName="s_STUDENT_ID_lowest"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="75" name="lblEnrolmentYear" sourceType="URL" sourceName="s_ENROLMENT_YEAR"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="76" name="lblRowsPerPage" sourceType="URL" sourceName="listRowsPerPage"/>
						<Action actionName="Declare Variable" actionCategory="General" id="119" name="strDisplayYearLevel" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Retrieve Value for Variable" actionCategory="General" id="112" name="strDisplayYearLevel" sourceType="URL" sourceName="s_YEAR_LEVEL"/>
						<Action actionName="Custom Code" actionCategory="General" id="113"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="114" name="lblYearLevel" sourceType="Variable" sourceName="strDisplayYearLevel"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="107" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="0" parameterSource="s_SUBJECT_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="108" parameterType="URL" variable="s_SUBJECT_ID" dataType="Integer" parameterSource="s_SUBJECT_ID" defaultValue="0" designDefaultValue="69"/>
			</SQLParameters>
			<JoinTables>
				<JoinTable id="105" tableName="SUBJECT" posWidth="160" posHeight="180" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="106" tableName="SUBJECT" fieldName="SUBJECT_TITLE"/>
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
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="select a.STUDENT_ID,b.SURNAME,b.FIRST_NAME,a.CAMPUS,a.YEAR_LEVEL,a.ENROLMENT_STATUS,a.PASTORAL_CARE_ID 
from STUDENT_ENROLMENT a, STUDENT b 
where a.STUDENT_ID=b.STUDENT_ID 
and a.STUDENT_ID&gt;={s_STUDENT_ID}
and a.ENROLMENT_YEAR ={s_ENROLMENT_YEAR}
and a.YEAR_LEVEL = (case when ({s_YEAR_LEVEL}=99) then a.YEAR_LEVEL else {s_YEAR_LEVEL} end ) 
and a.ENROLMENT_STATUS like '{s_ENROL_STATUS}'
and a.CAMPUS = 'D'
ORDER BY a.STUDENT_ID" activeCollection="SQLParameters" name="GridStudentList" pageSizeLimit="100" wizardCaption="List of STUD SUB INTERIM, STUD SUBJ FINAL, STUDENT, STUDENT SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Students found" parameterTypeListName="ParameterTypeList" wizardAllowSorting="True" PathID="GridStudentList">
			<Components>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUD_SUB_INTERIM_STUD_SUB_TotalRecords" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="34"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="35" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_SUBJECT_STUDENT_ID" wizardAddNbsp="False" PathID="GridStudentListSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="36" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="GridStudentListSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="37" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="GridStudentListSorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="118" visible="True" name="Sorter_YEAR_LEVEL" wizardSortingType="SimpleDir" wizardCaption="Year Level" column="YEAR_LEVEL" PathID="GridStudentListSorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="39" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="ENROLMENT_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSortingType="SimpleDir" wizardControl="SUBJ_ENROL_STATUS" wizardAddNbsp="False" PathID="GridStudentListSorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="42" visible="True" name="Sorter_STAFF_ID" column="PASTORAL_CARE_ID" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="GridStudentListSorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<CheckBox id="122" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="cbox" checkedValue="true" uncheckedValue="false" defaultValue="Unchecked" PathID="GridStudentListcbox">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="121" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="117" fieldSourceType="DBColumn" dataType="Text" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="ENROLMENT_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="PASTORAL_CARE_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="54" size="10" type="Centered" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="GridStudentListNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="44" styles="Row;AltRow" name="rowStyle"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="27" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="s_SUBJECT_ID"/>
				<TableParameter id="28" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="s_ENROLMENT_YEAR"/>
				<TableParameter id="29" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.STAFF_ID" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="And" parameterSource="s_STAFF_ID"/>
				<TableParameter id="30" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.SEMESTER" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="And" parameterSource="s_SEMESTER"/>
				<TableParameter id="31" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.SUBJ_ENROL_STATUS" dataType="Text" searchConditionType="BeginsWith" parameterType="URL" logicOperator="And" parameterSource="s_SUBJ_ENROL_STATUS"/>
				<TableParameter id="32" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.APPEARS_ON_VASS" dataType="Boolean" searchConditionType="BeginsWith" parameterType="URL" logicOperator="And" parameterSource="s_APPEARS_ON_VASS"/>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
			</Fields>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="95" parameterType="URL" variable="s_STUDENT_ID" dataType="Integer" parameterSource="s_STUDENT_ID_lowest" defaultValue="10000" designDefaultValue="11200"/>
				<SQLParameter id="96" parameterType="URL" variable="s_ENROLMENT_YEAR" dataType="Float" parameterSource="s_ENROLMENT_YEAR" designDefaultValue="2007" defaultValue="year(now())"/>
				<SQLParameter id="115" variable="s_ENROL_STATUS" parameterType="URL" defaultValue="&quot;[CEPD]&quot;" dataType="Text" designDefaultValue="&quot;[CEPDN]&quot;" parameterSource="s_ENROL_STATUS"/>
				<SQLParameter id="116" variable="s_YEAR_LEVEL" parameterType="URL" defaultValue="99" dataType="Text" designDefaultValue="99" parameterSource="s_YEAR_LEVEL"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentAmendments_Results.aspx" forShow="True" url="StudentAmendments_Results.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentAmendments_Results.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentAmendments_ResultsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
