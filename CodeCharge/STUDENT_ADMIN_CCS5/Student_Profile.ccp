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
				<TextArea id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="BACKGROUND_INFO" fieldSource="BACKGROUND_INFO" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="BACKGROUND INFO" caption="BACKGROUND INFO" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1BACKGROUND_INFO" errorControl="error_BackgroundInfo">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="142" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENROL_REASONS" fieldSource="ENROL_REASONS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ENROL REASONS" caption="ENROL REASONS" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1ENROL_REASONS" errorControl="error_ReasonsEnrol">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="143" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WELLBEING_INCLUSION_CONCERNS" fieldSource="WELLBEING_INCLUSION_CONCERNS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="WELLBEING INCLUSION CONCERNS" caption="WELLBEING INCLUSION CONCERNS" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1WELLBEING_INCLUSION_CONCERNS" errorControl="error_StudentWellbeing">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="144" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EXPECT_RETURN_TO_SCHOOL" fieldSource="EXPECT_RETURN_TO_SCHOOL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="EXPECT RETURN TO SCHOOL" caption="EXPECT RETURN TO SCHOOL" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1EXPECT_RETURN_TO_SCHOOL" errorControl="error_ReturnMainstream">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="147" maximumLength="400" errorMessage="Input cannot exceed 400 characters"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="17" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="RETURN_STUDENT" fieldSource="RETURN_STUDENT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RETURN STUDENT" caption="RETURN STUDENT" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1RETURN_STUDENT" dataSource="Y;Yes;N;No" errorControl="error_ReturningStudent">
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
				<RadioButton id="18" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="KNOWN_WELLBEING" fieldSource="KNOWN_WELLBEING" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="KNOWN WELLBEING" caption="KNOWN WELLBEING" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1KNOWN_WELLBEING" dataSource="Y;Yes;N;No" errorControl="error_StudentWellbeing2">
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
				<RadioButton id="19" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="KNOWN_INCLUSION" fieldSource="KNOWN_INCLUSION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="KNOWN INCLUSION" caption="KNOWN INCLUSION" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1KNOWN_INCLUSION" dataSource="Y;Yes;N;No">
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
				<RadioButton id="20" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="KNOWN_PATHWAYS" fieldSource="KNOWN_PATHWAYS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="KNOWN PATHWAYS" caption="KNOWN PATHWAYS" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1KNOWN_PATHWAYS" dataSource="Y;Yes;N;No" errorControl="error_PrevPathways">
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
				<CheckBox id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_AGENCY_REFERRAL" fieldSource="SUPPORT_DOCS_AGENCY_REFERRAL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT DOCS AGENCY REFERRAL" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;" PathID="STUDENT_PROFILE1SUPPORT_DOCS_AGENCY_REFERRAL" defaultValue="Unchecked" errorControl="error_SupportDocs">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_PRATITIONER_REFERRAL" fieldSource="SUPPORT_DOCS_PRATITIONER_REFERRAL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT DOCS PRATITIONER REFERRAL" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;" PathID="STUDENT_PROFILE1SUPPORT_DOCS_PRATITIONER_REFERRAL" defaultValue="Unchecked" errorControl="error_SupportDocs">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_SCHOOL_REFERRAL" fieldSource="SUPPORT_DOCS_SCHOOL_REFERRAL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT DOCS SCHOOL REFERRAL" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;" PathID="STUDENT_PROFILE1SUPPORT_DOCS_SCHOOL_REFERRAL" defaultValue="Unchecked" errorControl="error_SupportDocs">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_YOUNG_ADULT" fieldSource="SUPPORT_DOCS_YOUNG_ADULT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT DOCS YOUNG ADULT" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;" PathID="STUDENT_PROFILE1SUPPORT_DOCS_YOUNG_ADULT" defaultValue="Unchecked" errorControl="error_SupportDocs">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_OTHER" fieldSource="SUPPORT_DOCS_OTHER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT DOCS OTHER" caption="SUPPORT DOCS OTHER" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1SUPPORT_DOCS_OTHER" errorControl="error_SupportDocs">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="145" maximumLength="50" errorMessage="Input cannot exceed 50 characters"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_NAME" fieldSource="SUPPORT_KEY_PROFESSIONAL_NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT KEY PROFESSIONAL NAME" caption="SUPPORT KEY PROFESSIONAL NAME" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1SUPPORT_KEY_PROFESSIONAL_NAME" errorControl="error_KeyProfSupports">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="148" maximumLength="50" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 50 characters&lt;/span&gt;" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_CONTACT" fieldSource="SUPPORT_KEY_PROFESSIONAL_CONTACT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT KEY PROFESSIONAL CONTACT" caption="SUPPORT KEY PROFESSIONAL CONTACT" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1SUPPORT_KEY_PROFESSIONAL_CONTACT" errorControl="error_KeyProfSupports">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="149" maximumLength="50" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 50 characters&lt;/span&gt;" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextArea id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENGAGEMENT_HOBBIES_INTERESTS" fieldSource="ENGAGEMENT_HOBBIES_INTERESTS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ENGAGEMENT HOBBIES INTERESTS" caption="ENGAGEMENT HOBBIES INTERESTS" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="STUDENT_PROFILE1ENGAGEMENT_HOBBIES_INTERESTS" errorControl="error_HobbiesInterests">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="150" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="29" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="COMM_VISIT_FLAG" fieldSource="COMM_VISIT_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMM VISIT FLAG" caption="COMM VISIT FLAG" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1COMM_VISIT_FLAG" dataSource="Y;Yes;N;No" errorControl="error_CommsVisit">
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
				<TextBox id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="COMM_VISIT_DATE" fieldSource="COMM_VISIT_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMM VISIT DATE" caption="COMM VISIT DATE" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILE1COMM_VISIT_DATE" format="d/m/yyyy" errorControl="error_CommsVisit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBoxList id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_CONTACT_TYPE" fieldSource="COMM_CONTACT_TYPE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMM CONTACT TYPE" caption="COMM CONTACT TYPE" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILE1COMM_CONTACT_TYPE" sourceType="ListOfValues" html="True" dataSource="DECV/Student Visit;VSV/Student Visit;Phone;Phone;Email;Email;Skype;Skype;SMS;SMS;Other;Other">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="210"/>
								<Action actionName="Custom Code" actionCategory="General" id="211"/>
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
				<TextArea id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_CONTACT_TYPE_OTHER" fieldSource="COMM_CONTACT_TYPE_OTHER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMM CONTACT TYPE OTHER" caption="COMM CONTACT TYPE OTHER" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1COMM_CONTACT_TYPE_OTHER" errorControl="error_ContactType">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="151" maximumLength="200" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 200 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_PHONE_CONTACT" fieldSource="COMM_PHONE_CONTACT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMM PHONE CONTACT" caption="COMM PHONE CONTACT" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1COMM_PHONE_CONTACT" sourceType="ListOfValues" dataSource="Yes - Phone;Yes - Phone contact;No - Has difficulty;No - Has difficulty;No - overseas;No - overseas;No - social phobia;No - social phobia;No - other;No - other" html="True">
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
				<TextArea id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CARER_CONTACT_METHOD" fieldSource="CARER_CONTACT_METHOD" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CARER CONTACT METHOD" caption="CARER CONTACT METHOD" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1CARER_CONTACT_METHOD" errorControl="error_CarerContactMethod">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="152" maximumLength="50" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 50 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CARER_SUPERVISOR_NAME" fieldSource="CARER_SUPERVISOR_NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CARER SUPERVISOR NAME" caption="CARER SUPERVISOR NAME" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1CARER_SUPERVISOR_NAME" errorControl="error_CarerContactMethod">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="153" maximumLength="50" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 50 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="36" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="CARER_SUPERVISOR_ROLE" fieldSource="CARER_SUPERVISOR_ROLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CARER SUPERVISOR ROLE" caption="CARER SUPERVISOR ROLE" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1CARER_SUPERVISOR_ROLE" dataSource="Y;Yes;N;No" errorControl="error_SupervisorRole">
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
				<TextBox id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CARER_ADDITIONAL" fieldSource="CARER_ADDITIONAL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CARER ADDITIONAL" caption="CARER ADDITIONAL" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="STUDENT_PROFILE1CARER_ADDITIONAL" errorControl="error_AddCarerInfo">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="154" maximumLength="100" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 100 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextArea id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_WHENWHERE" fieldSource="ORGANISATION_WHENWHERE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ORGANISATION WHENWHERE" caption="ORGANISATION WHENWHERE" required="False" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILE1ORGANISATION_WHENWHERE" errorControl="error_Workspace">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="157" maximumLength="200" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 200 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="39" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="ORGANISATION_TIMETABLE" fieldSource="ORGANISATION_TIMETABLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ORGANISATION TIMETABLE" caption="ORGANISATION TIMETABLE" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1ORGANISATION_TIMETABLE" dataSource="Y;Yes;N;No">
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
				<ListBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_HARDWARE" fieldSource="ORGANISATION_HARDWARE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ORGANISATION HARDWARE" caption="ORGANISATION HARDWARE" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILE1ORGANISATION_HARDWARE" sourceType="ListOfValues" dataSource="Desktop;Desktop;Laptop;Laptop;Tablet (iPad);Tablet (iPad);Print;Print" errorControl="error_OrgHardware">
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
				<TextArea id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_ACCESS_INTERNET" fieldSource="ORGANISATION_ACCESS_INTERNET" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ORGANISATION ACCESS INTERNET" caption="ORGANISATION ACCESS INTERNET" required="False" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILE1ORGANISATION_ACCESS_INTERNET" errorControl="error_OrgInternet">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="158" maximumLength="200" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 200 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_PREVIOUS_SCHOOL" fieldSource="ORGANISATION_PREVIOUS_SCHOOL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ORGANISATION PREVIOUS SCHOOL" caption="ORGANISATION PREVIOUS SCHOOL" required="False" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILE1ORGANISATION_PREVIOUS_SCHOOL" errorControl="error_OrgPrevSchools">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="159" maximumLength="200" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 200 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_ACADEMIC_HISTORY" fieldSource="ORGANISATION_ACADEMIC_HISTORY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ORGANISATION ACADEMIC HISTORY" caption="ORGANISATION ACADEMIC HISTORY" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1ORGANISATION_ACADEMIC_HISTORY" errorControl="error_OrgAcademic">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="160" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="44" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="ORGANISATION_RECENTREPORT_FILED" fieldSource="ORGANISATION_RECENTREPORT_FILED" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ORGANISATION RECENTREPORT FILED" caption="ORGANISATION RECENTREPORT FILED" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1ORGANISATION_RECENTREPORT_FILED" dataSource="Y;Yes;N;No">
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
				<TextArea id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_GOALS" fieldSource="LEARNING_GOALS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="LEARNING GOALS" caption="LEARNING GOALS" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1LEARNING_GOALS" errorControl="error_LearnGoals">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="162" maximumLength="800" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 800 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
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
				<RadioButton id="53" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="PATHWAYS_CAREER_PLAN_FLAG" fieldSource="PATHWAYS_CAREER_PLAN_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS CAREER PLAN FLAG" caption="PATHWAYS CAREER PLAN FLAG" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1PATHWAYS_CAREER_PLAN_FLAG" dataSource="Y;Yes;N;No">
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
				<TextArea id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_CAREER_GOALS" fieldSource="PATHWAYS_CAREER_GOALS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS CAREER GOALS" caption="PATHWAYS CAREER GOALS" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1PATHWAYS_CAREER_GOALS" errorControl="error_Goals">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="164" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_CAREER_GOALS_MIDYEAR" fieldSource="PATHWAYS_CAREER_GOALS_MIDYEAR" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS CAREER GOALS MIDYEAR" caption="PATHWAYS CAREER GOALS MIDYEAR" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1PATHWAYS_CAREER_GOALS_MIDYEAR" errorControl="error_GoalsMidyear">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="165" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="PATHWAYS_CAREER_GOALS_MIDYEAR_DATE" fieldSource="PATHWAYS_CAREER_GOALS_MIDYEAR_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS CAREER GOALS MIDYEAR DATE" caption="PATHWAYS CAREER GOALS MIDYEAR DATE" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILE1PATHWAYS_CAREER_GOALS_MIDYEAR_DATE" format="d/m/yyyy" errorControl="error_GoalsMidyear">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="57" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="PATHWAYS_WORKEXP_FLAG" fieldSource="PATHWAYS_WORKEXP_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS WORKEXP FLAG" caption="PATHWAYS WORKEXP FLAG" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1PATHWAYS_WORKEXP_FLAG" dataSource="Y;Yes;N;No" errorControl="error_WorkExp910">
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
				<TextArea id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_WORKEXP_DETAILS" fieldSource="PATHWAYS_WORKEXP_DETAILS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS WORKEXP DETAILS" caption="PATHWAYS WORKEXP DETAILS" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1PATHWAYS_WORKEXP_DETAILS" errorControl="error_WorkExp910">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="166" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_PARTTIMEJOBS" fieldSource="PATHWAYS_PARTTIMEJOBS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS PARTTIMEJOBS" caption="PATHWAYS PARTTIMEJOBS" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILE1PATHWAYS_PARTTIMEJOBS" errorControl="error_PartTimeJobs">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="167" maximumLength="400" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 400 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="60" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="PATHWAYS_ENDYEAR_INTENTIONS_FLAG" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS ENDYEAR INTENTIONS FLAG" caption="PATHWAYS ENDYEAR INTENTIONS FLAG" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1PATHWAYS_ENDYEAR_INTENTIONS_FLAG" dataSource="Y;Yes;N;No" errorControl="error_EndYearDisc">
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
				<TextBox id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="PATHWAYS_ENDYEAR_INTENTIONS_DATE" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS ENDYEAR INTENTIONS DATE" caption="PATHWAYS ENDYEAR INTENTIONS DATE" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILE1PATHWAYS_ENDYEAR_INTENTIONS_DATE" format="d/m/yyyy" errorControl="error_EndYearDisc">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="62" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_FLAG" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS ENDYEAR INTENTIONS LOGGED FLAG" caption="PATHWAYS ENDYEAR INTENTIONS LOGGED FLAG" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_PROFILE1PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_FLAG" dataSource="Y;Yes;N;No" errorControl="error_EndYearLogged">
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
				<TextBox id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_DATE" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PATHWAYS ENDYEAR INTENTIONS LOGGED DATE" caption="PATHWAYS ENDYEAR INTENTIONS LOGGED DATE" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILE1PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_DATE" format="d/m/yyyy" errorControl="error_EndYearLogged">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
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
				<Button id="85" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert1" operation="Insert" wizardCaption="Add" PathID="STUDENT_PROFILE1Button_Insert1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="87" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update1" operation="Update" wizardCaption="Submit" PathID="STUDENT_PROFILE1Button_Update1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="89" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel1" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_PROFILE1Button_Cancel1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
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
				<Label id="127" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_BackgroundInfo" PathID="STUDENT_PROFILE1error_BackgroundInfo">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="128" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_ReasonsEnrol" PathID="STUDENT_PROFILE1error_ReasonsEnrol">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="129" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_StudentWellbeing" PathID="STUDENT_PROFILE1error_StudentWellbeing">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="130" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_ReturnMainstream" PathID="STUDENT_PROFILE1error_ReturnMainstream">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="131" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_ReturningStudent" PathID="STUDENT_PROFILE1error_ReturningStudent">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="132" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_StudentWellbeing2" PathID="STUDENT_PROFILE1error_StudentWellbeing2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="133" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_StudentInclusion" PathID="STUDENT_PROFILE1error_StudentInclusion">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="134" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_PrevPathways" PathID="STUDENT_PROFILE1error_PrevPathways">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="135" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_SupportDocs" PathID="STUDENT_PROFILE1error_SupportDocs">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="136" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_HobbiesInterests" PathID="STUDENT_PROFILE1error_HobbiesInterests">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="137" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_CommsVisit" PathID="STUDENT_PROFILE1error_CommsVisit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="138" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_ContactType" PathID="STUDENT_PROFILE1error_ContactType">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="139" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_CarerContactMethod" PathID="STUDENT_PROFILE1error_CarerContactMethod">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="140" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_SupervisorName" PathID="STUDENT_PROFILE1error_SupervisorName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="141" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_SupervisorRole" PathID="STUDENT_PROFILE1error_SupervisorRole">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="146" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_KeyProfSupports" PathID="STUDENT_PROFILE1error_KeyProfSupports">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="155" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_AddCarerInfo" PathID="STUDENT_PROFILE1error_AddCarerInfo">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="156" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_Workspace" PathID="STUDENT_PROFILE1error_Workspace">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="170" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_OrgHardware" PathID="STUDENT_PROFILE1error_OrgHardware">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="171" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_OrgInternet" PathID="STUDENT_PROFILE1error_OrgInternet">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="172" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_OrgPrevSchools" PathID="STUDENT_PROFILE1error_OrgPrevSchools">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="173" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_OrgAcademic" PathID="STUDENT_PROFILE1error_OrgAcademic">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
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
				<Label id="178" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_Goals" PathID="STUDENT_PROFILE1error_Goals">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="179" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_GoalsMidyear" PathID="STUDENT_PROFILE1error_GoalsMidyear">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="180" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_PartTimeJobs" PathID="STUDENT_PROFILE1error_PartTimeJobs">
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
				<Label id="183" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_WorkExp910" PathID="STUDENT_PROFILE1error_WorkExp910">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="184" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_EndYearDisc" PathID="STUDENT_PROFILE1error_EndYearDisc">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="185" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="error_EndYearLogged" PathID="STUDENT_PROFILE1error_EndYearLogged">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="188" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_NAME2" fieldSource="SUPPORT_KEY_PROFESSIONAL_NAME2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT KEY PROFESSIONAL NAME" caption="SUPPORT KEY PROFESSIONAL NAME 2" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1SUPPORT_KEY_PROFESSIONAL_NAME2" errorControl="error_KeyProfSupports">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="189" maximumLength="50" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 50 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="192" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_CONTACT2" fieldSource="SUPPORT_KEY_PROFESSIONAL_CONTACT2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUPPORT KEY PROFESSIONAL CONTACT" caption="SUPPORT KEY PROFESSIONAL CONTACT 2" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILE1SUPPORT_KEY_PROFESSIONAL_CONTACT2" errorControl="error_KeyProfSupports">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Length" actionCategory="Validation" id="193" maximumLength="50" errorMessage="&lt;span class='errormsg'&gt; Input cannot exceed 50 characters&lt;/span&gt;"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="202" visible="Yes" fieldSourceType="DBColumn" dataType="Text" defaultValue="Unchecked" name="cbENROL_FILE_CHECKED" PathID="STUDENT_PROFILE1cbENROL_FILE_CHECKED" fieldSource="ENROL_FILE_CHECKED" caption="DECV Enrolment File Checked?" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Hidden id="204" fieldSourceType="DBColumn" dataType="Text" name="Hidden_COMM_CONTACT_TYPE_MULTI" PathID="STUDENT_PROFILE1Hidden_COMM_CONTACT_TYPE_MULTI" fieldSource="COMM_CONTACT_TYPE_MULTI" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
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
						<Action actionName="Custom Code" actionCategory="General" id="213"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="103" name="hidden_LastUpdatedWhen" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="104"/>
						<Action actionName="Custom Code" actionCategory="General" id="212"/>
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
				<JoinTable id="222" tableName="STUDENT_PROFILE"/>
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
		<CodeFile id="3" language="VB" name="Student_Profile.aspx" forShow="True" url="Student_Profile.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Profile.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_ProfileDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
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
