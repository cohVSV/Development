<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="3" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkSubjectList" hrefSource="Student_Subject_maintain.ccp" wizardUseTemplateBlock="False" removeParameters="SUBJECT_ID" PathID="linkSubjectList">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="viewStudentSummary_Subjec" dataSource="viewStudentSummary_SubjectDetails" errorSummator="Error" wizardCaption="Add/Edit View Student Summary Subject Details " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" customUpdateType="Table" customUpdate="STUDENT_SUBJECT" activeCollection="ISPParameters" activeTableType="STUDENT_SUBJECT" PathID="viewStudentSummary_Subjec" pasteActions="pasteActions" editableComponentTypeString="Record" customInsertType="Procedure" parameterTypeListName="ParameterTypeList" customInsert="spu_ExtendStudentSubject;1">
			<Components>
				<Label id="8" fieldSourceType="DBColumn" dataType="Float" html="False" name="student_id" fieldSource="student_id" required="True" caption="Student Id" wizardCaption="Student Id" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" fieldSourceType="DBColumn" dataType="Float" html="False" name="enrolment_year" fieldSource="enrolment_year" required="True" caption="Enrolment Year" wizardCaption="Enrolment Year" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" required="True" caption="SUBJECT ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" required="True" caption="SUBJECT TITLE" wizardCaption="SUBJECT TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="SEMESTER" fieldSource="SEMESTER" required="True" caption="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="B" _nameOfList="Both" dataSource="1;1;2;2;B;Both" PathID="viewStudentSummary_SubjecSEMESTER">
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
				<Label id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="Procedure" dataType="Text" returnValueType="Number" name="COURSE_DISTRIBUTION" fieldSource="COURSE_DISTRIBUTION" required="True" caption="COURSE DISTRIBUTION" wizardCaption="COURSE DISTRIBUTION" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" activeCollection="SPParameters" parameterTypeListName="ParameterTypeList" boundColumn="DIST_CODE" textColumn="DIST_TEXT" dataSource="sps_GetSubjectDistributionMethods;1" resultSetType="parameter" PathID="viewStudentSummary_SubjecCOURSE_DISTRIBUTION" html="False">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters>
						<SPParameter id="89" parameterName="@subject_id" parameterSource="subject_id" parameterType="URL" direction="Input" dataType="Int" dataSize="0" scale="0" precision="10" defaultValue="0" designDefaultValue="740"/>
					</SPParameters>
					<SQLParameters>
						<SQLParameter id="39" variable="subject_id" parameterType="URL" defaultValue="0" dataType="Text" designDefaultValue="637" parameterSource="subject_id"/>
					</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</Label>
				<ListBox id="14" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" required="True" caption="ENROLMENT STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="C;Current;W;Withdrawn;F;Finished;E;Extended;D;Defaulting;P;Pending;T;Temporary" PathID="viewStudentSummary_SubjecSUBJ_ENROL_STATUS" _valueOfList="T" _nameOfList="Temporary">
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
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="enrolment_date" fieldSource="enrolment_date" required="True" caption="ENROLMENT DATE" wizardCaption="Enrolment Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yy" PathID="viewStudentSummary_Subjecenrolment_date">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="withdrawal_date" fieldSource="withdrawal_date" required="False" caption="END DATE" wizardCaption="Withdrawal Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yy" PathID="viewStudentSummary_Subjecwithdrawal_date">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="102"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="17" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="WITHDRAWAL_REASON_ID" required="False" caption="WITHDRAWAL REASON" wizardCaption="WITHDRAWAL REASON ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="WITHDRAWAL_REASON" orderBy="WITHDRAWAL_REASON" activeCollection="TableParameters" boundColumn="WITHDRAWAL_REASON_ID" textColumn="WITHDRAWAL_REASON" PathID="viewStudentSummary_SubjecWITHDRAWAL_REASON_ID" connection="connDECVPRODSQL2005" fieldSource="WITHDRAWAL_REASON_ID">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="265"/>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="264" errorMessage="WITHDRAWAL REASON is required if ENROLMENT STATUS is Withdrawn"/>
								<Action actionName="Custom Code" actionCategory="General" id="266"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="223" conditionType="Expression" useIsNull="False" expression="STATUS=1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="227" tableName="WITHDRAWAL_REASON"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="224" fieldName="WITHDRAWAL_REASON_ID" tableName="WITHDRAWAL_REASON"/>
						<Field id="225" fieldName="WITHDRAWAL_REASON" tableName="WITHDRAWAL_REASON"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields>
						<PKField id="226" dataType="Float" fieldName="WITHDRAWAL_REASON_ID" tableName="WITHDRAWAL_REASON"/>
					</PKFields>
				</ListBox>
				<Label id="18" fieldSourceType="DBColumn" dataType="Integer" html="False" name="NUM_ASSMT_SUBMISSIONS" fieldSource="NUM_ASSMT_SUBMISSIONS" required="True" caption="NUM ASSMT SUBMISSIONS" wizardCaption="NUM ASSMT SUBMISSIONS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="19" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" required="True" caption="TEACHER" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="STAFF" activeCollection="TableParameters" orderBy="STAFF_ID" boundColumn="STAFF_ID" textColumn="STAFF_ID" PathID="viewStudentSummary_SubjecSTAFF_ID" validationText="&lt;font color='red'&gt;Do not use NSUBMIT - use NON SUBMITTING? YES&lt;/font&gt;" validationRule="STAFF_ID.Value.Contains(&quot;NSUBMIT&quot;) = FALSE" errorControl="labelErrorStaffID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="121"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="178" conditionType="Expression" useIsNull="False" expression="STATUS=1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="179" conditionType="Expression" useIsNull="False" expression="TEACHER_FLAG=1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="322" tableName="STAFF"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="180" fieldName="STAFF_ID" tableName="STAFF"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields>
						<PKField id="181" dataType="Text" fieldName="STAFF_ID" tableName="STAFF"/>
					</PKFields>
				</ListBox>
				<ListBox id="21" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="FINAL_PROGRESS_CODE" fieldSource="FINAL_PROGRESS_CODE" required="False" caption="FINAL PROGRESS CODE" wizardCaption="FINAL PROGRESS CODE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="select PROGRESS_CODE, PROGRESS_CODE+' '+rtrim(PROGRESS_CODE_TITLE) as description
