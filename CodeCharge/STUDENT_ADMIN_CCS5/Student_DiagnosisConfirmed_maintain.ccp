<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="61" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_DIAGNOSIS_DATA" dataSource="STUDENT_DIAGNOSIS_CONFIRMED" errorSummator="Error" wizardCaption="Add/Edit STUDENT CENSUS DATA " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" PathID="STUDENT_DIAGNOSIS_DATA" pasteActions="pasteActions" visible="Dynamic" generateDiv="False">
			<Components>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextArea id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WELLBEING_COMMENTS" fieldSource="WELLBEING_COMMENTS" required="False" caption="Wellbeing Comments" wizardCaption="PREVIOUS SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_DIAGNOSIS_DATAWELLBEING_COMMENTS">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_DIAGNOSIS_DATAButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_DIAGNOSIS_DATAButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="65" fieldSourceType="DBColumn" dataType="Date" name="Hidden_last_altered_date" PathID="STUDENT_DIAGNOSIS_DATAHidden_last_altered_date" fieldSource="LAST_ALTERED_DATE" format="yyyy-mm-dd H:nn" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="101" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STUDENT_INCLUSION_OTHER" PathID="STUDENT_DIAGNOSIS_DATASTUDENT_INCLUSION_OTHER" fieldSource="STUDENT_INCLUSION_OTHER" caption="Wellbeing Inclusion Other Description">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="102" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_ReferredBy" PathID="STUDENT_DIAGNOSIS_DATARadioButton_ReferredBy" fieldSource="REFERRED_BY" _valueOfList="0" _nameOfList="Not at all" dataSource="Student Support Teacher;Learning Advisor; Wellbeing team member;Wellbeing team member; Year Level Coordinator;Year Level Coordinator; Subject Teacher;Subject Teacher; Enrolment Advisor;Enrolment Advisor; Leading Teacher;Leading Teacher;Enrolment Alert;Enrolment Alert" required="True" caption="Referred By">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="131"/>
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
				<CheckBoxList id="104" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="SUPPORT_AT_ENROLMENT_TYPE" required="False" caption="Supports in place at time of enrolment (Types)" wizardCaption="MOTHER EDUCATION SCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="CAMHS Psychiatrist;CAMHS Psychiatrist;headspace Psychiatrist;headspace Psychiatrist;RCH Psychiatrist;RCH Psychiatrist;RCH Paediatrician;RCH Paediatrician;RCH clinician;RCH clinician;Community Mental Health Service;Community Mental Health Service;General Practitioner;General Practitioner;DHHS Child First;DHHS Child First;Community Health Service;Community Health Service;Alternative Education Setting;Alternative Education Setting;CAMHS clinician;CAMHS clinician;headspace clinician;headspace clinician;Private Psychologist;Private Psychologist;Speech Therapist;Speech Therapist;DHHS Child Protection;DHHS Child Protection;Community Family Support Service;Community Family Support Service;Private Psychiatrist;Private Psychiatrist;Occupational Therapist;Occupational Therapist;Out of Home Care;Out of Home Care;Psychologist/psychiatrist;&lt;span class='deprecated'&gt;Psychologist/psychiatrist&lt;/span&gt;;GP;&lt;span class='deprecated'&gt;GP&lt;/span&gt;;Agency;&lt;span class='deprecated'&gt;Agency&lt;/span&gt;;DHS;&lt;span class='deprecated'&gt;DHS&lt;/span&gt;;Speech Pathologist;&lt;span class='deprecated'&gt;Speech Pathologist&lt;/span&gt;;Physical Therapy;&lt;span class='deprecated'&gt;Physical Therapy&lt;/span&gt;" defaultValue="&quot;0&quot;" PathID="STUDENT_DIAGNOSIS_DATASUPPORT_AT_ENROLMENT_TYPE" html="True" _valueOfList="0" _nameOfList="Did not attend School">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="105"/>
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
				</CheckBoxList>
				<CheckBoxList id="99" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="CheckBoxList_Wellbeing" PathID="STUDENT_DIAGNOSIS_DATACheckBoxList_Wellbeing" dataSource="Anxiety;Anxiety;Depression;Depression;Trauma;Trauma;Family Complexity;Family Complexity;Family breakdown;Family breakdown;Family illness;Family illness;Domestic Violence;Domestic Violence;Self-harming;Self-harming;Social Phobia;Social Phobia;Bullying;Bullying;ADHD;ADHD;Transgender;Transgender;Suicidal thoughts / attempts;Suicidal thoughts / attempts;School refuser;School refuser;Behavioural Issues (incl ODD);Behavioural Issues (incl ODD);OCD;OCD;Eating Disorder;Eating Disorder;Sleep Disorder;Sleep Disorder;Substance use;Substance use;Behavioural Issues;&lt;span class='deprecated'&gt;Behavioural Issues&lt;/span&gt;;Cyberbullying;&lt;span class='deprecated'&gt;Cyberbullying&lt;/span&gt;;PTSD;&lt;span class='deprecated'&gt;PTSD&lt;/span&gt;;ODD;&lt;span class='deprecated'&gt;ODD&lt;/span&gt;;Borderline PD;&lt;span class='deprecated'&gt;Borderline PD&lt;/span&gt;;Conduct Disorder;&lt;span class='deprecated'&gt;Conduct Disorder&lt;/span&gt;" caption="Student Wellbeing Options">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="100" eventType="Server"/>
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
				</CheckBoxList>
				<RadioButton id="106" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Reactivation" PathID="STUDENT_DIAGNOSIS_DATARadioButton_Reactivation" fieldSource="REACTIVATION" dataSource="Y;Yes;N;No" caption="Reactivation" defaultValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="107" eventType="Server"/>
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
				<RadioButton id="108" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Previous_Enrol" PathID="STUDENT_DIAGNOSIS_DATARadioButton_Previous_Enrol" fieldSource="PREVIOUS_ENROLMENT" dataSource="Y;Yes;N;No" required="True" caption="Reason for Study" defaultValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="109"/>
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
				<CheckBoxList id="110" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="CheckBoxList_Inclusion" PathID="STUDENT_DIAGNOSIS_DATACheckBoxList_Inclusion" dataSource="Cognitive Impairment - ASD;Cognitive Impairment - ASD;Physical Disability (short-term);Physical Disability (short-term);Physical Impairment - CFS/ME;Physical Impairment - CFS/ME;Cognitive Impairment - Learning difficulty;Cognitive Impairment - Learning difficulty;Cognitive Impairment - Intellectual Disability;Cognitive Impairment - Intellectual Disability;Auditory processing disorder;Auditory processing disorder;Gifted and Talented;Gifted and Talented;Physical Disability (long-term);Physical Disability (long-term);Language Learning Disorder / dyslexia;Language Learning Disorder / dyslexia;Learning Disorder - handwriting;Learning Disorder - handwriting;Sensory Impairment - Vision;Sensory Impairment - Vision;Sensory Impairment - Hearing;Sensory Impairment - Hearing;Sensory difficulties;Sensory difficulties;Physical Impairment - Physical illness (Short-term);&lt;span class='deprecated'&gt;Physical Impairment - Physical illness (Short-term)&lt;/span&gt;;Physical Impairment - Physical illness (Long-term);&lt;span class='deprecated'&gt;Physical Impairment - Physical illness (Long-term)&lt;/span&gt;;Cognitive Impairment - Learning Disability;&lt;span class='deprecated'&gt;Cognitive Impairment - Learning Disability&lt;/span&gt;;Cognitive Impairment - Language Disorder;&lt;span class='deprecated'&gt;Cognitive Impairment - Language Disorder&lt;/span&gt;" caption="Student Inclusion options" _valueOfList="410" _nameOfList="(410) Advanced Diploma or Associate Degree level">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="111"/>
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
				</CheckBoxList>
				<TextBox id="112" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STUDENT_WELLBEING_OTHER" PathID="STUDENT_DIAGNOSIS_DATASTUDENT_WELLBEING_OTHER" fieldSource="STUDENT_WELLBEING_OTHER" caption="Student Wellbeing Other Description" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="120" fieldSourceType="DBColumn" dataType="Text" name="Hidden_WellbeingList" PathID="STUDENT_DIAGNOSIS_DATAHidden_WellbeingList" fieldSource="STUDENT_WELLBEING" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="121" fieldSourceType="DBColumn" dataType="Text" name="Hidden_InclusionList" PathID="STUDENT_DIAGNOSIS_DATAHidden_InclusionList" fieldSource="STUDENT_INCLUSION" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="74" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="list_REGION" PathID="STUDENT_DIAGNOSIS_DATAlist_REGION" sourceType="Table" fieldSource="REGION" connection="connDECVPRODSQL2005" dataSource="REGION" orderBy="REGION_NAME" boundColumn="REGION_ID" textColumn="REGION_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters>
						<TableParameter id="192" conditionType="Expression" useIsNull="False" expression="STATUS =1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="191" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="REGION"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="193" fieldName="REGION_ID" tableName="REGION"/>
						<Field id="194" fieldName="REGION_NAME" tableName="REGION"/>
					</Fields>
					<PKFields>
						<PKField id="195" dataType="Float" fieldName="REGION_ID" tableName="REGION"/>
					</PKFields>
				</ListBox>
				<RadioButton id="132" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Support" PathID="STUDENT_DIAGNOSIS_DATARadioButton_Support" fieldSource="SUPPORT_AT_ENROLMENT" dataSource="Y;Yes;N;No" caption="Support at time of enrolment (Yes/No)" defaultValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="133" eventType="Server"/>
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
				<Button id="134" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Submit" PathID="STUDENT_DIAGNOSIS_DATAButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="137" fieldSourceType="DBColumn" dataType="Text" name="Hidden_SupportList" PathID="STUDENT_DIAGNOSIS_DATAHidden_SupportList" fieldSource="SUPPORT_AT_ENROLMENT_TYPE" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="139" fieldSourceType="DBColumn" dataType="Float" name="Hidden_enrolyear" PathID="STUDENT_DIAGNOSIS_DATAHidden_enrolyear" fieldSource="ENROLMENT_YEAR" defaultValue="Year(Now())">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="147" sourceType="URL" sourceName="ENROLMENT_YEAR" name="Hidden_enrolyear" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="140" fieldSourceType="DBColumn" dataType="Float" name="Hidden_StudentId" PathID="STUDENT_DIAGNOSIS_DATAHidden_StudentId" fieldSource="STUDENT_ID" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="141" sourceType="URL" sourceName="STUDENT_ID" name="Hidden_StudentId" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="64" fieldSourceType="DBColumn" dataType="Text" name="Hidden_last_altered_by" PathID="STUDENT_DIAGNOSIS_DATAHidden_last_altered_by" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="152" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="170" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Referral" PathID="STUDENT_DIAGNOSIS_DATARadioButton_Referral" fieldSource="REFERRAL_AT_ENROLMENT" dataSource="Y;Yes;N;No" caption="Reactivation" defaultValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="171"/>
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
				<RadioButton id="177" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Inclusion" PathID="STUDENT_DIAGNOSIS_DATARadioButton_Inclusion" fieldSource="KNOWN_INCLUSION" dataSource="Y;Yes;N;No" caption="Known to Student Inclusion" defaultValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="178"/>
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
				<RadioButton id="179" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Wellbeing" PathID="STUDENT_DIAGNOSIS_DATARadioButton_Wellbeing" fieldSource="KNOWN_WELLBEING" dataSource="Y;Yes;N;No" caption="Known to Wellbeing" defaultValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="180"/>
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
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="66" name="Hidden_last_altered_by" sourceType="Expression" sourceName="dbutility.userid.toupper()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="67" name="Hidden_last_altered_date" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="113"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="114"/>
						<Action actionName="Custom Code" actionCategory="General" id="117"/>
						<Action actionName="Custom Code" actionCategory="General" id="138"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="149" name="Hidden_last_altered_by" sourceType="Expression" sourceName="dbutility.userid.toupper()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="150" name="Hidden_last_altered_date" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="151"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="236" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="237" conditionType="Parameter" useIsNull="False" dataType="Float" defaultValue="year(now())" field="ENROLMENT_YEAR" logicOperator="And" parameterSource="ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="279" tableName="STUDENT_DIAGNOSIS_CONFIRMED"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="238" fieldName="*"/>
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
			<Features>
			</Features>
			<PKFields>
				<PKField id="239" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT_DIAGNOSIS_CONFIRMED"/>
				<PKField id="240" dataType="Float" fieldName="ENROLMENT_YEAR" tableName="STUDENT_DIAGNOSIS_CONFIRMED"/>
			</PKFields>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_DiagnosisConfirmed_maintain.aspx" forShow="True" url="Student_DiagnosisConfirmed_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_DiagnosisConfirmed_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_DiagnosisConfirmed_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="162" groupID="2"/>
		<Group id="163" groupID="3"/>
		<Group id="164" groupID="12"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
