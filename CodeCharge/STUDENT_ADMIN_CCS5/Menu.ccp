<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False" pasteActions="pasteActions">
	<Components>
		<IncludePage id="16" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Label id="28" fieldSourceType="CodeExpression" dataType="Text" html="False" name="lblUserID" fieldSource="session(&quot;UserLogin&quot;).ToUpper">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHeadingEnrolment" defaultValue="&quot;Enrolment Details&quot;">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHeadingDespatch" defaultValue="&quot;Despatch&quot;">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Link id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_EnrolNewStudent" hrefSource="StudentEnrolment_InitialCheck.ccp" wizardUseTemplateBlock="False" removeParameters="STUDENT_ID" PathID="link_EnrolNewStudent">
			<Components/>
			<Events/>
			<LinkParameters>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkdespatch_1" hrefSource="Despatch_AssignmentReceipt_simple.aspx" wizardUseTemplateBlock="False" PathID="linkdespatch_1">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_ModifyEnrolmentDetails" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False" PathID="link_ModifyEnrolmentDetails">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkdespatch_2" hrefSource="Despatch_AssignmentReturn_simple.aspx" wizardUseTemplateBlock="False" PathID="linkdespatch_2">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHeadingTeachers" defaultValue="&quot;Teachers&quot;">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Link id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_TeacgerAllocations" hrefSource="TeacherAllocations.ccp" wizardUseTemplateBlock="False" PathID="link_TeacgerAllocations">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_SubjectWithdrawals" wizardUseTemplateBlock="False" removeParameters="s_STUDENT_ID" hrefSource="Subject_Withdrawals.ccp" PathID="link_SubjectWithdrawals">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_StudentAmendments" hrefSource="StudentAmendment.ccp" wizardUseTemplateBlock="False" PathID="link_StudentAmendments">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Panel id="32" visible="True" name="Panel_controltables" pasteAsReplace="pasteAsReplace" PathID="Panel_controltables" pasteActions="pasteActions">
			<Components>
				<Link id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="SCHOOL_list" hrefSource="SCHOOL_list.ccp" wizardDefaultValue="SCHOOL" PathID="Panel_controltablesSCHOOL_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="ASSIGNMENT_link" hrefSource="ASSIGNMENT_list.ccp" wizardUseTemplateBlock="False" PathID="Panel_controltablesASSIGNMENT_link">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="COUNTRY_OF_BIRT_list" hrefSource="COUNTRY_OF_BIRT_list.ccp" wizardDefaultValue="COUNTRY OF BIRTH" PathID="Panel_controltablesCOUNTRY_OF_BIRT_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="STAFF_list" hrefSource="STAFF_list.ccp" wizardDefaultValue="STAFF" PathID="Panel_controltablesSTAFF_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="36" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="CONTRIBUTION_list" hrefSource="CONTRIBUTION_list.ccp" wizardDefaultValue="CONTRIBUTION" PathID="Panel_controltablesCONTRIBUTION_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="GOVERNMENT_ALLO_list" hrefSource="GOVERNMENT_ALLO_list.ccp" wizardDefaultValue="GOVERNMENT ALLOWANCE" PathID="Panel_controltablesGOVERNMENT_ALLO_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link5" hrefSource="SUBJECT_list.ccp" wizardUseTemplateBlock="False" PathID="Panel_controltablesLink5">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="ENROLMENT_CATEG_list" hrefSource="ENROLMENT_CATEG_list.ccp" wizardDefaultValue="ENROLMENT CATEGORY" PathID="Panel_controltablesENROLMENT_CATEG_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="KEY_LEARNING_AR_list" hrefSource="KEY_LEARNING_AR_list.ccp" wizardDefaultValue="KEY LEARNING AREA" PathID="Panel_controltablesKEY_LEARNING_AR_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="PROGRESS_CODE_list" hrefSource="PROGRESS_CODE_list.ccp" wizardDefaultValue="PROGRESS CODE" PathID="Panel_controltablesPROGRESS_CODE_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="LANGUAGE_list" hrefSource="LANGUAGE_list.ccp" wizardDefaultValue="LANGUAGE" PathID="Panel_controltablesLANGUAGE_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="REGION_list" hrefSource="REGION_list.ccp" wizardDefaultValue="REGION" PathID="Panel_controltablesREGION_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="SCHOOL_TYPE_list" hrefSource="SCHOOL_TYPE_list.ccp" wizardDefaultValue="SCHOOL TYPE" PathID="Panel_controltablesSCHOOL_TYPE_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="TXN_CODE_list" hrefSource="TXN_CODE_list.ccp" wizardDefaultValue="TXN CODE" PathID="Panel_controltablesTXN_CODE_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link4" hrefSource="Update_Utilities.ccp" wizardUseTemplateBlock="False" PathID="Panel_controltablesLink4">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="WITHDRAWAL_REAS_list" hrefSource="WITHDRAWAL_REAS_list.ccp" wizardDefaultValue="WITHDRAWAL REASON" PathID="Panel_controltablesWITHDRAWAL_REAS_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="57" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblLastLogin" PathID="Panel_controltableslblLastLogin">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="58" name="lblLastLogin" sourceType="Cookie" sourceName="DECV_PROD2008Login"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="FTE_RULES_list" hrefSource="FTE_RULES_list.ccp" wizardDefaultValue="FTE RULES" PathID="Panel_controltablesFTE_RULES_list">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="WITHDRAWAL_EXIT_list" hrefSource="WITHDRAWAL_EXIT_list.ccp" wizardDefaultValue="WITHDRAWAL REASON" PathID="Panel_controltablesWITHDRAWAL_EXIT_list" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="STAFF_STUDENT_SUPERVISORS_link" PathID="Panel_controltablesSTAFF_STUDENT_SUPERVISORS_link" hrefSource="STAFF_STUDENT_SUPERVISORS.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ManageStaffInductions" PathID="Panel_controltableslink_ManageStaffInductions" hrefSource="Staff_Inductions_ByCourse_list.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="84" fieldSourceType="CodeExpression" dataType="Text" html="False" name="lblSMTP_Server" PathID="Panel_controltableslblSMTP_Server" fieldSource="System.Configuration.ConfigurationSettings.AppSettings(&quot;smtp_servername&quot;)" defaultValue="&quot;none&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="86" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="MODULES_REF_link" PathID="Panel_controltablesMODULES_REF_link" hrefSource="REF_MODULE_CODES.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Module Codes','textSourceDB':'','hrefSource':'REF_MODULE_CODES.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}"><Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="90" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="COMMENT_TYPE_maint" hrefSource="COMMENT_TYPE_maint.ccp" wizardDefaultValue="WITHDRAWAL REASON" PathID="Panel_controltablesCOMMENT_TYPE_maint" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Comment Types','textSourceDB':'','hrefSource':'COMMENT_TYPE_maint.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
		<IncludePage id="17" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_TeacherMyPastoral" PathID="link_TeacherMyPastoral" hrefSource="PastoralTeacher_StudentList.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkdespatch_3" hrefSource="Despatch_UpdatebyYear.ccp" wizardUseTemplateBlock="False" removeParameters="s_YEAR_LEVEL" PathID="linkdespatch_3">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_TeleformsEnrolments" hrefSource="OnlineEnrolmentStatus.aspx" wizardUseTemplateBlock="True" PathID="link_TeleformsEnrolments" linkProperties="{'textSource':'Online Enrolments Status','textSourceDB':'','hrefSource':'OnlineEnrolmentStatus.aspx','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkdespatch_4" hrefSource="Despatch_UpdatebyEnrolDate.ccp" wizardUseTemplateBlock="False" removeParameters="s_YEAR_LEVEL" PathID="linkdespatch_4">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkdespatch_5" hrefSource="Despatch_AssignmentMaintain.ccp" wizardUseTemplateBlock="False" removeParameters="s_YEAR_LEVEL" PathID="linkdespatch_5">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_VSREnrolments" hrefSource="VSREnrolment.ccp" wizardUseTemplateBlock="False" PathID="link_VSREnrolments">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_ModifyEnrolmentDetails_AddressSearch" hrefSource="MaintainSearchRequest_Reception.ccp" wizardUseTemplateBlock="False" PathID="link_ModifyEnrolmentDetails_AddressSearch">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_TeacherMyClassLists" PathID="link_TeacherMyClassLists" hrefSource="Student_ClassList_Reports.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ManageStaffInductions1" PathID="link_ManageStaffInductions1" hrefSource="Staff_Inductions_ByCourse_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="66" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ViewStaffInductions" PathID="link_ViewStaffInductions" hrefSource="Staff_Inductions_ByStaff.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="68" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="linkdespatch_6" hrefSource="Student_Exit_Track.ccp" wizardUseTemplateBlock="False" removeParameters="s_STUDENT_ID;s_ENROLMENT_YEAR" PathID="linkdespatch_6">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="75" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="MenuSearch" wizardCaption="Search View Maintain Search Request " wizardOrientation="Vertical" wizardFormMethod="get" returnPage="StudentSummary.ccp" PathID="MenuSearch" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<TextBox id="77" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="MenuSearchSTUDENT_ID" caption="Student ID">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="79" name="STUDENT_ID" regExp="^\d{5,6}$" errorMessage="Student ID is 5-6 digits only."/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="76" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="MenuSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="80" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENROLMENT_YEAR" PathID="MenuSearchENROLMENT_YEAR" defaultValue="year(now())">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Set Focus" actionCategory="General" id="85" name="STUDENT_ID"/>
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
		<Label id="23" fieldSourceType="CodeExpression" dataType="Text" html="False" name="lblUserLevel" fieldSource="session(&quot;GroupID&quot;)">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Label id="52" fieldSourceType="CodeExpression" dataType="Text" html="False" name="lblAccessGroups" fieldSource="session(&quot;AccessGroups&quot;)">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Link id="81" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_TeacherMyCommentSearch" PathID="link_TeacherMyCommentSearch" hrefSource="Student_Comments_Search.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="82" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ManageSubjectTeacherAllocations" PathID="link_ManageSubjectTeacherAllocations" hrefSource="Subject_TeacherAllocations_maint.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Manage Subject Teacher Allocations','textSourceDB':'','hrefSource':'Subject_TeacherAllocations_maint.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="87" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ManageAssignmentDescriptions" PathID="link_ManageAssignmentDescriptions" hrefSource="ASSIGNMENT_maint_multiple.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Manage Assignment Descriptions','textSourceDB':'','hrefSource':'ASSIGNMENT_maint_multiple.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Label id="88" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHeadingCoords" defaultValue="&quot;Coordinators&quot;">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Link id="89" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_GreenLetters" hrefSource="Student_GreenLetters_maint.ccp" wizardUseTemplateBlock="False" PathID="link_GreenLetters" linkProperties="{'textSource':'Manage Green Letters','textSourceDB':'','hrefSource':'Student_GreenLetters_maint.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="91" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ManageSubjectTeacherCourseDevs" PathID="link_ManageSubjectTeacherCourseDevs" hrefSource="Subject_CourseDev_maint.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Manage Course Devs','textSourceDB':'','hrefSource':'Subject_CourseDev_maint.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="83" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_UnallocatedStudentTeachers" PathID="link_UnallocatedStudentTeachers" hrefSource="StudentSubject_TeachersNotYetAllocated.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="92" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_SchoolEdit" hrefSource="SCHOOL_list.ccp" wizardUseTemplateBlock="False" PathID="link_SchoolEdit" linkProperties="{'textSource':'Update School Address','textSourceDB':'','hrefSource':'SCHOOL_list.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events>
			</Events>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="94" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ManageSubjectTeacherCRT" PathID="link_ManageSubjectTeacherCRT" hrefSource="Subject_CRT_maint.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Manage CRT Subject Teachers','textSourceDB':'','hrefSource':'Subject_CRT_maint.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="95" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_ManageLAd" PathID="Link_ManageLAd" hrefSource="Staff_LAdAllocation_maint.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Manage LAd Allocations','textSourceDB':'','hrefSource':'Staff_LAdAllocation_maint.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}"><Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="62" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_TeacherMyDefaulting" PathID="link_TeacherMyDefaulting" hrefSource="Student_SubjectStatus_Maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="96" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_TeacherMyClassListsExtender" PathID="link_TeacherMyClassListsExtender" hrefSource="Student_ClassList_Extender.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Class List - Extender','textSourceDB':'','hrefSource':'Student_ClassList_Extender.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="97" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_TimetableIntegration" PathID="link_TimetableIntegration" hrefSource="TimetableIntegration.aspx" wizardUseTemplateBlock="False" linkProperties="{&quot;textSource&quot;:&quot;Manage Assignment Descriptions&quot;,&quot;textSourceDB&quot;:&quot;&quot;,&quot;hrefSource&quot;:&quot;TimetableIntegration.aspx&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;&quot;,&quot;target&quot;:&quot;&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;length&quot;:0,&quot;objectType&quot;:&quot;linkParameters&quot;}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Menu.aspx" forShow="True" url="Menu.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Menu.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="MenuDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="51"/>
			</Actions>
		</Event>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="98"/>
			</Actions>
		</Event>
	</Events>
</Page>