from PROGRESS_CODE
where STATUS=1 and PROGRESS_CODE_TITLE not like '%Interim%'" activeCollection="TableParameters" orderBy="PROGRESS_CODE" boundColumn="PROGRESS_CODE" textColumn="description" PathID="viewStudentSummary_SubjecFINAL_PROGRESS_CODE">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="34" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS=1"/>
						<TableParameter id="112" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="PROGRESS_CODE_TITLE not like '%Interim%'"/>
					</TableParameters>
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
				<RadioButton id="22" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="VBOS_REGISTERED" fieldSource="VBOS_REGISTERED" required="True" caption="VBOS REGISTERED" wizardCaption="VBOS REGISTERED" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" dataSource="Yes;Yes;No;No" _valueOfList="No" _nameOfList="No" PathID="viewStudentSummary_SubjecVBOS_REGISTERED">
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
				<RadioButton id="23" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="APPEARS_ON_VASS" fieldSource="APPEARS_ON_VASS" required="True" caption="APPEARS ON VASS" wizardCaption="APPEARS ON VASS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Yes;Yes;No;No" connection="connDECVPRODSQL2005" _valueOfList="False" _nameOfList="No" PathID="viewStudentSummary_SubjecAPPEARS_ON_VASS">
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
				<Label id="99" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="100" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="6" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="viewStudentSummary_SubjecButton_Cancel" returnPage="Student_Subject_maintain.ccp" removeParameters="SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="True" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="viewStudentSummary_SubjecButton_Update">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="97" message="Are you sure you want to update the Subject Details?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="80" fieldSourceType="DBColumn" dataType="Float" name="hidden_STUDENT_ID" fieldSource="student_id" PathID="viewStudentSummary_Subjechidden_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="81" fieldSourceType="DBColumn" dataType="Integer" name="hidden_ENROLMENT_YEAR" fieldSource="enrolment_year" PathID="viewStudentSummary_Subjechidden_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="82" fieldSourceType="DBColumn" dataType="Integer" name="hidden_SUBJECT_ID" fieldSource="SUBJECT_ID" PathID="viewStudentSummary_Subjechidden_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="93" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" defaultValue="CurrentDateTime" PathID="viewStudentSummary_Subjechidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="94" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" PathID="viewStudentSummary_Subjechidden_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="122" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSTAFF_ID" PathID="viewStudentSummary_SubjeclblSTAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="176" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblDebug2" PathID="viewStudentSummary_SubjeclblDebug2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="20" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="INTERIM_PROGRESS_CODE" caption="INTERIM PROGRESS CODE" fieldSource="INTERIM_PROGRESS_CODE" connection="connDECVPRODSQL2005" dataSource="PROGRESS_CODE" boundColumn="PROGRESS_CODE" textColumn="description" orderBy="PROGRESS_CODE" required="False" PathID="viewStudentSummary_SubjecINTERIM_PROGRESS_CODE">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="31" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" leftBrackets="0" rightBrackets="0" expression="STATUS=1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="108" tableName="PROGRESS_CODE" posWidth="160" posHeight="136" posLeft="10" posTop="10"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="109" tableName="PROGRESS_CODE" fieldName="PROGRESS_CODE"/>
						<Field id="113" fieldName="PROGRESS_CODE+' '+rtrim(PROGRESS_CODE_TITLE)" alias="description" isExpression="True"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<RadioButton id="24" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="EXTENSION_OF_VCE_UNIT" fieldSource="EXTENSION_OF_VCE_UNIT" required="True" caption="EXTENSION OF VCE UNIT" wizardCaption="EXTENSION OF VCE UNIT" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Yes;Yes;No;No" connection="connDECVPRODSQL2005" _valueOfList="False" _nameOfList="No" PathID="viewStudentSummary_SubjecEXTENSION_OF_VCE_UNIT" defaultValue="0">
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
				<RadioButton id="267" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="NON_SUBMITTING_FLAG" PathID="viewStudentSummary_SubjecNON_SUBMITTING_FLAG" caption="NON SUBMITTING" dataSource="1;Yes (NSUBMIT);0;No" fieldSource="NON_SUBMITTING_FLAG" defaultValue="0">
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
				<Label id="274" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="labelErrorStaffID" PathID="viewStudentSummary_SubjeclabelErrorStaffID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="301" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Extend" PathID="viewStudentSummary_SubjecButton_Extend" returnPage="Student_Subject_maintain.ccp" removeParameters="SUBJECT_ID" operation="Insert">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="302" message="Extend Subject into Semester 2?\n(can be manually changed back)"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="316" name="tmpSemester" type="Text" initialValue="&quot;0&quot;"/>
								<Action actionName="Save Control Value" actionCategory="General" id="303" name="SEMESTER" sourceType="Variable" sourceName="tmpSemester"/>
								<Action actionName="Declare Variable" actionCategory="General" id="317" name="tmpExtended" type="Boolean" initialValue="0"/>
								<Action actionName="Declare Variable" actionCategory="General" id="318" name="tmpSubjectID" type="Integer" initialValue="0"/>
								<Action actionName="Save Control Value" actionCategory="General" id="319" name="hidden_SUBJECT_ID" sourceType="Variable" sourceName="tmpSubjectID"/>
								<Action actionName="Declare Variable" actionCategory="General" id="320" name="tmpMonth" type="Integer" initialValue="Today.Month()"/>
								<Action actionName="Custom Code" actionCategory="General" id="304"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="AfterExecuteUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="59"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="103" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="104" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="now()"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="185"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="312" conditionType="Parameter" useIsNull="False" dataType="Float" field="student_id" logicOperator="And" orderNumber="1" parameterSource="student_id" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="313" conditionType="Parameter" useIsNull="False" dataType="Float" field="enrolment_year" logicOperator="And" parameterSource="enrolment_year" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="314" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_ID" logicOperator="And" parameterSource="SUBJECT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="321" tableName="viewStudentSummary_SubjectDetails"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="315" fieldName="*"/>
			</Fields>
			<ISPParameters>
				<SPParameter id="Key1" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" dataSize="0" direction="ReturnValue" scale="0" precision="10" parameterType="Expression"/>
				<SPParameter id="Key2" parameterName="@STUDENT_ID" parameterSource="hidden_STUDENT_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key3" parameterName="@SUBJECT_ID" parameterSource="hidden_SUBJECT_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key4" parameterName="@LAST_ALTERED_BY" parameterSource="dbutility.userid.tostring" dataType="Char" parameterType="Expression" dataSize="12" direction="Input" scale="0" precision="0"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="284" field="SEMESTER" dataType="Text" parameterType="Control" parameterSource="SEMESTER"/>
				<CustomParameter id="285" field="SUBJ_ENROL_STATUS" dataType="Text" parameterType="Control" parameterSource="SUBJ_ENROL_STATUS"/>
				<CustomParameter id="286" field="enrolment_date" dataType="Date" parameterType="Control" parameterSource="enrolment_date" format="dd/mm/yy"/>
				<CustomParameter id="287" field="withdrawal_date" dataType="Date" parameterType="Control" parameterSource="withdrawal_date" format="dd/mm/yy"/>
				<CustomParameter id="288" field="WITHDRAWAL_REASON_ID" dataType="Integer" parameterType="Control" parameterSource="WITHDRAWAL_REASON_ID"/>
				<CustomParameter id="289" field="STAFF_ID" dataType="Text" parameterType="Control" parameterSource="STAFF_ID"/>
				<CustomParameter id="290" field="FINAL_PROGRESS_CODE" dataType="Text" parameterType="Control" parameterSource="FINAL_PROGRESS_CODE"/>
				<CustomParameter id="291" field="VBOS_REGISTERED" dataType="Boolean" parameterType="Control" parameterSource="VBOS_REGISTERED"/>
				<CustomParameter id="292" field="APPEARS_ON_VASS" dataType="Boolean" parameterType="Control" parameterSource="APPEARS_ON_VASS"/>
				<CustomParameter id="293" field="student_id" dataType="Float" parameterType="Control" parameterSource="hidden_STUDENT_ID"/>
				<CustomParameter id="294" field="enrolment_year" dataType="Integer" parameterType="Control" parameterSource="hidden_ENROLMENT_YEAR"/>
				<CustomParameter id="295" field="SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="hidden_SUBJECT_ID"/>
				<CustomParameter id="296" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" parameterSource="hidden_LAST_ALTERED_DATE"/>
				<CustomParameter id="297" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="hidden_LAST_ALTERED_BY"/>
				<CustomParameter id="298" field="INTERIM_PROGRESS_CODE" dataType="Text" parameterType="Control" parameterSource="INTERIM_PROGRESS_CODE"/>
				<CustomParameter id="299" field="EXTENSION_OF_VCE_UNIT" dataType="Boolean" parameterType="Control" parameterSource="EXTENSION_OF_VCE_UNIT"/>
				<CustomParameter id="300" field="NON_SUBMITTING_FLAG" dataType="Integer" parameterType="Control" parameterSource="NON_SUBMITTING_FLAG"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="40" conditionType="Parameter" useIsNull="False" field="student_id" dataType="Float" parameterType="Control" searchConditionType="Equal" logicOperator="And" orderNumber="1" parameterSource="hidden_STUDENT_ID"/>
				<TableParameter id="53" conditionType="Parameter" useIsNull="False" field="enrolment_year" dataType="Float" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="hidden_ENROLMENT_YEAR"/>
				<TableParameter id="83" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="hidden_SUBJECT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="41" field="SEMESTER" dataType="Text" parameterType="Control" parameterSource="SEMESTER" omitIfEmpty="True"/>
				<CustomParameter id="43" field="SUBJ_ENROL_STATUS" dataType="Text" parameterType="Control" parameterSource="SUBJ_ENROL_STATUS" omitIfEmpty="True"/>
				<CustomParameter id="44" field="ENROLMENT_DATE" dataType="Date" parameterType="Control" parameterSource="enrolment_date" omitIfEmpty="True" format="dd/mm/yyyy"/>
				<CustomParameter id="45" field="WITHDRAWAL_DATE" dataType="Date" parameterType="Control" parameterSource="withdrawal_date" omitIfEmpty="True" format="dd/mm/yyyy"/>
				<CustomParameter id="46" field="WITHDRAWAL_REASON_ID" dataType="Float" parameterType="Control" parameterSource="WITHDRAWAL_REASON_ID" omitIfEmpty="True"/>
				<CustomParameter id="47" field="STAFF_ID" dataType="Text" parameterType="Control" parameterSource="STAFF_ID" omitIfEmpty="True"/>
				<CustomParameter id="49" field="VBOS_REGISTERED" dataType="Boolean" parameterType="Control" parameterSource="VBOS_REGISTERED" omitIfEmpty="True" DBFormat="1;0" format="Yes;No"/>
				<CustomParameter id="50" field="APPEARS_ON_VASS" dataType="Boolean" parameterType="Control" parameterSource="APPEARS_ON_VASS" omitIfEmpty="True" DBFormat="1;0" format="Yes;No"/>
				<CustomParameter id="51" field="EXTENSION_OF_VCE_UNIT" dataType="Boolean" parameterType="Control" parameterSource="EXTENSION_OF_VCE_UNIT" omitIfEmpty="True" DBFormat="1;0" format="Yes;No"/>
				<CustomParameter id="55" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_LAST_ALTERED_BY"/>
				<CustomParameter id="56" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_LAST_ALTERED_DATE" DBFormat="yyyy-mm-dd HH:nn:ss" format="yyyy-mm-dd HH:nn:ss"/>
				<CustomParameter id="273" field="NON_SUBMITTING_FLAG" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="NON_SUBMITTING_FLAG"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<Label id="98" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSelections">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Grid id="61" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="select bd.*, sub.default_semester
		, (case when (sub.sub_school='P-6' and sub.default_semester ='1') then char(64+bd.book_id)
			when (sub.sub_school='P-6' and sub.default_semester ='2') then char(64+bd.book_id)
			when (sub.sub_school='7-8' and sub.default_semester ='1') then char(64+bd.book_id)
			when (sub.sub_school='7-8' and sub.default_semester ='2') then char(68+bd.book_id)
			when (sub.sub_school='9-10' and sub.default_semester ='1') then char(64+bd.book_id)
			when (sub.sub_school='9-10' and sub.default_semester ='2') then char(68+bd.book_id)
			else ''
			end ) as module_display
