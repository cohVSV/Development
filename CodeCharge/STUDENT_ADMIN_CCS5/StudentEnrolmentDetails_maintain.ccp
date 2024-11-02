<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="79" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_ENROLMENT" dataSource="STUDENT_ENROLMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT ENROLMENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" activeCollection="TableParameters" PathID="STUDENT_ENROLMENT" visible="Dynamic" features="(assigned)" pasteActions="pasteActions">
			<Components>
				<ListBox id="54" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="PASTORAL_CARE_ID" wizardEmptyCaption="Select Value" fieldSource="PASTORAL_CARE_ID" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" boundColumn="STAFF_ID" textColumn="staffname" activeCollection="TableParameters" orderBy="status_type, staffname" PathID="STUDENT_ENROLMENTPASTORAL_CARE_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="437"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="438" tableName="View_StaffList_Active_Inactive"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DOCS_LAST_REVIEWED_DATE" fieldSource="DOCS_LAST_REVIEWED_DATE" format="dd/mm/yy" PathID="STUDENT_ENROLMENTDOCS_LAST_REVIEWED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="65" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="NEW_DOCS_REQUIRED" fieldSource="NEW_DOCS_REQUIRED" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTNEW_DOCS_REQUIRED">
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
				<Label id="77" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="STUDENT_ENROLMENT_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_ENROLMENTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_ENROLMENTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_ENROLMENTButton_Cancel" returnPage="StudentSummary.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Image id="122" visible="Yes" fieldSourceType="CodeExpression" dataType="Text" name="ajaxBusy" PathID="STUDENT_ENROLMENTajaxBusy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="78" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="STUDENT_ENROLMENT_LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="170" fieldSourceType="DBColumn" dataType="Text" name="Hidden_last_altered_by" PathID="STUDENT_ENROLMENTHidden_last_altered_by" fieldSource="STUDENT_ENROLMENT_LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="171" fieldSourceType="DBColumn" dataType="Date" name="Hidden_last_altered_date" PathID="STUDENT_ENROLMENTHidden_last_altered_date" fieldSource="STUDENT_ENROLMENT_LAST_ALTERED_DATE" format="yyyy-mm-dd H:nn" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="208" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="YEAR_LEVEL_REPORTING" fieldSource="YEAR_LEVEL_REPORTING" required="False" caption="REPORTING YEAR LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled" PathID="STUDENT_ENROLMENTYEAR_LEVEL_REPORTING" _valueOfList="30" _nameOfList="Home Schooled">
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
				<Hidden id="218" fieldSourceType="DBColumn" dataType="Text" name="hidden_yearlevel_original" PathID="STUDENT_ENROLMENThidden_yearlevel_original">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="219" name="hidden_yearlevel_original" sourceType="Expression" sourceName="item.YEAR_LEVEL.GetFormattedValue()" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="221" fieldSourceType="DBColumn" dataType="Text" name="hidden_yearlevel_original1" PathID="STUDENT_ENROLMENThidden_yearlevel_original1">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="222" name="hidden_yearlevel_original1" sourceType="Expression" sourceName="item.YEAR_LEVEL_REPORTING.GetFormattedValue()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="236" fieldSourceType="DBColumn" dataType="Text" name="Hidden_PASTORAL_CARE_ID" PathID="STUDENT_ENROLMENTHidden_PASTORAL_CARE_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="237" name="Hidden_PASTORAL_CARE_ID" sourceType="Expression" sourceName="item.PASTORAL_CARE_ID.GetFormattedValue()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="238" fieldSourceType="DBColumn" dataType="Text" name="PASTORAL_ALLOC_BY" PathID="STUDENT_ENROLMENTPASTORAL_ALLOC_BY" fieldSource="PASTORAL_ALLOC_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="275" fieldSourceType="DBColumn" dataType="Date" name="PASTORAL_ALLOC_DATE" PathID="STUDENT_ENROLMENTPASTORAL_ALLOC_DATE" fieldSource="PASTORAL_ALLOC_DATE" format="yyyy-mm-dd H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="280" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAd_ALLOC_BY" PathID="STUDENT_ENROLMENTLAd_ALLOC_BY" fieldSource="PASTORAL_ALLOC_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="281" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAd_ALLOC_DATE" PathID="STUDENT_ENROLMENTLAd_ALLOC_DATE" fieldSource="PASTORAL_ALLOC_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="223" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="ATAR_REQUIRED" caption="ATAR Required" fieldSource="ATAR_REQUIRED" dataSource="Y;Yes - ATAR Required;N;No - ATAR NOT Required" defaultValue="&quot;Y&quot;" required="False" PathID="STUDENT_ENROLMENTATAR_REQUIRED">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="282" message="NOTE: Written advice MUST be received from Student when changing to [No - ATAR Not Required]

