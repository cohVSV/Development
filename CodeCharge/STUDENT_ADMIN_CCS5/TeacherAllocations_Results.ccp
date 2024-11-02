<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False" wizardSortingType="SimpleDir">
	<Components>
		<IncludePage id="56" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="109" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="TeacherAllocations.ccp" wizardUseTemplateBlock="False" PathID="Link1">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="57" sourceType="SQL" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="UpdateForm" actionPage="TeacherAllocations_Results" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="SELECT SUBJECT_TITLE 
FROM SUBJECT
WHERE SUBJECT_ID = {s_SUBJECT_ID} " PathID="UpdateForm">
			<Components>
				<Label id="65" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubjectID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="67" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubjectTitle" fieldSource="SUBJECT_TITLE">
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
				<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblTeacherID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="68" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSemester">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="70" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblOrderBy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="listTeacher" sourceType="Table" connection="connDECVPRODSQL2005" activeCollection="TableParameters" orderBy="STAFF_ID" boundColumn="STAFF_ID" textColumn="staffname" PathID="UpdateFormlistTeacher" dataSource="View_StaffList_Active_Inactive">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters>
						<TableParameter id="155" conditionType="Expression" useIsNull="False" dataType="Boolean" expression="TEACHER_FLAG=1" field="TEACHER_FLAG" logicOperator="And" parameterSource="TEACHER_FLAG" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="156" conditionType="Expression" useIsNull="False" expression="STATUS=1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="157" conditionType="Expression" useIsNull="False" expression="(STAFF_ID not in ('N-A', 'NO_SST', 'UNASSIGN')) and (STAFF_ID not like 'NSUBMIT%')" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="160" tableName="View_StaffList_Active_Inactive"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="158" fieldName="staff_ID" tableName="View_StaffList_Active_Inactive"/>
						<Field id="159" fieldName="staffname" tableName="View_StaffList_Active_Inactive"/>
					</Fields>
					<PKFields/>
				</ListBox>
				<Button id="64" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoTeacher" returnPage="TeacherAllocations_Results.ccp" PathID="UpdateFormbutton_DoTeacher">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="132"/>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="73" name="listTeacher" errorMessage="Must select a Teacher ID to Allocate New Teacher" eventType="Client"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="94" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="listappearsVASS" sourceType="ListOfValues" connection="connDECVPRODSQL2005" _valueOfList="1" _nameOfList="Yes" dataSource="0;No;1;Yes" defaultValue="0" PathID="UpdateFormlistappearsVASS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</ListBox>
				<Button id="80" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoChangeOnvASS" returnPage="TeacherAllocations_Results.ccp" PathID="UpdateFormbutton_DoChangeOnvASS">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="135"/>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="82" name="listappearsVASS" errorMessage="Must select the Appears on VASS to Allocate to a Student"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="111"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="listInterimResult" sourceType="SQL" connection="connDECVPRODSQL2005" dataSource="select PROGRESS_CODE, PROGRESS_CODE+' '+rtrim(PROGRESS_CODE_TITLE) as description
from PROGRESS_CODE
where STATUS=1 and PROGRESS_CODE_TITLE not like '%Final%'" activeCollection="TableParameters" boundColumn="PROGRESS_CODE" textColumn="description" PathID="UpdateFormlistInterimResult">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters>
						<TableParameter id="90" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS=1"/>
						<TableParameter id="124" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="PROGRESS_CODE_TITLE not like '%Final%'"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<PKFields/>
				</ListBox>
				<Button id="78" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoChangeInterimResult" returnPage="TeacherAllocations_Results.ccp" PathID="UpdateFormbutton_DoChangeInterimResult">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="134"/>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="79" name="listInterimResult" errorMessage="Must select an Interim Progress Code to Allocate a Result"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="110"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="listFinalResult" sourceType="SQL" connection="connDECVPRODSQL2005" dataSource="select PROGRESS_CODE, PROGRESS_CODE+' '+rtrim(PROGRESS_CODE_TITLE) as description