from book_despatch bd, subject sub, student_subject ss
WHERE bd.subject_id = sub.subject_id
and bd.SUBJECT_ID = ss.SUBJECT_ID and bd.ENROLMENT_YEAR = ss.ENROLMENT_YEAR and bd.STUDENT_ID = ss.STUDENT_ID
AND bd.STUDENT_ID = {STUDENT_ID}
AND bd.ENROLMENT_YEAR = {ENROLMENT_YEAR}
AND bd.SUBJECT_ID = {SUBJECT_ID} 
ORDER BY BOOK_ID" name="BOOK_DESPATCH" pageSizeLimit="100" wizardCaption="List of BOOK DESPATCH " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Books found for this Subject" pasteAsReplace="pasteAsReplace" activeCollection="TableParameters" PathID="BOOK_DESPATCH">
			<Components>
				<Label id="64" fieldSourceType="DBColumn" dataType="Integer" html="False" name="BOOK_ID" fieldSource="BOOK_ID" wizardCaption="BOOK ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="65" fieldSourceType="DBColumn" dataType="Text" html="False" name="DESPATCH_STATUS" fieldSource="DESPATCH_STATUS" wizardCaption="DESPATCH STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" visible="Yes" sourceType="ListOfValues" connection="connDECVPRODSQL2005" dataSource="S;Sent;N;Not Req'd;T;To be Sent" _valueOfList="T" _nameOfList="To be Sent" PathID="BOOK_DESPATCHDESPATCH_STATUS">
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
				</RadioButton>
				<TextBox id="66" fieldSourceType="DBColumn" dataType="Date" html="False" name="DESPATCH_DATE" fieldSource="DESPATCH_DATE" wizardCaption="DESPATCH DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" visible="Yes" format="dd/mm/yy" required="False" PathID="BOOK_DESPATCHDESPATCH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="187" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblModule" PathID="BOOK_DESPATCHlblModule" fieldSource="module_display">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="62" styles="Row;AltRow" name="rowStyle"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="228" dataType="Float" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
				<SQLParameter id="229" dataType="Float" designDefaultValue="2013" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
				<SQLParameter id="230" dataType="Integer" defaultValue="0" designDefaultValue="54" parameterSource="SUBJECT_ID" parameterType="URL" variable="SUBJECT_ID"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="128" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_SUBJECT" dataSource="STUDENT_SUBJECT" errorSummator="Error" wizardCaption="Add/Edit STUDENT SUBJECT " wizardFormMethod="post" PathID="STUDENT_SUBJECT" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" customUpdateType="Table" customUpdate="STUDENT_SUBJECT" activeCollection="UConditions" activeTableType="customUpdate">
			<Components>
				<Button id="129" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_SUBJECTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="132" fieldSourceType="DBColumn" dataType="Float" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" required="True" caption="ENROLMENT YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="133" fieldSourceType="DBColumn" dataType="Integer" name="SUBJECT_ID" fieldSource="SUBJECT_ID" required="True" caption="SUBJECT ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTSUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="134" fieldSourceType="DBColumn" dataType="Text" name="SEMESTER" fieldSource="SEMESTER" required="True" caption="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTSEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="137" fieldSourceType="DBColumn" dataType="Text" name="MODULE_LAST_ALTERED_BY" fieldSource="MODULE_LAST_ALTERED_BY" required="False" caption="MODULE LAST ALTERED BY" wizardCaption="MODULE LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTMODULE_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="138" fieldSourceType="DBColumn" dataType="Date" name="MODULE_LAST_ALTERED_DATE" fieldSource="MODULE_LAST_ALTERED_DATE" required="False" caption="MODULE LAST ALTERED DATE" wizardCaption="MODULE LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTMODULE_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Button id="130" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_SUBJECTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="135" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="MODULE_CUSTOMPROGRAM" fieldSource="MODULE_CUSTOMPROGRAM" required="False" caption="Customised Learning Program" wizardCaption="MODULE CUSTOMPROGRAM" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTMODULE_CUSTOMPROGRAM" dataSource="0;No;1;&lt;strong&gt;YES!&lt;strong&gt;" defaultValue="0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="153"/>
							</Actions>
						</Event>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="154"/>
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
				<ListBox id="136" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="MODULE_NEXTMODULE" fieldSource="MODULE_NEXTMODULE" required="False" caption="Send Next Module" wizardCaption="MODULE NEXTMODULE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STUDENT_SUBJECTMODULE_NEXTMODULE" dataSource="select module_code, module_label
