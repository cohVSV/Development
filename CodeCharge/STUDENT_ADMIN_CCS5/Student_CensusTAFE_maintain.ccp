<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="61" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_CENSUS_DATA" dataSource="STUDENT_CENSUS_DATA" errorSummator="Error" wizardCaption="Add/Edit STUDENT CENSUS DATA " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" PathID="STUDENT_CENSUS_DATA" pasteActions="pasteActions" visible="Dynamic" features="(assigned)">
			<Components>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="PREVIOUS_SCHOOL_ID" fieldSource="PREVIOUS_SCHOOL_ID" required="False" caption="PREVIOUS SCHOOL ID" wizardCaption="PREVIOUS SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CENSUS_DATAPREVIOUS_SCHOOL_ID">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="89" name="tmpSchoolCount" type="Integer" initialValue="-1"/>
								<Action actionName="Declare Variable" actionCategory="General" id="93" name="tmpPrevSchoolID" type="Text" initialValue="&quot;&quot;"/>
								<Action actionName="Custom Code" actionCategory="General" id="92"/>
								<Action actionName="DLookup" actionCategory="Database" id="88" typeOfTarget="Variable" expression="&quot;count(school_id)&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;SCHOOL_ID = &quot; &amp; tmpPrevSchoolID" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpSchoolCount"/>
								<Action actionName="Custom Code" actionCategory="General" id="91"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="DISABILITY_ID" fieldSource="DISABILITY_ID" required="False" caption="DISABILITY ID" wizardCaption="DISABILITY ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CENSUS_DATADISABILITY_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
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
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_CENSUS_DATAButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_CENSUS_DATAButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="64" fieldSourceType="DBColumn" dataType="Text" name="Hidden_last_altered_by" PathID="STUDENT_CENSUS_DATAHidden_last_altered_by" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="65" fieldSourceType="DBColumn" dataType="Date" name="Hidden_last_altered_date" PathID="STUDENT_CENSUS_DATAHidden_last_altered_date" fieldSource="LAST_ALTERED_DATE" format="yyyy-mm-dd H:nn" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="81" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="SCHOOL_NAME" PathID="STUDENT_CENSUS_DATASCHOOL_NAME" features="(assigned)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<PTAutocomplete id="87" enabled="True" sourceType="Table" name="PTAutocomplete2" category="Prototype" featureNameChanged="No" servicePage="services/MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1.ccp" indicator="STUDENT_CENSUS_DATAajaxBusy">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
						</PTAutocomplete>
					</Features>
				</TextBox>
				<Label id="94" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblPREVIOUS_SCHOOL_NAME" PathID="STUDENT_CENSUS_DATAlblPREVIOUS_SCHOOL_NAME" defaultValue="&quot;unknown school name&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="96"/>
								<Action actionName="DLookup" actionCategory="Database" id="95" typeOfTarget="Control" expression="&quot;rtrim(SCHOOL_NAME) as [SCHOOL_NAME]&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;SCHOOL_ID = &quot; &amp; item.PREVIOUS_SCHOOL_ID.GetFormattedValue()" connection="connDECVPRODSQL2005" dataType="Text" target="lblPREVIOUS_SCHOOL_NAME"/>
								<Action actionName="Custom Code" actionCategory="General" id="97"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="98" visible="Yes" fieldSourceType="CodeExpression" dataType="Text" name="ajaxBusy" PathID="STUDENT_CENSUS_DATAajaxBusy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<TextBox id="101" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DISABILITY_OTHER_TEXT" PathID="STUDENT_CENSUS_DATADISABILITY_OTHER_TEXT" fieldSource="DISABILITY_OTHER_TEXT" caption="DISABILITY 'OTHER' DESCRIPTION"><Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="102" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_EnglishProficiency" PathID="STUDENT_CENSUS_DATARadioButton_EnglishProficiency" fieldSource="ENGLISH_PROFICIENCY" _valueOfList="0" _nameOfList="Not at all" dataSource="3;Very Well;2;Well;1;Not Well;0;Not at all" required="True" caption="ENGLISH PROFICIENCY">
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
				<TextBox id="103" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DATE_LAST_ATTENDED_SCHOOL" PathID="STUDENT_CENSUS_DATADATE_LAST_ATTENDED_SCHOOL" fieldSource="DATE_LAST_ATTENDED_SCHOOL" format="dd/mm/yyyy" caption="DATE LAST ATTENDED SCHOOL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="104" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="HIGHEST_SCHOOL_LEVEL" fieldSource="HIGHEST_SCHOOL_LEVEL" required="False" caption="SCHOOL EDUCATION - HIGHEST SCHOOL LEVEL" wizardCaption="MOTHER EDUCATION SCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="5;Year 12 or equivalent;4;Year 11 or equivalent;3;Year 10 or equivalent;2;Year 9 or equivalent;1;Year 8 or below;0;Did not attend School" connection="connDECVPRODSQL2005" defaultValue="&quot;0&quot;" PathID="STUDENT_CENSUS_DATAHIGHEST_SCHOOL_LEVEL" html="True" _valueOfList="0" _nameOfList="Did not attend School">
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
				</RadioButton>
				<CheckBoxList id="99" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="CheckBoxList_Disability" PathID="STUDENT_CENSUS_DATACheckBoxList_Disability" dataSource="11;Hearing/Deaf;12;Physical;13;Intellectual;14;Learning;15;Mental Illness;16;Acquired Brain Impairment;17;Vision;18;Medical Condition;19;Other (fill out below);99;Not Specified;" caption="Disability checkbox options">
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
				<RadioButton id="106" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Employment_Status" PathID="STUDENT_CENSUS_DATARadioButton_Employment_Status" fieldSource="EMPLOYMENT_STATUS" dataSource="1;Full time;2;Part time;3;Self employed;4;Employer;5;Employed;6;Unemployed - seeking full time;7;Unemployed - seeking part time;8;Not Employed - not seeking;" caption="Current Employment Status">
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
				<RadioButton id="108" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButton_Reason_for_Study" PathID="STUDENT_CENSUS_DATARadioButton_Reason_for_Study" fieldSource="REASON_FOR_STUDY" dataSource="01;To get a job;02;To develop my existing business;03;To start my own business;04;To try for a different career;05;To get a better job or promotion;06;It was a requirement of my job;07;I wanted extra skills for my job;08;To get into another course of study;11;Other reasons;12;For personal interest or self-development;99;Not specified;" required="True" caption="Reason for Study">
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
				<CheckBoxList id="110" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="CheckBoxList_PriorQualifications" PathID="STUDENT_CENSUS_DATACheckBoxList_PriorQualifications" dataSource="008;(008) Bachelor Degree or Higher Degree level;410;(410) Advanced Diploma or Associate Degree level;420;(420) Diploma Level;511;(511) Certificate IV;514;(514) Certificate III;521;(521) Certificate II;524;(524) Certificate I;990;(990) Miscellaneous (fill out below)" caption="Prior Qualifications checkbox options" _valueOfList="410" _nameOfList="(410) Advanced Diploma or Associate Degree level">
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
				<TextBox id="112" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PRIORQUALIFICATIONS_OTHER_TEXT" PathID="STUDENT_CENSUS_DATAPRIORQUALIFICATIONS_OTHER_TEXT" fieldSource="PRIORQUALIFICATIONS_OTHER_TEXT" caption="PRIOR QUALIFICATIONS 'OTHER' DESCRIPTION" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="115" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblCheckDisability" PathID="STUDENT_CENSUS_DATAlblCheckDisability">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="116" name="lblCheckDisability" sourceType="Expression" sourceName="item.CheckBoxList_Disability.Value" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="120" fieldSourceType="DBColumn" dataType="Text" name="Hidden_DisabilityList" PathID="STUDENT_CENSUS_DATAHidden_DisabilityList" fieldSource="DISABILITY_CODES" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="121" fieldSourceType="DBColumn" dataType="Text" name="Hidden_PriorQualificationsList" PathID="STUDENT_CENSUS_DATAHidden_PriorQualificationsList" fieldSource="PRIOR_QUALIFICATIONS" defaultValue="&quot;0,&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="122" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_gotoCensusPage" PathID="STUDENT_CENSUS_DATALink_gotoCensusPage" hrefSource="Student_Census_maintain.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="123" sourceType="Expression" format="yyyy-mm-dd" name="override" source="1"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
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
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="5" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" parameterSource="STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
<JoinTable id="124" tableName="STUDENT_CENSUS_DATA"/>
</JoinTables>
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
			<Features>
				<Condition id="70" name="Condition1" category="Ajax" featureNameChanged="No" condition="!=" name1="STUDENT_CENSUS_DATASCHOOL_NAME" sourceType1="Control" name2="&quot;&quot;" sourceType2="Expression" ccsIdsOnly="False" start="STUDENT_CENSUS_DATASCHOOL_NAME.onkeypress;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="82" name="STUDENT_CENSUS_DATASCHOOL_NAME.onkeypress" relProperty="start">
							<Items>
								<ControlPointItem id="83" name="Student_Census_maintain" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="84" name="STUDENT_CENSUS_DATA" ccpId="2" type="Record" isFeature="False" PathID="STUDENT_CENSUS_DATA"/>
								<ControlPointItem id="85" name="SCHOOL_NAME" ccpId="81" type="TextBox" isFeature="False" PathID="STUDENT_CENSUS_DATASCHOOL_NAME"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<PTAutoFill id="75" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill1" category="Prototype" featureNameChanged="No" ccsIdsOnly="False" start="STUDENT_CENSUS_DATACondition1.ontrue;" servicePage="services/MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutoFill1.ccp">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Controls>
						<Control id="86" name="STUDENT_CENSUS_DATAPREVIOUS_SCHOOL_ID" source="SCHOOL_ID" propertyValue="value"/>
					</Controls>
					<ControlPoints>
						<ControlPoint id="76" name="STUDENT_CENSUS_DATACondition1.ontrue" relProperty="start">
							<Items>
								<ControlPointItem id="77" name="Student_Census_maintain" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="78" name="STUDENT_CENSUS_DATA" ccpId="2" type="Record" isFeature="False" PathID="STUDENT_CENSUS_DATA"/>
								<ControlPointItem id="79" name="Condition1" ccpId="70" type="Condition" isFeature="True" PathID="STUDENT_CENSUS_DATACondition1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</PTAutoFill>
			</Features>
			<PKFields/>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_CensusTAFE_maintain.aspx" forShow="True" url="Student_CensusTAFE_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_CensusTAFE_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_CensusTAFE_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Page1" language="VB" name="Student_CensusTAFE_maintain_style.css" forShow="False" comment="/*" commentEnd="*/" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