from PROGRESS_CODE
where STATUS=1 and PROGRESS_CODE_TITLE not like '%Interim%'" activeCollection="TableParameters" boundColumn="PROGRESS_CODE" textColumn="description" PathID="UpdateFormlistFinalResult">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters>
						<TableParameter id="93" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS=1"/>
						<TableParameter id="126" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="PROGRESS_CODE_TITLE not like '%Interim%'"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<PKFields/>
				</ListBox>
				<Button id="81" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoChangeFinalResult" returnPage="TeacherAllocations_Results.ccp" PathID="UpdateFormbutton_DoChangeFinalResult">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="83" name="listFinalResult" errorMessage="Must select a Final Progress Code to Allocate a Result"/>
								<Action actionName="Confirmation Message" actionCategory="General" id="127" message="Update Final Result for Selected students?"/>
								<Action actionName="Custom Code" actionCategory="General" id="128"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="112"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="115" fieldSourceType="CodeExpression" dataType="Text" name="hidden_LAST_ALTERED_BY" fieldSource="DBUtility.UserId.ToString()" PathID="UpdateFormhidden_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="62" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSelections">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="129" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoTeacherSST" returnPage="TeacherAllocations_Results.ccp" PathID="UpdateFormbutton_DoTeacherSST">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="133"/>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="130" name="listTeacher" errorMessage="Must select a Teacher ID to Allocate New Teacher" eventType="Client"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="131"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="71" name="lblSubjectID" sourceType="URL" sourceName="s_SUBJECT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="72" name="lblTeacherID" sourceType="URL" sourceName="s_STAFF_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="74" name="lblSemester" sourceType="URL" sourceName="s_SEMESTER"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="75" name="lblEnrolmentYear" sourceType="URL" sourceName="s_ENROLMENT_YEAR"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="76" name="lblOrderBy" sourceType="URL" sourceName="sortOrder"/>
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
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="SELECT STUDENT_SUBJECT.STUDENT_ID AS STUDENT_SUBJECT_STUDENT_ID, STAFF_ID, SEMESTER, SUBJ_ENROL_STATUS, APPEARS_ON_VASS, INTERIM_PROGRESS_CODE,
FINAL_PROGRESS_CODE, SURNAME, FIRST_NAME , rtrim(SCHOOL_NAME) as ATTENDING_SCHOOL_NAME
FROM (((STUDENT_SUBJECT INNER JOIN STUD_SUB_INTERIM ON
STUDENT_SUBJECT.STUDENT_ID = STUD_SUB_INTERIM.STUDENT_ID AND STUDENT_SUBJECT.ENROLMENT_YEAR = STUD_SUB_INTERIM.ENROLMENT_YEAR AND STUDENT_SUBJECT.SUBJECT_ID = STUD_SUB_INTERIM.SUBJECT_ID) 
	INNER JOIN STUD_SUBJ_FINAL ON STUDENT_SUBJECT.STUDENT_ID = STUD_SUBJ_FINAL.STUDENT_ID AND STUDENT_SUBJECT.ENROLMENT_YEAR = STUD_SUBJ_FINAL.ENROLMENT_YEAR AND STUDENT_SUBJECT.SUBJECT_ID = STUD_SUBJ_FINAL.SUBJECT_ID) 
	INNER JOIN STUDENT ON STUDENT_SUBJECT.STUDENT_ID = STUDENT.STUDENT_ID)
	join SCHOOL on STUDENT.ATTENDING_SCHOOL_ID = SCHOOL.SCHOOL_ID
