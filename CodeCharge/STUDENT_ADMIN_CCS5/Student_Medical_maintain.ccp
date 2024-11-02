<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_MEDICAL_DETAILS" dataSource="STUDENT_MEDICAL_DETAILS" errorSummator="Error" wizardCaption="Add/Edit STUDENT MEDICAL DETAILS " wizardFormMethod="post" PathID="STUDENT_MEDICAL_DETAILS" pasteActions="pasteActions" activeCollection="TableParameters" connection="connDECVPRODSQL2005">
			<Components>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" defaultValue="DBUtility.UserId.ToUpper()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="17" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" PathID="STUDENT_MEDICAL_DETAILShidden_LAST_ALTERED_BY" defaultValue="DBUtility.UserId.ToUpper()" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="19" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" PathID="STUDENT_MEDICAL_DETAILShidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="24" fieldSourceType="DBColumn" dataType="Text" name="hidden_STUDENT_ID" PathID="STUDENT_MEDICAL_DETAILShidden_STUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="25" name="hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<RadioButton id="34" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="HEARING" PathID="STUDENT_MEDICAL_DETAILSHEARING" fieldSource="HEARING" caption="Deaf or Hearing Impaired" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="35" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="VISION" PathID="STUDENT_MEDICAL_DETAILSVISION" fieldSource="VISION" caption="Blind or Vision Impaired" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="36" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="ASDASPERGERS" PathID="STUDENT_MEDICAL_DETAILSASDASPERGERS" fieldSource="ASDASPERGERS" caption="Diagnosed with ASD/Aspergers" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="37" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="INTELLECTUAL" PathID="STUDENT_MEDICAL_DETAILSINTELLECTUAL" fieldSource="INTELLECTUAL" caption="Intellectual Disability" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="38" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="PHYSICAL" PathID="STUDENT_MEDICAL_DETAILSPHYSICAL" fieldSource="PHYSICAL" caption="Physical Disability" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="39" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="BEHAVIOURAL" PathID="STUDENT_MEDICAL_DETAILSBEHAVIOURAL" fieldSource="BEHAVIOURAL" caption="Severe Behavioural Disorder" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="40" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="LANGUAGE" PathID="STUDENT_MEDICAL_DETAILSLANGUAGE" fieldSource="LANGUAGE" caption="Severe Language Disorder" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="41" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="HASALLERGYHISTORY" PathID="STUDENT_MEDICAL_DETAILSHASALLERGYHISTORY" fieldSource="HASALLERGYHISTORY" caption="History of Allergies" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="42" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="ANAPHYLAXIS" PathID="STUDENT_MEDICAL_DETAILSANAPHYLAXIS" fieldSource="ANAPHYLAXIS" caption="Diagnosed at Risk of Anaphylaxis" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="43" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="HASOTHERCONDITIONS" PathID="STUDENT_MEDICAL_DETAILSHASOTHERCONDITIONS" fieldSource="HASOTHERCONDITIONS" caption="Diagnosed with any other condition" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<TextArea id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="OTHERMEDICALISSUES" PathID="STUDENT_MEDICAL_DETAILSOTHERMEDICALISSUES" fieldSource="OTHERMEDICALISSUES" caption="Other Medical Issues" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextBox id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ALLERGYHISTORY" PathID="STUDENT_MEDICAL_DETAILSALLERGYHISTORY" fieldSource="ALLERGYHISTORY" caption="Allergy History (comment)" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="OTHERCONDITIONS" PathID="STUDENT_MEDICAL_DETAILSOTHERCONDITIONS" fieldSource="OTHERCONDITIONS" caption="Other Conditions (comment)" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="52" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="MENTALHEALTH" PathID="STUDENT_MEDICAL_DETAILSMENTALHEALTH" fieldSource="MENTALHEALTH" caption="Mental Health Condition?" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<TextBox id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MENTALHEALTH_HISTORY" PathID="STUDENT_MEDICAL_DETAILSMENTALHEALTH_HISTORY" fieldSource="MENTALHEALTH_HISTORY" caption="Mental Health History (comment)" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="100" fieldSourceType="DBColumn" dataType="Text" name="hidden_RECEIVED_SUPPORT_PROGRAMS_SERVICES" PathID="STUDENT_MEDICAL_DETAILShidden_RECEIVED_SUPPORT_PROGRAMS_SERVICES" fieldSource="RECEIVED_SUPPORT_PROGRAMS_SERVICES" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="101" name="hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<CheckBoxList id="109" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="cbPSD_FUNDING_CATEGORY" PathID="STUDENT_MEDICAL_DETAILScbPSD_FUNDING_CATEGORY" caption="PSD Eligiblity Funding Category" dataSource="Physical;Physical;Visual Impairment;Visual Impairment;Hearing Impairment;Hearing Impairment;Severe Behaviour disorder;Severe Behaviour disorder;Intellectual disability;Intellectual disability;Autism Spectrum Disorder;Autism Spectrum Disorder;Severe Language disorder;Severe Language disorder" required="False" defaultValue="&quot;&quot;">
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
				</CheckBoxList>
				<TextArea id="110" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PSD_FUNDING_OTHER" PathID="STUDENT_MEDICAL_DETAILSPSD_FUNDING_OTHER" fieldSource="PSD_FUNDING_OTHER" caption="PSD Eligibility Other comments" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="111" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="PSD_FUNDING_ELIGIBLE" PathID="STUDENT_MEDICAL_DETAILSPSD_FUNDING_ELIGIBLE" fieldSource="PSD_FUNDING_ELIGIBLE" caption="PSD Eligibility (Approved by DET)" dataSource="0;No;1;Yes">
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
				<Hidden id="116" fieldSourceType="DBColumn" dataType="Text" name="hidden_PSD_FUNDING_CATEGORY" PathID="STUDENT_MEDICAL_DETAILShidden_PSD_FUNDING_CATEGORY" fieldSource="PSD_FUNDING_CATEGORY" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="117" name="hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<CheckBoxList id="91" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="cbRECEIVED_SUPPORT_PROGRAMS_SERVICES" PathID="STUDENT_MEDICAL_DETAILScbRECEIVED_SUPPORT_PROGRAMS_SERVICES" caption="Received Support from these Programs or Services" dataSource="PSD;Program for Students with Disabilities (PSD);Public Hospital Education;Public Hospital Education Setting;HBESB;Home Based Education Support Program (HBESB);Visiting Teacher;Visiting Teacher Service ;DHHS;DHHS;Child First;Child First ;CAMHS;Child and Adolescent Mental Health Service (CAMHS);DET Social;DET Social worker ;DET Psychologist;DET Psychologist;DET Speech;DET Speech Pathology ;Navigator;Navigator;Lookout Centre;Lookout Centre" required="False" defaultValue="&quot;&quot;">
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
				</CheckBoxList>
				<TextBox id="103" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RECEIVED_SUPPORT_PROGRAMS_SERVICES_OTHER" PathID="STUDENT_MEDICAL_DETAILSRECEIVED_SUPPORT_PROGRAMS_SERVICES_OTHER" fieldSource="RECEIVED_SUPPORT_PROGRAMS_SERVICES_OTHER" caption="Support Programs - Other" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="21" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="ALLERGIES_FLAG" fieldSource="ALLERGIES_FLAG" required="True" caption="Allergies" wizardCaption="IMMUN MUMPS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_MEDICAL_DETAILSALLERGIES_FLAG">
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
				<RadioButton id="22" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="ANAPHYLAXIS_FLAG" fieldSource="ANAPHYLAXIS_FLAG" required="True" caption="Anaphylaxis" wizardCaption="IMMUN MUMPS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_MEDICAL_DETAILSANAPHYLAXIS_FLAG">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="30" eventType="Client"/>
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
				<ListBox id="26" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="lbDiagnosedConditions" wizardEmptyCaption="Select Value" PathID="STUDENT_MEDICAL_DETAILSlbDiagnosedConditions" dataSource="ASD;ASD/Aspergers;PDD-NOS;PDD-NOS;Autism;Autism (do not use for new enrolments);Aspergers;Aspergers (do not use for new enrolments)" _valueOfList="PDD-NOS" _nameOfList="PDD-NOS" fieldSource="DIAGNOSED_CONDITION" caption="Diagnosed Condition">
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
				<Label id="7" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="32" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_DiagnosisConfirmed" PathID="STUDENT_MEDICAL_DETAILSLink_DiagnosisConfirmed" hrefSource="Student_DiagnosisConfirmed_maintain.ccp" wizardUseTemplateBlock="True" linkProperties="{'textSource':'Wellbeing Information','textSourceDB':'','hrefSource':'Student_DiagnosisConfirmed_maintain.ccp','hrefSourceDB':'','title':'open Diagnosis Confirmed','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}"><Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="121" urlType="Relative" enableValidation="True" isDefault="True" name="Button_Update" PathID="STUDENT_MEDICAL_DETAILSButton_Update" operation="Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="122" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" PathID="STUDENT_MEDICAL_DETAILSButton_Cancel" operation="Cancel" returnPage="StudentSummary.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="125" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="DIAGNOSED_ASTHMA" PathID="STUDENT_MEDICAL_DETAILSDIAGNOSED_ASTHMA" fieldSource="DIAGNOSED_ASTHMA" caption="Student Diagnosed with Asthma" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="126" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="MANAGE_PLAN_ASTHMA" PathID="STUDENT_MEDICAL_DETAILSMANAGE_PLAN_ASTHMA" fieldSource="MANAGE_PLAN_ASTHMA" caption="Diagnosed Asthma - Management Plan?" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="131" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="DIAGNOSED_DIABETES" PathID="STUDENT_MEDICAL_DETAILSDIAGNOSED_DIABETES" fieldSource="DIAGNOSED_DIABETES" caption="Student Diagnosed with Diabetes" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="133" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="MANAGE_PLAN_DIABETES" PathID="STUDENT_MEDICAL_DETAILSMANAGE_PLAN_DIABETES" fieldSource="MANAGE_PLAN_DIABETES" caption="Diagnosed Diabetes - Management Plan?" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="134" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="DIAGNOSED_EPILEPSY" PathID="STUDENT_MEDICAL_DETAILSDIAGNOSED_EPILEPSY" fieldSource="DIAGNOSED_EPILEPSY" caption="Student Diagnosed with Epilepsy" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="136" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="MANAGE_PLAN_EPILEPSY" PathID="STUDENT_MEDICAL_DETAILSMANAGE_PLAN_EPILEPSY" fieldSource="MANAGE_PLAN_EPILEPSY" caption="Diagnosed Epilepsy - Management Plan?" dataSource="0;No;1;Yes" required="True" defaultValue="0">
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
				<RadioButton id="137" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="PSD_FUNDING_LEVEL" PathID="STUDENT_MEDICAL_DETAILSPSD_FUNDING_LEVEL" fieldSource="PSD_FUNDING_LEVEL" caption="PSD Eligiblity Funding Level" dataSource="Level 1;Level 1;Level 2;Level 2;Level 3;Level 3;Level 4;Level 4;Level 5;Level 5;Level 6;Level 6" required="False" defaultValue="&quot;&quot;">
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
				<RadioButton id="173" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="PSD_FUNDING_ASSESSED" PathID="STUDENT_MEDICAL_DETAILSPSD_FUNDING_ASSESSED" fieldSource="PSD_FUNDING_ASSESSED" caption="PSD Eligibility (Assessed by DET)" dataSource="0;No;1;Yes">
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
				<RadioButton id="174" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="NCCD_FUNDING_ELIGIBLE" PathID="STUDENT_MEDICAL_DETAILSNCCD_FUNDING_ELIGIBLE" fieldSource="NCCD_FUNDING_APPROVED" caption="NCCD Eligibility" dataSource="0;No;1;Yes">
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
				<RadioButton id="175" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" html="True" returnValueType="Number" name="NCCD_FUNDING_CATEGORY" PathID="STUDENT_MEDICAL_DETAILSNCCD_FUNDING_CATEGORY" caption="NCCD Category" dataSource="select
   vnfc.NCCDFundingCategoryValue,
   vnfc.NCCDFundingCategoryDisplayText
 from
   dbo.vwNCCDFundingCategory as vnfc;" required="False" connection="connDECVPRODSQL2005" boundColumn="NCCDFundingCategoryValue" textColumn="NCCDFundingCategoryDisplayText" fieldSource="NCCD_FUNDING_CATEGORY">
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
				<RadioButton id="176" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" html="True" returnValueType="Number" name="NCCD_FUNDING_LEVEL" PathID="STUDENT_MEDICAL_DETAILSNCCD_FUNDING_LEVEL" fieldSource="NCCD_FUNDING_LEVEL" caption="Level of NCCD funding approved" dataSource="select
   vnfl.NCCDFundingLevelValue,
   vnfl.NCCDFundingLevelDisplayText
 from
   dbo.vwNCCDFundingLevel as vnfl;" required="False" connection="connDECVPRODSQL2005" boundColumn="NCCDFundingLevelValue" textColumn="NCCDFundingLevelDisplayText">
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
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserId.ToUpper()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="20" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="47"/>
						<Action actionName="Custom Code" actionCategory="General" id="102"/>
						<Action actionName="Custom Code" actionCategory="General" id="118"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="95" name="tmpProgSupport" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Declare Variable" actionCategory="General" id="108" name="tmpHearVisionImpaired" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Custom Code" actionCategory="General" id="93"/>
						<Action actionName="Custom Code" actionCategory="General" id="168"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="96"/>
						<Action actionName="Custom Code" actionCategory="General" id="99"/>
						<Action actionName="Custom Code" actionCategory="General" id="119"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="270"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="128" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
			</SQLParameters>
			<JoinTables>
				<JoinTable id="196" tableName="STUDENT_MEDICAL_DETAILS"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="129" fieldName="*"/>
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
			<PKFields>
				<PKField id="130" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT_MEDICAL_DETAILS"/>
			</PKFields>
		</Record>
		<Record id="55" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_MEDICAL_DETAILS1" connection="connDECVPRODSQL2005" dataSource="STUDENT_MEDICAL_DETAILS" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="STUDENT_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Edit Practitioner Referral" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Users/decv_development/Documents/CodeCharge Studio 5 Projects/svn_STUDENT_ADMIN_CCS5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="STUDENT_MEDICAL_DETAILS1" editableComponentTypeString="Record">
			<Components>
				<Button id="57" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_MEDICAL_DETAILS1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="58" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_MEDICAL_DETAILS1Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PRACTITIONER_ORGANISATION" fieldSource="PRACTITIONER_ORGANISATION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PRACTITIONER ORGANISATION" caption="PRACTITIONER ORGANISATION" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_ORGANISATION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="61" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="PRACTITIONER_DISCIPLINE" fieldSource="PRACTITIONER_DISCIPLINE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PRACTITIONER DISCIPLINE" caption="PRACTITIONER DISCIPLINE" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_DISCIPLINE" dataSource="Psychologist;Psychologist;Psychiatrist;Psychiatrist;Paediatrician;Paediatrician;Occupational Therapist;Occupational Therapist;General Practitioner;General Practitioner;Social Worker;Social Worker;Counsellor;Counsellor;Other;Other - enter below">
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
				<TextBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PRACTITIONER_DISCIPLINE_OTHER" fieldSource="PRACTITIONER_DISCIPLINE_OTHER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PRACTITIONER DISCIPLINE OTHER" caption="PRACTITIONER DISCIPLINE OTHER" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_DISCIPLINE_OTHER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBoxList id="63" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="PRACTITIONER_PRIMARY_ISSUES" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PRACTITIONER PRIMARY ISSUES" caption="PRACTITIONER PRIMARY PRESENTING  ISSUES" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_PRIMARY_ISSUES" dataSource="Anxiety;Anxiety;Depression;Depression;School refusal;School refusal;Bullying;Bullying;Behavioural issues;Behavioural issues;ADD/ADHD;ADD/ADHD;ASD;ASD;Family issues;Family issues;Trauma;Trauma;Chronic Fatigue;Chronic Fatigue;Sleep Disorder;Sleep Disorder;Gender dysphoria;Gender dysphoria;Eating disorder;Eating disorder;Gaming issues;Gaming issues;Suicide risk;Suicide risk;Pregnancy/childbirth;Pregnancy/childbirth;Other;Other - enter below">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="88"/>
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
				</CheckBoxList>
				<TextBox id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PRACTITIONER_PRIMARY_OTHER" fieldSource="PRACTITIONER_PRIMARY_OTHER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PRACTITIONER PRIMARY OTHER" caption="PRACTITIONER PRIMARY OTHER" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_PRIMARY_OTHER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="67" fieldSourceType="DBColumn" dataType="Text" name="PRACTITIONER_LAST_MODIFIED_BY" fieldSource="PRACTITIONER_LAST_MODIFIED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="PRACTITIONER LAST MODIFIED BY" caption="PRACTITIONER LAST MODIFIED BY" required="False" unique="False" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_LAST_MODIFIED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="68" fieldSourceType="DBColumn" dataType="Date" name="PRACTITIONER_LAST_MODIFIED_DATE" fieldSource="PRACTITIONER_LAST_MODIFIED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="PRACTITIONER LAST MODIFIED DATE" caption="PRACTITIONER LAST MODIFIED DATE" required="False" format="dd/mm/yyyy h:nn AM/PM" unique="False" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_LAST_MODIFIED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="70" fieldSourceType="DBColumn" dataType="Text" name="Hidden_PRIMARY_ISSUES" PathID="STUDENT_MEDICAL_DETAILS1Hidden_PRIMARY_ISSUES" fieldSource="PRACTITIONER_PRIMARY_ISSUES" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="86" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblLAST_MODIFIED_BY" PathID="STUDENT_MEDICAL_DETAILS1lblLAST_MODIFIED_BY" fieldSource="PRACTITIONER_LAST_MODIFIED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="87" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="lblLAST_MODIFIED_DATE" PathID="STUDENT_MEDICAL_DETAILS1lblLAST_MODIFIED_DATE" fieldSource="PRACTITIONER_LAST_MODIFIED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="138" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="PRACTITIONER_ORGTYPE" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_ORGTYPE" fieldSource="PRACTITIONER_ORGTYPE" caption="PRACTITIONER ORGANISATION TYPE" dataSource="Psychology service;Psychology service; Child &amp; Adolescent Mental Health service;Child &amp; Adolescent Mental Health service; Headspace;Headspace; Navigator program;Navigator program; Private Psychologist;Private Psychologist; Paediatric service;Paediatric service; Community based service;Community based service; Hospital based service;Hospital based service; DHHS Child protection;DHHS Child protection; Child First;Child First;NDIS;NDIS; Other: Specify;Other: Specify" required="True" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
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
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
				<TextBox id="153" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PRACTITIONER_ORGTYPE_OTHER" fieldSource="PRACTITIONER_ORGTYPE_OTHER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PRACTITIONER DISCIPLINE OTHER" caption="PRACTITIONER ORGANISATION TYPE OTHER" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_ORGTYPE_OTHER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="177" fieldSourceType="DBColumn" dataType="Text" name="Hidden_DISABILITIES" PathID="STUDENT_MEDICAL_DETAILS1Hidden_DISABILITIES" fieldSource="PRACTITIONER_DISABILITIES" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<CheckBoxList id="178" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="PRACTITIONER_DISABILITIES" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_DISABILITIES" caption="PRACTITIONER DISABILITIES" required="False" unique="False" connection="connDECVPRODSQL2005" dataSource="Physical;Physical;Visual;Visual impairment;Hearing;Hearing impairment;Behaviour;Severe behaviour disorder;Intellectual;Intellectual disability;ASD;Autism spectrum disorder;Language;Severe language disorder">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="261"/>
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
				</CheckBoxList>
				<TextArea id="213" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PRACTITIONER_DISABILITY_DETAILS" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_DISABILITY_DETAILS" fieldSource="PRACTITIONER_DISABILITY_DETAILS" caption="PRACTITIONER DISABILITY DETAILS" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<CheckBoxList id="215" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" html="True" returnValueType="Number" name="PRACTITIONER_REC_CLASS_ATTENDANCE" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_REC_CLASS_ATTENDANCE" connection="connDECVPRODSQL2005" dataSource="vwPractitionerRecommendedClassAttendance" orderBy="PractitionerRecommendedClassAttendanceDisplayOrder" boundColumn="PractitionerRecommendedClassAttendanceID" textColumn="PractitionerRecommendedClassAttendance">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="259"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="258" tableName="vwPractitionerRecommendedClassAttendance"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="255" fieldName="PractitionerRecommendedClassAttendanceID" tableName="vwPractitionerRecommendedClassAttendance"/>
						<Field id="256" fieldName="PractitionerRecommendedClassAttendance" tableName="vwPractitionerRecommendedClassAttendance"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</CheckBoxList>
				<Hidden id="260" fieldSourceType="DBColumn" dataType="Text" name="Hidden_PRACTITIONER_REC_CLASS_ATTENDANCE" PathID="STUDENT_MEDICAL_DETAILS1Hidden_PRACTITIONER_REC_CLASS_ATTENDANCE" fieldSource="PRACTITIONER_REC_CLASS_ATTENDANCE" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<RadioButton id="262" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" html="True" returnValueType="Number" name="PRACTITIONER_REC_WORKLOAD" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_REC_WORKLOAD" fieldSource="PRACTITIONER_REC_WORKLOAD" connection="connDECVPRODSQL2005" dataSource="vwPractitionerRecommendedWorkload" orderBy="PractitionerRecommendedWorkloadDisplayOrder" boundColumn="PractitionerRecommendedWorkloadID" textColumn="PractitionerRecommendedWorkload">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="266"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="263" posHeight="120" posLeft="10" posTop="10" posWidth="315" tableName="vwPractitionerRecommendedWorkload"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="264" fieldName="PractitionerRecommendedWorkloadID" tableName="vwPractitionerRecommendedWorkload"/>
						<Field id="265" fieldName="PractitionerRecommendedWorkload" tableName="vwPractitionerRecommendedWorkload"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
				<RadioButton id="267" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="PRACTITIONER_REC_CARER_AS_SUPERVISOR" PathID="STUDENT_MEDICAL_DETAILS1PRACTITIONER_REC_CARER_AS_SUPERVISOR" fieldSource="PRACTITIONER_REC_CARER_AS_SUPERVISOR" dataSource="0;No;1;Yes">
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
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="69"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="84" name="PRACTITIONER_LAST_MODIFIED_BY" sourceType="Expression" sourceName="DBUtility.UserId.ToUpper()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="85" name="PRACTITIONER_LAST_MODIFIED_DATE" sourceType="Expression" sourceName="NOW()"/>
						<Action actionName="Custom Code" actionCategory="General" id="90"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="124" name="tmpRiskFlag" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Custom Code" actionCategory="General" id="123"/>
						<Action actionName="Custom Code" actionCategory="General" id="169"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="271"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="236" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="257" tableName="STUDENT_MEDICAL_DETAILS"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="237" fieldName="PRACTITIONER_LAST_MODIFIED_DATE" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="238" fieldName="PRACTITIONER_LAST_MODIFIED_BY" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="239" fieldName="PRACTITIONER_ADDITIONAL_OTHER" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="240" fieldName="PRACTITIONER_ADDITIONAL_ISSUES" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="241" fieldName="PRACTITIONER_PRIMARY_OTHER" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="242" fieldName="PRACTITIONER_PRIMARY_ISSUES" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="243" fieldName="PRACTITIONER_DISCIPLINE_OTHER" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="244" fieldName="PRACTITIONER_DISCIPLINE" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="245" fieldName="PRACTITIONER_ORGANISATION" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="246" fieldName="PRACTITIONER_ORGTYPE" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="247" fieldName="PRACTITIONER_ORGTYPE_OTHER" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="248" fieldName="PRACTITIONER_DISABILITIES" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="249" fieldName="PRACTITIONER_DISABILITY_DETAILS" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="250" fieldName="PRACTITIONER_REC_CLASS_ATTENDANCE" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="251" fieldName="PRACTITIONER_REC_WORKLOAD" tableName="STUDENT_MEDICAL_DETAILS"/>
				<Field id="252" fieldName="PRACTITIONER_REC_CARER_AS_SUPERVISOR" tableName="STUDENT_MEDICAL_DETAILS"/>
			</Fields>
			<PKFields>
				<PKField id="253" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT_MEDICAL_DETAILS"/>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Medical_maintain.aspx" forShow="True" url="Student_Medical_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Medical_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Medical_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="33"/>
			</Actions>
		</Event>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="214"/>
			</Actions>
		</Event>
	</Events>
</Page>