from ref_module_codes
where status = 1
order by module_label" defaultValue="&quot;&quot;" _valueOfList="MODULE_CD" _nameOfList="Modules C &amp; D" connection="connDECVPRODSQL2005" boundColumn="module_code" textColumn="module_label">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="139"/>
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
				</ListBox>
				<Label id="140" fieldSourceType="DBColumn" dataType="Text" name="MODULE_LAST_ALTERED_BY1" fieldSource="MODULE_LAST_ALTERED_BY" required="False" caption="MODULE LAST ALTERED BY" wizardCaption="MODULE LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTMODULE_LAST_ALTERED_BY1" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="141" fieldSourceType="DBColumn" dataType="Date" name="MODULE_LAST_ALTERED_DATE1" fieldSource="MODULE_LAST_ALTERED_DATE" required="False" caption="MODULE LAST ALTERED DATE" wizardCaption="MODULE LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_SUBJECTMODULE_LAST_ALTERED_DATE1" html="False" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="131" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" parameterSource="STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="156" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="157" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SUBJECT_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="260" tableName="STUDENT_SUBJECT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="158" tableName="STUDENT_SUBJECT" fieldName="STUDENT_ID"/>
				<Field id="159" tableName="STUDENT_SUBJECT" fieldName="ENROLMENT_YEAR"/>
				<Field id="160" tableName="STUDENT_SUBJECT" fieldName="SUBJECT_ID"/>
				<Field id="161" tableName="STUDENT_SUBJECT" fieldName="SEMESTER"/>
				<Field id="162" tableName="STUDENT_SUBJECT" fieldName="MODULE_LAST_ALTERED_DATE"/>
				<Field id="163" tableName="STUDENT_SUBJECT" fieldName="MODULE_LAST_ALTERED_BY"/>
				<Field id="164" tableName="STUDENT_SUBJECT" fieldName="MODULE_NEXTMODULE"/>
				<Field id="165" tableName="STUDENT_SUBJECT" fieldName="MODULE_CUSTOMPROGRAM"/>
			</Fields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="142" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" parameterType="URL" searchConditionType="Equal" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID"/>
				<TableParameter id="150" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="151" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="SUBJECT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="146" field="MODULE_LAST_ALTERED_BY" dataType="Text" parameterType="Expression" parameterSource="dbutility.userid.tostring" omitIfEmpty="True"/>
				<CustomParameter id="147" field="MODULE_LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" parameterSource="Now()" omitIfEmpty="True"/>
				<CustomParameter id="148" field="MODULE_CUSTOMPROGRAM" dataType="Integer" parameterType="Control" parameterSource="MODULE_CUSTOMPROGRAM" omitIfEmpty="True"/>
				<CustomParameter id="149" field="MODULE_NEXTMODULE" dataType="Text" parameterType="Control" parameterSource="MODULE_NEXTMODULE" omitIfEmpty="True"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<EditableGrid id="231" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="SQL" defaultPageSize="30" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="EditableGrid1" connection="connDECVPRODSQL2005" dataSource="select bd.*, sub.default_semester, ss.semester
		, (case when (sub.sub_school='P-6') then char(64+bd.book_id)
			when (sub.sub_school='P-6') then char(64+bd.book_id)
			when (sub.sub_school='7-8' and ss.semester ='1') then char(64+bd.book_id)
			when (sub.sub_school='7-8' and ss.SEMESTER ='2') then char(68+bd.book_id)
			when (sub.sub_school='9-10' and ss.SEMESTER ='1') then char(64+bd.book_id)
			when (sub.sub_school='9-10' and ss.SEMESTER ='2') then char(68+bd.book_id)
			else ''
			end ) as module_display