WHERE STUDENT_SUBJECT.SUBJECT_ID = {s_SUBJECT_ID}
AND STUDENT_SUBJECT.ENROLMENT_YEAR = {s_ENROLMENT_YEAR}
AND STUDENT_SUBJECT.STAFF_ID LIKE '%{s_STAFF_ID}%'
AND STUDENT_SUBJECT.SEMESTER LIKE '%{s_SEMESTER}%'
AND STUDENT_SUBJECT.SUBJ_ENROL_STATUS LIKE '{s_SUBJ_ENROL_STATUS}'
AND STUDENT_SUBJECT.APPEARS_ON_VASS in ({s_APPEARS_ON_VASS})" activeCollection="SQLParameters" name="GridStudentList" pageSizeLimit="100" wizardCaption="List of STUD SUB INTERIM, STUD SUBJ FINAL, STUDENT, STUDENT SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Students found" parameterTypeListName="ParameterTypeList" PathID="GridStudentList" wizardAllowSorting="True">
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
				<Sorter id="35" visible="True" name="Sorter_STUDENT_SUBJECT_STUDENT_ID" column="STUDENT_SUBJECT.STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_SUBJECT_STUDENT_ID" wizardAddNbsp="False" PathID="GridStudentListSorter_STUDENT_SUBJECT_STUDENT_ID">
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
				<Sorter id="39" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSortingType="SimpleDir" wizardControl="SUBJ_ENROL_STATUS" wizardAddNbsp="False" PathID="GridStudentListSorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="42" visible="True" name="Sorter_STAFF_ID" column="STAFF_ID" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="GridStudentListSorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<CheckBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="cbox" checkedValue="true" uncheckedValue="false" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="45" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_SUBJECT_STUDENT_ID" fieldSource="STUDENT_SUBJECT_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="103" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ID" fieldSource="STUDENT_SUBJECT_STUDENT_ID">
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
				<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="INTERIM_PROGRESS_CODE" fieldSource="INTERIM_PROGRESS_CODE" wizardCaption="INTERIM PROGRESS CODE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="51" fieldSourceType="DBColumn" dataType="Text" html="False" name="FINAL_PROGRESS_CODE" fieldSource="FINAL_PROGRESS_CODE" wizardCaption="FINAL PROGRESS CODE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="53" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="APPEARS_ON_VASS" fieldSource="APPEARS_ON_VASS" wizardCaption="APPEARS ON VASS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
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
				<Sorter id="118" visible="True" name="Sorter_ATTENDING_SCHOOL_NAME" wizardSortingType="SimpleDir" PathID="GridStudentListSorter_ATTENDING_SCHOOL_NAME" wizardCaption="Attending School" column="ATTENDING_SCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="119" fieldSourceType="DBColumn" dataType="Text" html="False" name="ATTENDING_SCHOOL_NAME" PathID="GridStudentListATTENDING_SCHOOL_NAME" fieldSource="ATTENDING_SCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
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
				<SQLParameter id="95" parameterType="URL" variable="s_SUBJECT_ID" dataType="Integer" parameterSource="s_SUBJECT_ID" defaultValue="0" designDefaultValue="502"/>
				<SQLParameter id="96" parameterType="URL" variable="s_ENROLMENT_YEAR" dataType="Float" parameterSource="s_ENROLMENT_YEAR" designDefaultValue="2008" defaultValue="year(now())"/>
				<SQLParameter id="97" parameterType="URL" variable="s_STAFF_ID" dataType="Text" parameterSource="s_STAFF_ID" defaultValue="&quot;&quot;"/>
				<SQLParameter id="98" parameterType="URL" variable="s_SEMESTER" dataType="Text" parameterSource="s_SEMESTER" defaultValue="&quot;&quot;" designDefaultValue="1"/>
				<SQLParameter id="99" parameterType="URL" variable="s_SUBJ_ENROL_STATUS" dataType="Text" parameterSource="s_SUBJ_ENROL_STATUS" defaultValue="&quot;[CEPD]&quot;" designDefaultValue="&quot;[CEPD]&quot;"/>
				<SQLParameter id="100" parameterType="URL" variable="s_APPEARS_ON_VASS" dataType="Text" parameterSource="s_APPEARS_ON_VASS" defaultValue="&quot;1,0&quot;" designDefaultValue="&quot;1,0&quot;"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Label id="114" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblDEBUG">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="TeacherAllocations_Results.aspx" forShow="True" url="TeacherAllocations_Results.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="TeacherAllocations_Results.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="TeacherAllocations_ResultsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
