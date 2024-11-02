<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_PROFILE1" connection="connDECVPRODSQL2005" dataSource="STUDENT_PROFILE" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="STUDENT_PROFILE_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit STUDENT PROFILE " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Vertical" templatePageRecord="C:/Users/decv_development/Documents/CodeCharge Studio 5 Projects/svn_STUDENT_ADMIN_CCS5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="STUDENT_PROFILE1">
			<Components>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_PROFILE1Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_PROFILE1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_PROFILE1Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STUDENT ID" caption="STUDENT ID" required="True" unique="False" wizardSize="12" wizardMaxLength="12" PathID="STUDENT_PROFILE1STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ENROLMENT YEAR" caption="ENROLMENT YEAR" required="True" unique="False" wizardSize="12" wizardMaxLength="12" PathID="STUDENT_PROFILE1ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LAST ALTERED BY" wizardAddNbsp="True" PathID="STUDENT_PROFILE1LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="12" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LAST ALTERED DATE" wizardAddNbsp="True" format="dd/mm/yyyy h:nn AM/PM" PathID="STUDENT_PROFILE1LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="45" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="LAUNCH_PAD_DONE" fieldSource="LAUNCH_PAD_DONE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LAUNCH PAD DONE" caption="LAUNCH PAD DONE" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1LAUNCH_PAD_DONE" dataSource="Y;Yes;N;No" errorControl="error_LPDone">
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
				<TextBox id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="LAUNCH_PAD_DONE_DATE" fieldSource="LAUNCH_PAD_DONE_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LAUNCH PAD DONE DATE" caption="LAUNCH PAD DONE DATE" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILE1LAUNCH_PAD_DONE_DATE" errorControl="error_LPDone" format="d/m/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_PROGRAM" fieldSource="LEARNING_PROGRAM" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LEARNING PROGRAM" caption="LEARNING PROGRAM" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILE1LEARNING_PROGRAM">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="201" name="intCLPCount" type="Integer" initialValue="0"/>
								<Action actionName="DLookup" actionCategory="Database" id="199" typeOfTarget="Variable" expression="&quot;count(*)&quot;" domain="&quot;view_StudentsOnACLP&quot;" criteria="&quot;StudentId = &quot;&amp;STUDENT_PROFILE1Data.UrlSTUDENT_ID.tostring()" connection="connDECVPRODSQL2005" dataType="Integer" target="intCLPCount"/>
								<Action actionName="Custom Code" actionCategory="General" id="200"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextArea id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_PROGRAM_DETAILS" fieldSource="LEARNING_PROGRAM_DETAILS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LEARNING PROGRAM DETAILS" caption="LEARNING PROGRAM DETAILS" required="False" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILE1LEARNING_PROGRAM_DETAILS" errorControl="error_LearnDetails">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="161" maximumLength="200" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 200 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<CheckBoxList id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_PROGRAM_CONSULT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LEARNING PROGRAM CONSULT" caption="LEARNING PROGRAM CONSULT" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1LEARNING_PROGRAM_CONSULT" sourceType="ListOfValues" html="True" dataSource="YearLevelCoord;Year Level Coordinator;LeadingTeacher-StudentLearning;Leading Teacher - Student Learning;StudentInclusion;Student Inclusion;StudentWellbeing;Student Wellbeing">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="105"/>
								<Action actionName="Custom Code" actionCategory="General" id="99"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</CheckBoxList>
				<RadioButton id="51" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="SPECIAL_PROVISION_FLAG" fieldSource="SPECIAL_PROVISION_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SPECIAL PROVISION FLAG" caption="SPECIAL PROVISION FLAG" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1SPECIAL_PROVISION_FLAG" dataSource="Y;Yes;N;No">
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
				<TextArea id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SPECIAL_PROVISION_DETAILS" fieldSource="SPECIAL_PROVISION_DETAILS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SPECIAL PROVISION DETAILS" caption="SPECIAL PROVISION DETAILS" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1SPECIAL_PROVISION_DETAILS" errorControl="error_SpecialProvision">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="163" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="REVIEW_PROGRESS_END_SEM1" fieldSource="REVIEW_PROGRESS_END_SEM1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="REVIEW PROGRESS END SEM1" caption="REVIEW PROGRESS END SEM1" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1REVIEW_PROGRESS_END_SEM1" errorControl="error_ProgressSem1">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="168" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="REVIEW_PROGRESS_END_SEM2" fieldSource="REVIEW_PROGRESS_END_SEM2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="REVIEW PROGRESS END SEM2" caption="REVIEW PROGRESS END SEM2" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1REVIEW_PROGRESS_END_SEM2" errorControl="error_ProgressSem2">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="169" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lblLearningProgram" PathID="STUDENT_PROFILE1lblLearningProgram" fieldSource="LEARNING_PROGRAM" defaultValue="&quot;not determined yet&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="67" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lblStudentID" PathID="STUDENT_PROFILE1lblStudentID" fieldSource="STUDENT_ID" defaultValue="&lt;font color='RED'&gt;Not saved yet&lt;/font&gt;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="68" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblEnrolYear" PathID="STUDENT_PROFILE1lblEnrolYear" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="69" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY1" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LAST ALTERED BY" wizardAddNbsp="True" PathID="STUDENT_PROFILE1LAST_ALTERED_BY1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="71" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE1" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LAST ALTERED DATE" wizardAddNbsp="True" format="dd/mm/yyyy h:nn AM/PM" PathID="STUDENT_PROFILE1LAST_ALTERED_DATE1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="90" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert2" operation="Insert" wizardCaption="Add" PathID="STUDENT_PROFILE1Button_Insert2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="92" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update2" operation="Update" wizardCaption="Submit" PathID="STUDENT_PROFILE1Button_Update2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="94" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel2" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_PROFILE1Button_Cancel2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="95" fieldSourceType="DBColumn" dataType="Text" name="hidden_LastUpdatedBy" PathID="STUDENT_PROFILE1hidden_LastUpdatedBy" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserID.ToUpper">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="126" name="hidden_LastUpdatedBy" sourceType="Expression" sourceName="DBUtility.UserID.ToUpper"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="97" fieldSourceType="DBColumn" dataType="Date" name="hidden_LastUpdatedWhen" PathID="STUDENT_PROFILE1hidden_LastUpdatedWhen" fieldSource="LAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="yyyy-mm-dd H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="100" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LEARNING_PROGRAM_CONSULT" PathID="STUDENT_PROFILE1Hidden_LEARNING_PROGRAM_CONSULT" fieldSource="LEARNING_PROGRAM_CONSULT" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="111" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_ENGLANG_LP" PathID="STUDENT_PROFILE1ASSESS_ENGLANG_LP" fieldSource="ASSESS_ENGLANG_LP" caption="Student Assessment - English Language - LaunchPad" errorControl="error_AssessData">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="112" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_ENGLANG_RL" PathID="STUDENT_PROFILE1ASSESS_ENGLANG_RL" fieldSource="ASSESS_ENGLANG_RL" caption="Student Assessment - English Language - Relaunch" errorControl="error_AssessData">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="116" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_MATH_LP" PathID="STUDENT_PROFILE1ASSESS_MATH_LP" fieldSource="ASSESS_MATH_LP" caption="Student Assessment - Mathematics - LaunchPad" errorControl="error_AssessData">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="118" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_MATH_RL" PathID="STUDENT_PROFILE1ASSESS_MATH_RL" fieldSource="ASSESS_MATH_RL" caption="Student Assessment - Mathematics - Relaunch" errorControl="error_AssessData">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="119" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_PATSCIENCE_LP" PathID="STUDENT_PROFILE1ASSESS_PATSCIENCE_LP" fieldSource="ASSESS_PATSCIENCE_LP" caption="Student Assessment - PAT Science - LaunchPad" errorControl="error_AssessData">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="121" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_PATSCIENCE_RL" PathID="STUDENT_PROFILE1ASSESS_PATSCIENCE_RL" fieldSource="ASSESS_PATSCIENCE_RL" caption="Student Assessment - PAT Science - Relaunch" errorControl="error_AssessData">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="174" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_AssessData" PathID="STUDENT_PROFILE1error_AssessData">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="175" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_LearnDetails" PathID="STUDENT_PROFILE1error_LearnDetails">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="176" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_LearnGoals" PathID="STUDENT_PROFILE1error_LearnGoals">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="177" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_SpecialProvision" PathID="STUDENT_PROFILE1error_SpecialProvision">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="181" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_ProgressSem1" PathID="STUDENT_PROFILE1error_ProgressSem1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="182" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_ProgressSem2" PathID="STUDENT_PROFILE1error_ProgressSem2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="202" visible="Yes" fieldSourceType="DBColumn" dataType="Text" defaultValue="Unchecked" name="cbENROL_FILE_CHECKED" PathID="STUDENT_PROFILE1cbENROL_FILE_CHECKED" fieldSource="ENROL_FILE_CHECKED" caption="DECV Enrolment File Checked?" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="217" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_LPDone" PathID="STUDENT_PROFILE1error_LPDone">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="98" name="hidden_LastUpdatedWhen" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="101"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="103" name="hidden_LastUpdatedWhen" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="104"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="214"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="220"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="221"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="206" conditionType="Parameter" useIsNull="False" dataType="Integer" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="207" conditionType="Parameter" useIsNull="False" dataType="Integer" field="ENROLMENT_YEAR" logicOperator="And" parameterSource="ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="205" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_PROFILE"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="208" fieldName="*"/>
			</Fields>
			<PKFields>
				<PKField id="209" dataType="Integer" fieldName="STUDENT_PROFILE_ID" tableName="STUDENT_PROFILE"/>
			</PKFields>
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
		</Record>
		<Link id="72" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<IncludePage id="73" name="StudentNamePlate" PathID="StudentNamePlate" page="StudentNamePlate.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Panel id="124" visible="False" generateDiv="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain">
			<Components>
				<IncludePage id="125" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Profile_PLSP.aspx" forShow="True" url="Student_Profile_PLSP.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Profile_PLSP.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Profile_PLSPDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="123"/>
			</Actions>
		</Event>
	</Events>
</Page>
