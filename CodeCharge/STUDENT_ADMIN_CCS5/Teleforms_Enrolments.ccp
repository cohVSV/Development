<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="56" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="57" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="UpdateForm" actionPage="TeacherAllocations_Results" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" PathID="UpdateForm">
			<Components>
				<Button id="81" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoDelete" returnPage="Teleforms_Enrolments.ccp" PathID="UpdateFormbutton_DoDelete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="112"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="116" message="Sure you want to DELETE the selected Students from Teleforms?\n\n(Student Database will not be affected)"/>
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
				<Button id="78" urlType="Relative" enableValidation="True" isDefault="False" name="button_DoEnrolment" returnPage="Teleforms_Enrolments.ccp" PathID="UpdateFormbutton_DoEnrolment">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="110" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
			</Events>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="108" parameterType="URL" variable="s_SUBJECT_ID" dataType="Integer" parameterSource="s_SUBJECT_ID" defaultValue="0" designDefaultValue="69"/>
			</SQLParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields>
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
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="SELECT STUDENT_ID AS Student_id, rtrim(SURNAME) AS surname, rtrim(FIRST_NAME) AS first_name, BIRTH_DATE, CATEGORY_CODE, SUBCATEGORY_CODE,
LAST_ALTERED_DATE, TMP_STUDENT_ID, TELEFORM_STATUS 
FROM TMP_STUDENT
WHERE last_altered_by ='TELEFORM'
and ((TELEFORM_STATUS like 'UNENROLLED%') or (TELEFORM_STATUS='ENROLLED' and last_altered_date &gt;=  dateadd(dd,-4,getdate())))
ORDER BY LAST_ALTERED_DATE desc" activeCollection="TableParameters" name="GridStudentList" pageSizeLimit="100" wizardCaption="List of STUD SUB INTERIM, STUD SUBJ FINAL, STUDENT, STUDENT SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Students found" parameterTypeListName="ParameterTypeList" PathID="GridStudentList" orderBy="LAST_ALTERED_DATE desc">
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
				<CheckBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="cbox" checkedValue="true" uncheckedValue="false" defaultValue="Unchecked">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="131" action="Hide" conditionType="Parameter" dataType="Text" componentName="cbox" condition="Equal" sourceType1="Control" name1="TELEFORM_STATUS" sourceType2="Expression" name2="&quot;ENROLLED&quot;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="45" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_SUBJECT_STUDENT_ID" fieldSource="STUDENT_SUBJECT_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="103" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID">
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
				<Label id="48" fieldSourceType="DBColumn" dataType="Date" html="False" name="BIRTH_DATE" fieldSource="BIRTH_DATE" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="INTERIM PROGRESS CODE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="51" fieldSourceType="DBColumn" dataType="Text" html="False" name="TELEFORM_STATUS" fieldSource="TELEFORM_STATUS" wizardCaption="FINAL PROGRESS CODE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="54" size="6" type="Centered" name="Navigator" wizardPagingType="Custom" wizardFirst="False" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="False" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" pageSizes="1;5;10;25;50" PathID="GridStudentListNavigator" wizardImages="Images" wizardPageSize="False" wizardUsePageScroller="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="129" fieldSourceType="DBColumn" dataType="Text" html="False" name="CATEGORY_CODE" PathID="GridStudentListCATEGORY_CODE" fieldSource="CATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="130" fieldSourceType="DBColumn" dataType="Text" name="hidden_TMP_STUDENT_ID" PathID="GridStudentListhidden_TMP_STUDENT_ID" fieldSource="TMP_STUDENT_ID" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="132"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="118" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="LAST_ALTERED_BY='TELEFORM' "/><TableParameter id="128" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="TELEFORM_STATUS &lt;&gt;'DELETED'"/>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
				<Field id="120" fieldName="rtrim(SURNAME)" isExpression="True" alias="surname"/>
				<Field id="121" fieldName="rtrim(FIRST_NAME)" isExpression="True" alias="first_name"/>
			</Fields>
			<SPParameters/>
			<SQLParameters>
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
		<CodeFile id="3" language="VB" name="Teleforms_Enrolments.aspx" forShow="True" url="Teleforms_Enrolments.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Teleforms_Enrolments.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Teleforms_EnrolmentsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
