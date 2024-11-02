<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" defaultDesign="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="Connection1" name="STUDENT_PROFILE" dataSource="STUDENT_PROFILE" errorSummator="Error" buttonsType="button" wizardRecordKey="STUDENT_PROFILE_ID" wizardCaption=" Add/Edit STUDENT PROFILE " wizardFormMethod="post" wizardThemeApplyTo="Page" returnPage="STUDENT_PROFILE_list.ccp" PathID="STUDENT_PROFILE">
<Components>
<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" parentName="STUDENT_PROFILE" PathID="STUDENT_PROFILEButton_Insert">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" parentName="STUDENT_PROFILE" PathID="STUDENT_PROFILEButton_Update">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" parentName="STUDENT_PROFILE" PathID="STUDENT_PROFILEButton_Delete">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="STUDENT ID" caption="STUDENT ID" unique="False" wizardSize="10" wizardMaxLength="12" PathID="STUDENT_PROFILESTUDENT_ID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" required="True" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ENROLMENT YEAR" caption="ENROLMENT YEAR" unique="False" wizardSize="10" wizardMaxLength="12" PathID="STUDENT_PROFILEENROLMENT_YEAR">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" unique="False" wizardSize="8" wizardMaxLength="8" PathID="STUDENT_PROFILELAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" wizardIsPassword="False" parentName="STUDENT_PROFILE" features="(assigned)" wizardCaption="LAST ALTERED DATE" caption="LAST ALTERED DATE" format="dd/mm/yyyy" unique="False" wizardSize="10" wizardMaxLength="100" PathID="STUDENT_PROFILELAST_ALTERED_DATE">
<Components/>
<Events/>
<Attributes/>
<Features>
<InlineDatePicker id="11" enabled="Yes" name="InlineDatePicker1" category="YahooUI">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</InlineDatePicker>
</Features>
</TextBox>
<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="BACKGROUND_INFO" fieldSource="BACKGROUND_INFO" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="BACKGROUND INFO" caption="BACKGROUND INFO" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEBACKGROUND_INFO">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENROL_REASONS" fieldSource="ENROL_REASONS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ENROL REASONS" caption="ENROL REASONS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEENROL_REASONS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WELLBEING_INCLUSION_CONCERNS" fieldSource="WELLBEING_INCLUSION_CONCERNS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="WELLBEING INCLUSION CONCERNS" caption="WELLBEING INCLUSION CONCERNS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEWELLBEING_INCLUSION_CONCERNS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EXPECT_RETURN_TO_SCHOOL" fieldSource="EXPECT_RETURN_TO_SCHOOL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="EXPECT RETURN TO SCHOOL" caption="EXPECT RETURN TO SCHOOL" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEEXPECT_RETURN_TO_SCHOOL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RETURN_STUDENT" fieldSource="RETURN_STUDENT" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="RETURN STUDENT" caption="RETURN STUDENT" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILERETURN_STUDENT">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="KNOWN_WELLBEING" fieldSource="KNOWN_WELLBEING" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="KNOWN WELLBEING" caption="KNOWN WELLBEING" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEKNOWN_WELLBEING">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="KNOWN_INCLUSION" fieldSource="KNOWN_INCLUSION" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="KNOWN INCLUSION" caption="KNOWN INCLUSION" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEKNOWN_INCLUSION">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="KNOWN_PATHWAYS" fieldSource="KNOWN_PATHWAYS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="KNOWN PATHWAYS" caption="KNOWN PATHWAYS" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEKNOWN_PATHWAYS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_AGENCY_REFERRAL" fieldSource="SUPPORT_DOCS_AGENCY_REFERRAL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT DOCS AGENCY REFERRAL" caption="SUPPORT DOCS AGENCY REFERRAL" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILESUPPORT_DOCS_AGENCY_REFERRAL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_PRATITIONER_REFERRAL" fieldSource="SUPPORT_DOCS_PRATITIONER_REFERRAL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT DOCS PRATITIONER REFERRAL" caption="SUPPORT DOCS PRATITIONER REFERRAL" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILESUPPORT_DOCS_PRATITIONER_REFERRAL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_SCHOOL_REFERRAL" fieldSource="SUPPORT_DOCS_SCHOOL_REFERRAL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT DOCS SCHOOL REFERRAL" caption="SUPPORT DOCS SCHOOL REFERRAL" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILESUPPORT_DOCS_SCHOOL_REFERRAL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_YOUNG_ADULT" fieldSource="SUPPORT_DOCS_YOUNG_ADULT" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT DOCS YOUNG ADULT" caption="SUPPORT DOCS YOUNG ADULT" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILESUPPORT_DOCS_YOUNG_ADULT">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_OTHER" fieldSource="SUPPORT_DOCS_OTHER" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT DOCS OTHER" caption="SUPPORT DOCS OTHER" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_DOCS_OTHER">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_NAME" fieldSource="SUPPORT_KEY_PROFESSIONAL_NAME" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL NAME" caption="SUPPORT KEY PROFESSIONAL NAME" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_NAME">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_CONTACT" fieldSource="SUPPORT_KEY_PROFESSIONAL_CONTACT" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL CONTACT" caption="SUPPORT KEY PROFESSIONAL CONTACT" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_CONTACT">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENGAGEMENT_HOBBIES_INTERESTS" fieldSource="ENGAGEMENT_HOBBIES_INTERESTS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ENGAGEMENT HOBBIES INTERESTS" caption="ENGAGEMENT HOBBIES INTERESTS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEENGAGEMENT_HOBBIES_INTERESTS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_VISIT_FLAG" fieldSource="COMM_VISIT_FLAG" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="COMM VISIT FLAG" caption="COMM VISIT FLAG" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILECOMM_VISIT_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="29" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_VISIT_DATE" fieldSource="COMM_VISIT_DATE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="COMM VISIT DATE" caption="COMM VISIT DATE" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILECOMM_VISIT_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_CONTACT_TYPE" fieldSource="COMM_CONTACT_TYPE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="COMM CONTACT TYPE" caption="COMM CONTACT TYPE" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILECOMM_CONTACT_TYPE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_CONTACT_TYPE_OTHER" fieldSource="COMM_CONTACT_TYPE_OTHER" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="COMM CONTACT TYPE OTHER" caption="COMM CONTACT TYPE OTHER" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILECOMM_CONTACT_TYPE_OTHER">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_PHONE_CONTACT" fieldSource="COMM_PHONE_CONTACT" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="COMM PHONE CONTACT" caption="COMM PHONE CONTACT" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILECOMM_PHONE_CONTACT">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CARER_CONTACT_METHOD" fieldSource="CARER_CONTACT_METHOD" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="CARER CONTACT METHOD" caption="CARER CONTACT METHOD" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILECARER_CONTACT_METHOD">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CARER_SUPERVISOR_NAME" fieldSource="CARER_SUPERVISOR_NAME" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="CARER SUPERVISOR NAME" caption="CARER SUPERVISOR NAME" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILECARER_SUPERVISOR_NAME">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CARER_SUPERVISOR_ROLE" fieldSource="CARER_SUPERVISOR_ROLE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="CARER SUPERVISOR ROLE" caption="CARER SUPERVISOR ROLE" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILECARER_SUPERVISOR_ROLE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="36" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CARER_ADDITIONAL" fieldSource="CARER_ADDITIONAL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="CARER ADDITIONAL" caption="CARER ADDITIONAL" unique="False" wizardSize="50" wizardMaxLength="100" PathID="STUDENT_PROFILECARER_ADDITIONAL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_WHENWHERE" fieldSource="ORGANISATION_WHENWHERE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ORGANISATION WHENWHERE" caption="ORGANISATION WHENWHERE" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILEORGANISATION_WHENWHERE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_TIMETABLE" fieldSource="ORGANISATION_TIMETABLE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ORGANISATION TIMETABLE" caption="ORGANISATION TIMETABLE" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEORGANISATION_TIMETABLE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_HARDWARE" fieldSource="ORGANISATION_HARDWARE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ORGANISATION HARDWARE" caption="ORGANISATION HARDWARE" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILEORGANISATION_HARDWARE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_ACCESS_INTERNET" fieldSource="ORGANISATION_ACCESS_INTERNET" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ORGANISATION ACCESS INTERNET" caption="ORGANISATION ACCESS INTERNET" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILEORGANISATION_ACCESS_INTERNET">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_PREVIOUS_SCHOOL" fieldSource="ORGANISATION_PREVIOUS_SCHOOL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ORGANISATION PREVIOUS SCHOOL" caption="ORGANISATION PREVIOUS SCHOOL" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILEORGANISATION_PREVIOUS_SCHOOL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_ACADEMIC_HISTORY" fieldSource="ORGANISATION_ACADEMIC_HISTORY" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ORGANISATION ACADEMIC HISTORY" caption="ORGANISATION ACADEMIC HISTORY" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEORGANISATION_ACADEMIC_HISTORY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ORGANISATION_RECENTREPORT_FILED" fieldSource="ORGANISATION_RECENTREPORT_FILED" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ORGANISATION RECENTREPORT FILED" caption="ORGANISATION RECENTREPORT FILED" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEORGANISATION_RECENTREPORT_FILED">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAUNCH_PAD_DONE" fieldSource="LAUNCH_PAD_DONE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="LAUNCH PAD DONE" caption="LAUNCH PAD DONE" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILELAUNCH_PAD_DONE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAUNCH_PAD_DONE_DATE" fieldSource="LAUNCH_PAD_DONE_DATE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="LAUNCH PAD DONE DATE" caption="LAUNCH PAD DONE DATE" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILELAUNCH_PAD_DONE_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_PROGRAM" fieldSource="LEARNING_PROGRAM" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="LEARNING PROGRAM" caption="LEARNING PROGRAM" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILELEARNING_PROGRAM">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_PROGRAM_DETAILS" fieldSource="LEARNING_PROGRAM_DETAILS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="LEARNING PROGRAM DETAILS" caption="LEARNING PROGRAM DETAILS" unique="False" wizardSize="50" wizardMaxLength="200" PathID="STUDENT_PROFILELEARNING_PROGRAM_DETAILS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_PROGRAM_CONSULT" fieldSource="LEARNING_PROGRAM_CONSULT" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="LEARNING PROGRAM CONSULT" caption="LEARNING PROGRAM CONSULT" unique="False" wizardSize="50" wizardMaxLength="150" PathID="STUDENT_PROFILELEARNING_PROGRAM_CONSULT">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LEARNING_GOALS" fieldSource="LEARNING_GOALS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="LEARNING GOALS" caption="LEARNING GOALS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILELEARNING_GOALS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SPECIAL_PROVISION_FLAG" fieldSource="SPECIAL_PROVISION_FLAG" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SPECIAL PROVISION FLAG" caption="SPECIAL PROVISION FLAG" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILESPECIAL_PROVISION_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SPECIAL_PROVISION_DETAILS" fieldSource="SPECIAL_PROVISION_DETAILS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SPECIAL PROVISION DETAILS" caption="SPECIAL PROVISION DETAILS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILESPECIAL_PROVISION_DETAILS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_CAREER_PLAN_FLAG" fieldSource="PATHWAYS_CAREER_PLAN_FLAG" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS CAREER PLAN FLAG" caption="PATHWAYS CAREER PLAN FLAG" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEPATHWAYS_CAREER_PLAN_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_CAREER_GOALS" fieldSource="PATHWAYS_CAREER_GOALS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS CAREER GOALS" caption="PATHWAYS CAREER GOALS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEPATHWAYS_CAREER_GOALS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_CAREER_GOALS_MIDYEAR" fieldSource="PATHWAYS_CAREER_GOALS_MIDYEAR" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS CAREER GOALS MIDYEAR" caption="PATHWAYS CAREER GOALS MIDYEAR" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEPATHWAYS_CAREER_GOALS_MIDYEAR">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_CAREER_GOALS_MIDYEAR_DATE" fieldSource="PATHWAYS_CAREER_GOALS_MIDYEAR_DATE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS CAREER GOALS MIDYEAR DATE" caption="PATHWAYS CAREER GOALS MIDYEAR DATE" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILEPATHWAYS_CAREER_GOALS_MIDYEAR_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_WORKEXP_FLAG" fieldSource="PATHWAYS_WORKEXP_FLAG" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS WORKEXP FLAG" caption="PATHWAYS WORKEXP FLAG" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEPATHWAYS_WORKEXP_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_WORKEXP_DETAILS" fieldSource="PATHWAYS_WORKEXP_DETAILS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS WORKEXP DETAILS" caption="PATHWAYS WORKEXP DETAILS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEPATHWAYS_WORKEXP_DETAILS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_PARTTIMEJOBS" fieldSource="PATHWAYS_PARTTIMEJOBS" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS PARTTIMEJOBS" caption="PATHWAYS PARTTIMEJOBS" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEPATHWAYS_PARTTIMEJOBS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_ENDYEAR_INTENTIONS_FLAG" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_FLAG" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS ENDYEAR INTENTIONS FLAG" caption="PATHWAYS ENDYEAR INTENTIONS FLAG" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEPATHWAYS_ENDYEAR_INTENTIONS_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_ENDYEAR_INTENTIONS_DATE" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_DATE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS ENDYEAR INTENTIONS DATE" caption="PATHWAYS ENDYEAR INTENTIONS DATE" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILEPATHWAYS_ENDYEAR_INTENTIONS_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_FLAG" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_FLAG" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS ENDYEAR INTENTIONS LOGGED FLAG" caption="PATHWAYS ENDYEAR INTENTIONS LOGGED FLAG" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEPATHWAYS_ENDYEAR_INTENTIONS_LOGGED_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_DATE" fieldSource="PATHWAYS_ENDYEAR_INTENTIONS_LOGGED_DATE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="PATHWAYS ENDYEAR INTENTIONS LOGGED DATE" caption="PATHWAYS ENDYEAR INTENTIONS LOGGED DATE" unique="False" wizardSize="20" wizardMaxLength="20" PathID="STUDENT_PROFILEPATHWAYS_ENDYEAR_INTENTIONS_LOGGED_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="REVIEW_PROGRESS_END_SEM1" fieldSource="REVIEW_PROGRESS_END_SEM1" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="REVIEW PROGRESS END SEM1" caption="REVIEW PROGRESS END SEM1" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEREVIEW_PROGRESS_END_SEM1">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="REVIEW_PROGRESS_END_SEM2" fieldSource="REVIEW_PROGRESS_END_SEM2" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="REVIEW PROGRESS END SEM2" caption="REVIEW PROGRESS END SEM2" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEREVIEW_PROGRESS_END_SEM2">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_ENGLANG_LP" fieldSource="ASSESS_ENGLANG_LP" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS ENGLANG LP" caption="ASSESS ENGLANG LP" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_ENGLANG_LP">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="66" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_ENGLIT_LP" fieldSource="ASSESS_ENGLIT_LP" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS ENGLIT LP" caption="ASSESS ENGLIT LP" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_ENGLIT_LP">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_MATH_LP" fieldSource="ASSESS_MATH_LP" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS MATH LP" caption="ASSESS MATH LP" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_MATH_LP">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="68" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_PATSCIENCE_LP" fieldSource="ASSESS_PATSCIENCE_LP" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS PATSCIENCE LP" caption="ASSESS PATSCIENCE LP" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_PATSCIENCE_LP">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="69" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_ENGLANG_RL" fieldSource="ASSESS_ENGLANG_RL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS ENGLANG RL" caption="ASSESS ENGLANG RL" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_ENGLANG_RL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="70" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_ENGLIT_RL" fieldSource="ASSESS_ENGLIT_RL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS ENGLIT RL" caption="ASSESS ENGLIT RL" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_ENGLIT_RL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="71" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_MATH_RL" fieldSource="ASSESS_MATH_RL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS MATH RL" caption="ASSESS MATH RL" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_MATH_RL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="72" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ASSESS_PATSCIENCE_RL" fieldSource="ASSESS_PATSCIENCE_RL" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ASSESS PATSCIENCE RL" caption="ASSESS PATSCIENCE RL" unique="False" wizardSize="10" wizardMaxLength="10" PathID="STUDENT_PROFILEASSESS_PATSCIENCE_RL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="73" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_NAME2" fieldSource="SUPPORT_KEY_PROFESSIONAL_NAME2" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL NAME2" caption="SUPPORT KEY PROFESSIONAL NAME2" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_NAME2">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="74" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_CONTACT2" fieldSource="SUPPORT_KEY_PROFESSIONAL_CONTACT2" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL CONTACT2" caption="SUPPORT KEY PROFESSIONAL CONTACT2" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_CONTACT2">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="75" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENROL_FILE_CHECKED" fieldSource="ENROL_FILE_CHECKED" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="ENROL FILE CHECKED" caption="ENROL FILE CHECKED" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILEENROL_FILE_CHECKED">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="76" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_CONTACT_TYPE_MULTI" fieldSource="COMM_CONTACT_TYPE_MULTI" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="COMM CONTACT TYPE MULTI" caption="COMM CONTACT TYPE MULTI" unique="False" wizardSize="50" wizardMaxLength="150" PathID="STUDENT_PROFILECOMM_CONTACT_TYPE_MULTI">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="77" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CONFIDENTIAL_DOCUMENTS_CHECKED" fieldSource="CONFIDENTIAL_DOCUMENTS_CHECKED" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="CONFIDENTIAL DOCUMENTS CHECKED" caption="CONFIDENTIAL DOCUMENTS CHECKED" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILECONFIDENTIAL_DOCUMENTS_CHECKED">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="78" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RISK_FACTORS_CHECKED" fieldSource="RISK_FACTORS_CHECKED" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="RISK FACTORS CHECKED" caption="RISK FACTORS CHECKED" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILERISK_FACTORS_CHECKED">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="79" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_DOCS_SPORTS_PERFORMANCE" fieldSource="SUPPORT_DOCS_SPORTS_PERFORMANCE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT DOCS SPORTS PERFORMANCE" caption="SUPPORT DOCS SPORTS PERFORMANCE" unique="False" wizardSize="2" wizardMaxLength="2" PathID="STUDENT_PROFILESUPPORT_DOCS_SPORTS_PERFORMANCE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="80" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_NAME3" fieldSource="SUPPORT_KEY_PROFESSIONAL_NAME3" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL NAME3" caption="SUPPORT KEY PROFESSIONAL NAME3" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_NAME3">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="81" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_CONTACT3" fieldSource="SUPPORT_KEY_PROFESSIONAL_CONTACT3" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL CONTACT3" caption="SUPPORT KEY PROFESSIONAL CONTACT3" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_CONTACT3">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="82" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_ROLE" fieldSource="SUPPORT_KEY_PROFESSIONAL_ROLE" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL ROLE" caption="SUPPORT KEY PROFESSIONAL ROLE" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_ROLE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="83" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_ROLE2" fieldSource="SUPPORT_KEY_PROFESSIONAL_ROLE2" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL ROLE2" caption="SUPPORT KEY PROFESSIONAL ROLE2" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_ROLE2">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="84" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPPORT_KEY_PROFESSIONAL_ROLE3" fieldSource="SUPPORT_KEY_PROFESSIONAL_ROLE3" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SUPPORT KEY PROFESSIONAL ROLE3" caption="SUPPORT KEY PROFESSIONAL ROLE3" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_PROFILESUPPORT_KEY_PROFESSIONAL_ROLE3">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="85" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMM_INTAKE_CONTACT_TYPE_MULTI" fieldSource="COMM_INTAKE_CONTACT_TYPE_MULTI" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="COMM INTAKE CONTACT TYPE MULTI" caption="COMM INTAKE CONTACT TYPE MULTI" unique="False" wizardSize="50" wizardMaxLength="150" PathID="STUDENT_PROFILECOMM_INTAKE_CONTACT_TYPE_MULTI">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="86" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCHOOL_ENGAGEMENT_DIFFICULTIES" fieldSource="SCHOOL_ENGAGEMENT_DIFFICULTIES" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="SCHOOL ENGAGEMENT DIFFICULTIES" caption="SCHOOL ENGAGEMENT DIFFICULTIES" unique="False" wizardSize="30" wizardMaxLength="30" PathID="STUDENT_PROFILESCHOOL_ENGAGEMENT_DIFFICULTIES">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="87" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WHY_ARE_YOU_ENROLLING_AT_VSV" fieldSource="WHY_ARE_YOU_ENROLLING_AT_VSV" required="False" wizardIsPassword="False" parentName="STUDENT_PROFILE" wizardCaption="WHY ARE YOU ENROLLING AT VSV" caption="WHY ARE YOU ENROLLING AT VSV" unique="False" wizardSize="50" wizardMaxLength="250" PathID="STUDENT_PROFILEWHY_ARE_YOU_ENROLLING_AT_VSV">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
</Components>
<Events/>
<TableParameters>
<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="STUDENT_PROFILE_ID" parameterSource="STUDENT_PROFILE_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
</TableParameters>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
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
</Components>
	<CodeFiles>
	</CodeFiles>
	<SecurityGroups>
<Group id="88" groupID="1"/>
</SecurityGroups>
<CachingParameters/>
<Attributes/>
<Features/>
<Events/>
</Page>