(Nothing needed for [Yes - ATAR Required])"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<RadioButton id="216" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="PRIVACY_PERMISSION" caption="PRIVACY PERMISSION" fieldSource="PRIVACY_PERMISSION" connection="connDECVPRODSQL2005" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTPRIVACY_PERMISSION" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="398"/>
							</Actions>
						</Event>
					</Events>
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
				<RadioButton id="182" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="INTERVIEW_INTAKE_DONE" caption="INTERVIEW INTAKE DONE?" fieldSource="INTAKE_INTERVIEW_DONE" connection="connDECVPRODSQL2005" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTINTERVIEW_INTAKE_DONE">
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
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RECEIPT_NO" caption="RECEIPT NO" fieldSource="RECEIPT_NO" required="False" PathID="STUDENT_ENROLMENTRECEIPT_NO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="176" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="lbEXIT_DESTINATION" caption="EXIT DESTINATION" fieldSource="WITHDRAWAL_EXIT_DESTINATION" connection="connDECVPRODSQL2005" dataSource="WITHDRAWAL_EXIT_DESTINATION" boundColumn="WD_DEST_ID" textColumn="EXIT_DESTINATION_DESCRIPTION" orderBy="DISPLAY_ORDER" PathID="STUDENT_ENROLMENTlbEXIT_DESTINATION">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="181" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="DISPLAY_ORDER &gt; 0"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="178" tableName="WITHDRAWAL_EXIT_DESTINATION" posWidth="214" posHeight="190" posLeft="10" posTop="10"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="179" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="WD_DEST_ID"/>
						<Field id="180" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="EXIT_DESTINATION_DESCRIPTION"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<ListBox id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="WITHDRAWAL_REASON_ID" caption="WITHDRAWAL REASON ID" fieldSource="WITHDRAWAL_REASON_ID" connection="connDECVPRODSQL2005" dataSource="WITHDRAWAL_REASON" boundColumn="WITHDRAWAL_REASON_ID" textColumn="WITHDRAWAL_REASON" orderBy="WITHDRAWAL_REASON" required="False" PathID="STUDENT_ENROLMENTWITHDRAWAL_REASON_ID">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="232" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="231" tableName="WITHDRAWAL_REASON" posWidth="160" posHeight="136" posLeft="10" posTop="10"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="233" tableName="WITHDRAWAL_REASON" fieldName="WITHDRAWAL_REASON_ID"/>
						<Field id="234" tableName="WITHDRAWAL_REASON" fieldName="WITHDRAWAL_REASON"/>
					</Fields>
					<PKFields>
						<PKField id="235" tableName="WITHDRAWAL_REASON" fieldName="WITHDRAWAL_REASON_ID" dataType="Float"/>
					</PKFields>
					<Attributes/>
					<Features/>
				</ListBox>
				<ListBox id="117" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="list_Region" fieldSource="REGION_ID" connection="connDECVPRODSQL2005" dataSource="REGION" boundColumn="REGION_ID" textColumn="region_name_display" orderBy="REGION_NAME" PathID="STUDENT_ENROLMENTlist_Region">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="118" tableName="REGION" posWidth="160" posHeight="180" posLeft="10" posTop="10"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="119" tableName="REGION" fieldName="REGION_ID"/>
						<Field id="120" fieldName="rtrim(REGION_NAME)" alias="region_name_display" isExpression="True"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<TextBox id="116" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="region_approval_number" fieldSource="REGION_APPROVAL_NUMBER" PathID="STUDENT_ENROLMENTregion_approval_number">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="64" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="ELIGIBLE_FOR_FUNDING" fieldSource="ELIGIBLE_FOR_FUNDING" connection="connDECVPRODSQL2005" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTELIGIBLE_FOR_FUNDING">
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
				<RadioButton id="62" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="PAID_ON_ENROLMENT" fieldSource="PAID_ON_ENROLMENT" connection="connDECVPRODSQL2005" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTPAID_ON_ENROLMENT">
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
				<RadioButton id="59" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="ELIGIBLE_FOR_DISCOUNT" fieldSource="ELIGIBLE_FOR_DISCOUNT" connection="connDECVPRODSQL2005" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTELIGIBLE_FOR_DISCOUNT">
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
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="14" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="YEAR_LEVEL" caption="YEAR LEVEL" fieldSource="YEAR_LEVEL" connection="connDECVPRODSQL2005" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled" required="True" PathID="STUDENT_ENROLMENTYEAR_LEVEL">
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
				</ListBox>
				<ListBox id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="ENROLMENT_STATUS" caption="ENROLMENT STATUS" fieldSource="ENROLMENT_STATUS" connection="connDECVPRODSQL2005" dataSource="E;Enrolled;N;Not Enrolled;F;Future Enrolment" required="True" PathID="STUDENT_ENROLMENTENROLMENT_STATUS">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="395"/>
							</Actions>
						</Event>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="396"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<DatePicker id="11" name="DatePicker_WITHDRAWAL_DATE" style="Styles/Blueprint/Style.css" control="WITHDRAWAL_DATE" PathID="STUDENT_ENROLMENTDatePicker_WITHDRAWAL_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="WITHDRAWAL_DATE" caption="WITHDRAWAL DATE" fieldSource="WITHDRAWAL_DATE" format="dd/mm/yy" required="False" PathID="STUDENT_ENROLMENTWITHDRAWAL_DATE">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="283"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="9" name="DatePicker_ENROLMENT_DATE" style="Styles/Blueprint/Style.css" control="ENROLMENT_DATE" PathID="STUDENT_ENROLMENTDatePicker_ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="ENROLMENT_DATE" caption="ENROLMENT DATE" fieldSource="ENROLMENT_DATE" format="dd/mm/yy" required="True" PathID="STUDENT_ENROLMENTENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="7" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="STUDENT_ID" fieldSource="STUDENT_ENROLMENT_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="318" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="PERSONAL_LEARNING_PLAN" caption="Personal Learning Plan" connection="connDECVPRODSQL2005" dataSource="PLP;Personal Learning Plan (default);PLSP;Mandated IEP" PathID="STUDENT_ENROLMENTPERSONAL_LEARNING_PLAN" fieldSource="LEARNING_PROGRAM" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="319"/>
							</Actions>
						</Event>
					</Events>
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
				<Hidden id="356" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LearningPlan" PathID="STUDENT_ENROLMENTHidden_LearningPlan" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="394" fieldSourceType="DBColumn" dataType="Text" name="Hidden_EnrolmentStatus" PathID="STUDENT_ENROLMENTHidden_EnrolmentStatus">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="397" fieldSourceType="DBColumn" dataType="Text" name="Hidden_Privacy" PathID="STUDENT_ENROLMENTHidden_Privacy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="399" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="SSG_FACILITATOR_ID" wizardEmptyCaption="Select Value" fieldSource="SSG_FACILITATOR_ID" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" boundColumn="STAFF_ID" textColumn="staffname" activeCollection="TableParameters" orderBy="status_type, staffname" PathID="STUDENT_ENROLMENTSSG_FACILITATOR_ID">
					<Components/>
					<Events/>
					<TableParameters>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="400" tableName="View_StaffList_Active_Inactive"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="172" name="Hidden_last_altered_by" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="173" name="Hidden_last_altered_date" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="276"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="277" name="PASTORAL_ALLOC_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="278" name="PASTORAL_ALLOC_DATE" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="279"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="213"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="220"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="402" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" leftBrackets="0" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" rightBrackets="0" searchConditionType="Equal"/>
				<TableParameter id="403" conditionType="Parameter" useIsNull="False" dataType="Float" field="ENROLMENT_YEAR" leftBrackets="0" logicOperator="And" orderNumber="1" parameterSource="ENROLMENT_YEAR" parameterType="URL" rightBrackets="0" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="401" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_ENROLMENT"/>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
				<Field id="404" alias="STUDENT_ENROLMENT_STUDENT_ID" fieldName="STUDENT_ID" tableName="STUDENT_ENROLMENT"/>
				<Field id="405" fieldName="ENROLMENT_YEAR" tableName="STUDENT_ENROLMENT"/>
				<Field id="406" fieldName="CAMPUS" tableName="STUDENT_ENROLMENT"/>
				<Field id="407" fieldName="YEAR_LEVEL" tableName="STUDENT_ENROLMENT"/>
				<Field id="408" fieldName="RECEIPT_NO" tableName="STUDENT_ENROLMENT"/>
				<Field id="409" fieldName="ENROLMENT_DATE" tableName="STUDENT_ENROLMENT"/>
				<Field id="410" fieldName="WITHDRAWAL_DATE" tableName="STUDENT_ENROLMENT"/>
				<Field id="411" fieldName="ENROLMENT_STATUS" tableName="STUDENT_ENROLMENT"/>
				<Field id="412" fieldName="WITHDRAWAL_REASON_ID" tableName="STUDENT_ENROLMENT"/>
				<Field id="413" fieldName="ELIGIBLE_FOR_DISCOUNT" tableName="STUDENT_ENROLMENT"/>
				<Field id="414" fieldName="PAID_ON_ENROLMENT" tableName="STUDENT_ENROLMENT"/>
				<Field id="415" fieldName="ELIGIBLE_FOR_FUNDING" tableName="STUDENT_ENROLMENT"/>
				<Field id="416" fieldName="DOCS_LAST_REVIEWED_DATE" tableName="STUDENT_ENROLMENT"/>
				<Field id="417" fieldName="NEW_DOCS_REQUIRED" tableName="STUDENT_ENROLMENT"/>
				<Field id="418" alias="STUDENT_ENROLMENT_LAST_ALTERED_BY" fieldName="LAST_ALTERED_BY" tableName="STUDENT_ENROLMENT"/>
				<Field id="419" alias="STUDENT_ENROLMENT_LAST_ALTERED_DATE" fieldName="LAST_ALTERED_DATE" tableName="STUDENT_ENROLMENT"/>
				<Field id="420" fieldName="PASTORAL_CARE_ID" tableName="STUDENT_ENROLMENT"/>
				<Field id="421" fieldName="ACER_Username" tableName="STUDENT_ENROLMENT"/>
				<Field id="422" fieldName="ACER_Password" tableName="STUDENT_ENROLMENT"/>
				<Field id="423" fieldName="REGION_APPROVAL_NUMBER" tableName="STUDENT_ENROLMENT"/>
				<Field id="424" fieldName="REGION_ID" tableName="STUDENT_ENROLMENT"/>
				<Field id="425" fieldName="STUDENT_EMAIL" tableName="STUDENT_ENROLMENT"/>
				<Field id="426" fieldName="PARENT_EMAIL" tableName="STUDENT_ENROLMENT"/>
				<Field id="427" fieldName="WITHDRAWAL_EXIT_DESTINATION" tableName="STUDENT_ENROLMENT"/>
				<Field id="428" fieldName="INTAKE_INTERVIEW_DONE" tableName="STUDENT_ENROLMENT"/>
				<Field id="429" fieldName="YEAR_LEVEL_REPORTING" tableName="STUDENT_ENROLMENT"/>
				<Field id="430" fieldName="PRIVACY_PERMISSION" tableName="STUDENT_ENROLMENT"/>
				<Field id="431" fieldName="ATAR_REQUIRED" tableName="STUDENT_ENROLMENT"/>
				<Field id="432" fieldName="PASTORAL_ALLOC_BY" tableName="STUDENT_ENROLMENT"/>
				<Field id="433" fieldName="PASTORAL_ALLOC_DATE" tableName="STUDENT_ENROLMENT"/>
				<Field id="434" fieldName="LEARNING_PROGRAM" tableName="STUDENT_ENROLMENT"/>
				<Field id="435" fieldName="SSG_FACILITATOR_ID" tableName="STUDENT_ENROLMENT"/>
			</Fields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="101" conditionType="Expression" useIsNull="False" field="STUDENT.STUDENT_ID" dataType="Float" parameterType="URL" parameterSource="STUDENT_STUDENT_ID" searchConditionType="Equal" logicOperator="And" expression="STUDENT.STUDENT_ID = STUDENT_ENROLMENT.STUDENT_ID"/>
				<TableParameter id="102" conditionType="Parameter" useIsNull="False" field="STUDENT_ENROLMENT.STUDENT_ID" dataType="Float" parameterType="URL" parameterSource="STUDENT_ID" searchConditionType="Equal" logicOperator="And"/>
				<TableParameter id="103" conditionType="Parameter" useIsNull="False" field="STUDENT_ENROLMENT.ENROLMENT_YEAR" dataType="Float" parameterType="URL" parameterSource="ENROLMENT_YEAR" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="81" field="ENROLMENT_DATE" dataType="Date" parameterType="Control" parameterSource="ENROLMENT_DATE" format="dd/mm/yy"/>
				<CustomParameter id="82" field="WITHDRAWAL_DATE" dataType="Date" parameterType="Control" parameterSource="WITHDRAWAL_DATE" format="dd/mm/yy"/>
				<CustomParameter id="83" field="ENROLMENT_STATUS" dataType="Text" parameterType="Control" parameterSource="ENROLMENT_STATUS"/>
				<CustomParameter id="84" field="WITHDRAWAL_REASON_ID" dataType="Float" parameterType="Control" parameterSource="WITHDRAWAL_REASON_ID"/>
				<CustomParameter id="85" field="YEAR_LEVEL" dataType="Integer" parameterType="Control" parameterSource="YEAR_LEVEL"/>
				<CustomParameter id="86" field="CAMPUS" dataType="Text" parameterType="Control" parameterSource="CAMPUS"/>
				<CustomParameter id="87" field="RECEIPT_NO" dataType="Text" parameterType="Control" parameterSource="RECEIPT_NO"/>
				<CustomParameter id="88" field="ELIGIBLE_FOR_DISCOUNT" dataType="Text" parameterType="Control" parameterSource="ELIGIBLE_FOR_DISCOUNT"/>
				<CustomParameter id="89" field="PAID_ON_ENROLMENT" dataType="Text" parameterType="Control" parameterSource="PAID_ON_ENROLMENT"/>
				<CustomParameter id="90" field="FULL_TIME" dataType="Text" parameterType="Control" parameterSource="FULL_TIME_STUDENT"/>
				<CustomParameter id="91" field="OS_FULL_FEE_PAYING" dataType="Text" parameterType="Control" parameterSource="OS_FULL_FEE_PAYING"/>
				<CustomParameter id="92" field="ADDRESS_REVIEW_FLAG" dataType="Text" parameterType="Control" parameterSource="ADDRESS_REVIEW_FLAG"/>
				<CustomParameter id="93" field="ELIGIBLE_FOR_FUNDING" dataType="Text" parameterType="Control" parameterSource="ELIGIBLE_FOR_FUNDING"/>
				<CustomParameter id="94" field="VCE_CANDIDATE_NUMBER" dataType="Text" parameterType="Control" parameterSource="VCE_CANDIDATE_NO"/>
				<CustomParameter id="95" field="BULLETIN_NUMBER" dataType="Text" parameterType="Control" parameterSource="BULLETIN_NO"/>
				<CustomParameter id="96" field="SUB_SCHOOL" dataType="Text" parameterType="Control" parameterSource="SUB_SCHOOL"/>
				<CustomParameter id="97" field="PASTORAL_CARE_ID" dataType="Text" parameterType="Control" parameterSource="PASTORAL_CARE_ID"/>
				<CustomParameter id="98" field="DOCS_LAST_REVIEWED_DATE" dataType="Date" parameterType="Control" parameterSource="DOCS_LAST_REVIEWED_DATE" format="dd/mm/yy"/>
				<CustomParameter id="99" field="NEW_DOCS_REQUIRED" dataType="Text" parameterType="Control" parameterSource="NEW_DOCS_REQUIRED"/>
				<CustomParameter id="100" field="ENROLMENT_COMMENTS" dataType="Text" parameterType="Control" parameterSource="ENROLMENT_COMMENTS"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features>
				<PTAutoFill id="201" enabled="False" valueField="value" sourceType="Table" name="PTAutoFill2" start="STUDENT_ENROLMENTCondition1.ontrue;" servicePage="services/StudentEnrolmentDetails_maintain_STUDENT_ENROLMENT_txtSchool_Super_Name_PTAutoFill1.ccp">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Controls>
						<Control id="206" name="txtSchool_Super_Phone" source="SCHOOL_SUPERVISOR_PHONE" propertyValue="value"/>
						<Control id="207" name="txtSchool_Super_Email" source="SCHOOL_SUPERVISOR_EMAIL" propertyValue="value"/>
					</Controls>
					<ControlPoints>
						<ControlPoint id="202" name="STUDENT_ENROLMENTCondition1.ontrue" relProperty="start">
							<Items/>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</PTAutoFill>
			</Features>
			<PKFields>
				<PKField id="436" dataType="Float" fieldName="ENROLMENT_YEAR" tableName="STUDENT_ENROLMENT"/>
			</PKFields>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolmentDetails_maintain.aspx" forShow="True" url="StudentEnrolmentDetails_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolmentDetails_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolmentDetails_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="20" groupID="2"/>
		<Group id="21" groupID="3"/>
		<Group id="22" groupID="4"/>
		<Group id="23" groupID="6"/>
		<Group id="24" groupID="7"/>
		<Group id="25" groupID="9"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