from book_despatch bd, subject sub, student_subject ss
WHERE bd.subject_id = sub.subject_id
and bd.SUBJECT_ID = ss.SUBJECT_ID and bd.ENROLMENT_YEAR = ss.ENROLMENT_YEAR and bd.STUDENT_ID = ss.STUDENT_ID
AND bd.STUDENT_ID = {STUDENT_ID}
AND bd.ENROLMENT_YEAR = {ENROLMENT_YEAR}
AND bd.SUBJECT_ID = {SUBJECT_ID}
ORDER BY BOOK_ID" pageSizeLimit="100" wizardGridPageSize="False" wizardUseSearch="False" allowCancel="False" wizardSubmitConfirmation="False" wizardCaption="Runs Taken - What Modules to Send" wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Books found for this Subject!" wizardGridKey="STUDENT_ID" wizardAddNbsp="False" wizardTotalRecords="False" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="EditableGrid1" customUpdateType="Table" parameterTypeListName="CustomTableParameterTypeList" activeCollection="UFormElements" activeTableType="BOOK_DESPATCH" customUpdate="BOOK_DESPATCH">
			<Components>
				<Hidden id="236" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="BOOK_ID" fieldSource="BOOK_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="BOOK ID" caption="BOOK ID" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="EditableGrid1BOOK_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<RadioButton id="238" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="DESPATCH_STATUS" fieldSource="DESPATCH_STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="DESPATCH STATUS" caption="DESPATCH STATUS" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="EditableGrid1DESPATCH_STATUS" dataSource="S;Sent;N;Not Req'd;T;To be Sent"><Components/>
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
				<TextBox id="239" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="DESPATCH_DATE" fieldSource="DESPATCH_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="DESPATCH DATE" caption="DESPATCH DATE" required="False" format="dd/mm/yy" unique="False" wizardSize="10" wizardMaxLength="100" PathID="EditableGrid1DESPATCH_DATE" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="241" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="EditableGrid1Button_Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="242" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="lblBookID" fieldSource="BOOK_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="BOOK ID" caption="BOOK ID" required="True" unique="False" wizardSize="5" wizardMaxLength="5" PathID="EditableGrid1lblBookID" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="237" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="module_display" fieldSource="module_display" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="Module Display" PathID="EditableGrid1module_display">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="261" dataType="Float" defaultValue="0" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
				<SQLParameter id="262" dataType="Float" defaultValue="2014" designDefaultValue="2014" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
				<SQLParameter id="263" dataType="Integer" defaultValue="0" designDefaultValue="45" parameterSource="SUBJECT_ID" parameterType="URL" variable="SUBJECT_ID"/>
			</SQLParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters>
				<SQLParameter id="246" variable="BOOK_ID" parameterType="Control" defaultValue="0" dataType="Integer" parameterSource="BOOK_ID"/>
				<SQLParameter id="247" variable="DESPATCH_STATUS" parameterType="Control" defaultValue="&quot;Z&quot;" dataType="Text" parameterSource="DESPATCH_STATUS"/>
				<SQLParameter id="248" variable="DESPATCH_DATE" parameterType="Control" defaultValue="NULL" dataType="Date" DBFormat="yyyy-mm-dd" format="dd/MM/yy" parameterSource="DESPATCH_DATE"/>
				<SQLParameter id="249" variable="ENROLMENT_YEAR" parameterType="DataSourceColumn" defaultValue="2014" dataType="Integer" parameterSource="ENROLMENT_YEAR"/>
				<SQLParameter id="250" variable="STUDENT_ID" parameterType="DataSourceColumn" defaultValue="0" dataType="Integer" parameterSource="STUDENT_ID"/>
				<SQLParameter id="251" variable="SUBJECT_ID" parameterType="DataSourceColumn" defaultValue="0" dataType="Integer" parameterSource="SUBJECT_ID"/>
				<SQLParameter id="252" variable="UserID" parameterType="Session" defaultValue="&quot;UNKNOWN&quot;" dataType="Text" parameterSource="UserID"/>
			</USQLParameters>
			<UConditions>
				<TableParameter id="253" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="254" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="255" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="SUBJECT_ID"/>
				<TableParameter id="256" conditionType="Parameter" useIsNull="False" field="BOOK_ID" dataType="Integer" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="BOOK_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="244" field="DESPATCH_STATUS" dataType="Text" parameterType="Control" parameterSource="DESPATCH_STATUS"/>
				<CustomParameter id="245" field="DESPATCH_DATE" dataType="Date" parameterType="Control" parameterSource="DESPATCH_DATE" format="dd/mm/yyyy" DBFormat="yyyy-mm-dd HH:nn:ss" omitIfEmpty="False"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentSubject_Details_maintain.aspx" forShow="True" url="StudentSubject_Details_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentSubject_Details_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentSubject_Details_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="275" groupID="2"/>
		<Group id="276" groupID="3"/>
		<Group id="277" groupID="4"/>
		<Group id="278" groupID="5"/>
		<Group id="279" groupID="6"/>
		<Group id="280" groupID="7"/>
		<Group id="281" groupID="9"/>
		<Group id="282" groupID="12"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
