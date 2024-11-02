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
				<ListBox id="6" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="COUNTRY_OF_BIRTH" fieldSource="COUNTRY_OF_BIRTH" required="False" caption="Student COUNTRY OF BIRTH" wizardCaption="COUNTRY OF BIRTH" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="COUNTRY_OF_BIRTH" boundColumn="COUNTRY_ID" textColumn="COUNTRY_NAME" orderBy="COUNTRY_NAME" PathID="STUDENT_CENSUS_DATACOUNTRY_OF_BIRTH">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="37" tableName="COUNTRY_OF_BIRTH" posLeft="10" posTop="10" posWidth="146" posHeight="120"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="38" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_ID"/>
						<Field id="39" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_NAME"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="7" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="MOTHERS_COB" fieldSource="MOTHERS_COB" required="False" caption="MOTHERS COUNTRY OF BIRTH" wizardCaption="MOTHERS COB" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="COUNTRY_OF_BIRTH" boundColumn="COUNTRY_ID" textColumn="COUNTRY_NAME" orderBy="COUNTRY_NAME" PathID="STUDENT_CENSUS_DATAMOTHERS_COB">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="40" tableName="COUNTRY_OF_BIRTH" posLeft="10" posTop="10" posWidth="146" posHeight="120"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="41" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_ID"/>
						<Field id="42" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_NAME"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DATE_STARTED_IN_AUST" fieldSource="DATE_STARTED_IN_AUST" required="False" caption="Student DATE STARTED IN AUST" wizardCaption="DATE STARTED IN AUST" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="d/m/yyyy" PathID="STUDENT_CENSUS_DATADATE_STARTED_IN_AUST" errorControl="ResidentialStatusErrormessage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="10" name="DatePicker_DATE_STARTED_IN_AUST" control="DATE_STARTED_IN_AUST" wizardSatellite="True" wizardControl="DATE_STARTED_IN_AUST" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STUDENT_CENSUS_DATADatePicker_DATE_STARTED_IN_AUST">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<ListBox id="11" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="FIRST_HOME_LANGUAGE" fieldSource="FIRST_HOME_LANGUAGE" required="False" caption="Student FIRST LANGUAGE" wizardCaption="FIRST HOME LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="vwLanguage" orderBy="IsEnglishLanguage desc, IsSpecialLanguage desc, IsObsoleteLanguage, LANG_DESCRIPTION" boundColumn="LANG_CODE" textColumn="LANG_DESCRIPTION" PathID="STUDENT_CENSUS_DATAFIRST_HOME_LANGUAGE">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="173" tableName="vwLanguage"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="171" fieldName="vwLanguage.LANG_CODE" tableName="vwLanguage"/>
						<Field id="172" fieldName="vwLanguage.LANG_DESCRIPTION" tableName="vwLanguage"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="OTHER_HOME_LANGUAGE" fieldSource="OTHER_HOME_LANGUAGE" required="False" caption="Student OTHER LANGUAGE" wizardCaption="OTHER HOME LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="vwLanguage" orderBy="IsEnglishLanguage desc, IsSpecialLanguage desc, IsObsoleteLanguage, LANG_DESCRIPTION" boundColumn="LANG_CODE" textColumn="LANG_DESCRIPTION" PathID="STUDENT_CENSUS_DATAOTHER_HOME_LANGUAGE">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="174" posHeight="168" posLeft="10" posTop="10" posWidth="160" tableName="vwLanguage"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="175" fieldName="vwLanguage.LANG_CODE" tableName="vwLanguage"/>
						<Field id="176" fieldName="vwLanguage.LANG_DESCRIPTION" tableName="vwLanguage"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="MOTHER_LANGUAGE" fieldSource="MOTHER_LANGUAGE" required="False" caption="MOTHER LANGUAGE" wizardCaption="MOTHER LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="vwLanguage" orderBy="IsEnglishLanguage desc, IsSpecialLanguage desc, IsObsoleteLanguage, LANG_DESCRIPTION" boundColumn="LANG_CODE" textColumn="LANG_DESCRIPTION" PathID="STUDENT_CENSUS_DATAMOTHER_LANGUAGE">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="177" posHeight="168" posLeft="10" posTop="10" posWidth="160" tableName="vwLanguage"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="178" fieldName="vwLanguage.LANG_CODE" tableName="vwLanguage"/>
						<Field id="179" fieldName="vwLanguage.LANG_DESCRIPTION" tableName="vwLanguage"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<RadioButton id="14" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="MOTHER_EDUCATION_SCHOOL" fieldSource="MOTHER_EDUCATION_SCHOOL" required="False" caption="SCHOOL EDUCATION - MOTHER/PARENT1" wizardCaption="MOTHER EDUCATION SCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="0;UNKNOWN;4;Year 12 or equivalent;3;Year 11 or equivalent;2;Year 10 or equivalent;1;Year 9 or equivalent or below" connection="connDECVPRODSQL2005" defaultValue="&quot;0&quot;" PathID="STUDENT_CENSUS_DATAMOTHER_EDUCATION_SCHOOL" html="True">
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
				<RadioButton id="15" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="MOTHER_EDUCATION_NONSCHOOL" fieldSource="MOTHER_EDUCATION_NONSCHOOL" required="False" caption="POST-SCHOOL EDUCATION - MOTHER/PARENT1" wizardCaption="MOTHER EDUCATION NONSCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="0;UNKNOWN;7;Bachelor degree or above;6;Advanced Diploma/Diploma;5;Certificate I to IV (incl. Trade Cert);8;No non-school qualification" connection="connDECVPRODSQL2005" defaultValue="&quot;0&quot;" PathID="STUDENT_CENSUS_DATAMOTHER_EDUCATION_NONSCHOOL" html="True">
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
				</RadioButton>
				<ListBox id="16" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="MOTHER_OCCUPATIONGROUP" fieldSource="MOTHER_OCCUPATIONGROUP" required="False" caption="MOTHER OCCUPATION GROUP" wizardCaption="MOTHER OCCUPATIONGROUP" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="U;UNKNOWN;A;A - Senior Management, Qualified Professionals;B;B - Other Management, Arts/Media/Sports, Other Professionals;C;C - Trades, Clerks, Skilled Office, Sales and Service;D;D - Machine Operators, Hospitality, Asistants, Labourers;N;N - No paid work in last 12 months" connection="connDECVPRODSQL2005" defaultValue="&quot;U&quot;" PathID="STUDENT_CENSUS_DATAMOTHER_OCCUPATIONGROUP">
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
				<ListBox id="21" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="ALLOWANCE_CODE" fieldSource="ALLOWANCE_CODE" required="True" caption="ALLOWANCE CODE" wizardCaption="ALLOWANCE CODE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="GOVERNMENT_ALLOWANCE" orderBy="ALLOWANCE_CODE" boundColumn="ALLOWANCE_CODE" textColumn="ALLOWANCE_TITLE" PathID="STUDENT_CENSUS_DATAALLOWANCE_CODE">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="58" tableName="GOVERNMENT_ALLOWANCE" posLeft="10" posTop="10" posWidth="160" posHeight="136"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="59" tableName="GOVERNMENT_ALLOWANCE" fieldName="ALLOWANCE_CODE"/>
						<Field id="60" tableName="GOVERNMENT_ALLOWANCE" fieldName="ALLOWANCE_TITLE"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<RadioButton id="22" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="KOORITORRESFLAG" fieldSource="KOORITORRESFLAG" required="True" caption="ABORIGINAL / KOORI / TORRES" wizardCaption="KOORITORRESFLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="N;NONE;K;KOORI / ABORIGINAL;T;TORRES STRAIT ISLANDER;B;BOTH KOORI AND TORRES" _valueOfList="K" _nameOfList="KOORI / ABORIGINAL" defaultValue="&quot;N&quot;" PathID="STUDENT_CENSUS_DATAKOORITORRESFLAG" connection="connDECVPRODSQL2005" html="True">
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
				<RadioButton id="23" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RESIDENTIAL_STATUS" fieldSource="RESIDENTIAL_STATUS" required="False" caption="Student RESIDENTIAL STATUS" wizardCaption="RESIDENTIAL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" _valueOfList="T" _nameOfList="Temporary" dataSource="P;Permanent;T;Temporary" PathID="STUDENT_CENSUS_DATARESIDENTIAL_STATUS">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="123"/>
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
				<TextBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DATE_ARRIVED_IN_AUST" fieldSource="DATE_ARRIVED_IN_AUST" required="False" caption="Student DATE ARRIVED IN AUST" wizardCaption="DATE ARRIVED IN AUST" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="d/m/yyyy" PathID="STUDENT_CENSUS_DATADATE_ARRIVED_IN_AUST" errorControl="ResidentialStatusErrormessage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="25" name="DatePicker_DATE_ARRIVED_IN_AUST" style="Styles/Blueprint/Style.css" control="DATE_ARRIVED_IN_AUST" PathID="STUDENT_CENSUS_DATADatePicker_DATE_ARRIVED_IN_AUST">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<TextBox id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="VISA_SUB_CLASS" fieldSource="VISA_SUB_CLASS" required="False" caption="Student VISA SUB CLASS" wizardCaption="VISA SUB CLASS" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CENSUS_DATAVISA_SUB_CLASS" errorControl="ResidentialStatusErrormessage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="VISA_STATISTICAL_CODE" fieldSource="VISA_STATISTICAL_CODE" required="False" caption="Student VISA STATISTICAL CODE" wizardCaption="VISA STATISTICAL CODE" wizardSize="4" wizardMaxLength="4" wizardIsPassword="False" wizardUseTemplateBlock="False" format="&quot;&quot;" PathID="STUDENT_CENSUS_DATAVISA_STATISTICAL_CODE" errorControl="ResidentialStatusErrormessage">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="63"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="PREVIOUS_SCHOOL_ID" fieldSource="PREVIOUS_SCHOOL_ID" required="True" caption="PREVIOUS SCHOOL ID" wizardCaption="PREVIOUS SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CENSUS_DATAPREVIOUS_SCHOOL_ID">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="89" name="tmpSchoolCount" type="Integer" initialValue="-1"/>
								<Action actionName="Declare Variable" actionCategory="General" id="93" name="tmpPrevSchoolID" type="Text" initialValue="&quot;&quot;"/>
								<Action actionName="Custom Code" actionCategory="General" id="92"/>
								<Action actionName="DLookup" actionCategory="Database" id="88" typeOfTarget="Variable" expression="&quot;count(school_id)&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;SCHOOL_ID &lt;&gt; '16261.00' AND SCHOOL_ID = &quot; &amp; tmpPrevSchoolID" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpSchoolCount"/>
								<Action actionName="Custom Code" actionCategory="General" id="91"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="29" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Float" returnValueType="Number" name="FAMILY_OSG" fieldSource="FAMILY_OSG" required="False" caption="FAMILY OCCUPATION GROUP" wizardCaption="FAMILY OSG" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource=";;1;1;2;2;3;3;4;4;5;5" PathID="STUDENT_CENSUS_DATAFAMILY_OSG">
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
				<RadioButton id="30" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Float" returnValueType="Number" name="HOUSEHOLD_STATUS" fieldSource="HOUSEHOLD_STATUS" required="False" caption="LIVING ARRANGEMENTS / HOUSEHOLD STATUS" wizardCaption="HOUSEHOLD STATUS" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource=";UNKNOWN;1;At home with TWO parents/guardians;2;At home with One parent/guardian;3;Out of Home Care - Informal;4;Homeless Youth;5;Independent;6;Out of Home Care - Statutory/Court-ordered;7;Out of Home Care - Permanent Care" PathID="STUDENT_CENSUS_DATAHOUSEHOLD_STATUS" _nameOfList="UNKNOWN" html="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="113" eventType="Server"/>
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
				<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="DISABILITY_ID" fieldSource="DISABILITY_ID" required="False" caption="DISABILITY ID" wizardCaption="DISABILITY ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CENSUS_DATADISABILITY_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="32" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="REPEATING_YEAR" fieldSource="REPEATING_YEAR" required="True" caption="REPEATING YEAR" wizardCaption="REPEATING YEAR" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="False" _nameOfList="No" dataSource="Yes;Yes;No;No" defaultValue="&quot;No&quot;" PathID="STUDENT_CENSUS_DATAREPEATING_YEAR">
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
				<TextBox id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="OTHER_SCHOOL_TF" fieldSource="OTHER_SCHOOL_TF" required="True" caption="OTHER SCHOOL TIME FRACTION" wizardCaption="OTHER SCHOOL TF" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" defaultValue="&quot;0.0&quot;" PathID="STUDENT_CENSUS_DATAOTHER_SCHOOL_TF">
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
				<ListBox id="17" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="FATHER_LANGUAGE" fieldSource="FATHER_LANGUAGE" required="False" caption="FATHER LANGUAGE" wizardCaption="FATHER LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="vwLanguage" orderBy="IsEnglishLanguage desc, IsSpecialLanguage desc, IsObsoleteLanguage, LANG_DESCRIPTION" boundColumn="LANG_CODE" textColumn="LANG_DESCRIPTION" PathID="STUDENT_CENSUS_DATAFATHER_LANGUAGE">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="180" posHeight="168" posLeft="10" posTop="10" posWidth="160" tableName="vwLanguage"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="181" fieldName="vwLanguage.LANG_CODE" tableName="vwLanguage"/>
						<Field id="182" fieldName="vwLanguage.LANG_DESCRIPTION" tableName="vwLanguage"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="FATHERS_COB" fieldSource="FATHERS_COB" required="False" caption="FATHERS COUNTRY OF BIRTH" wizardCaption="FATHERS COB" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="COUNTRY_OF_BIRTH" orderBy="COUNTRY_NAME" boundColumn="COUNTRY_ID" textColumn="COUNTRY_NAME" PathID="STUDENT_CENSUS_DATAFATHERS_COB">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="43" tableName="COUNTRY_OF_BIRTH" schemaName="dbo" posLeft="10" posTop="10" posWidth="146" posHeight="120"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="44" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_ID"/>
						<Field id="45" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_NAME"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<RadioButton id="18" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="FATHER_EDUCATION_SCHOOL" fieldSource="FATHER_EDUCATION_SCHOOL" required="False" caption="SCHOOL EDUCATION - FATHER/PARENT2" wizardCaption="FATHER EDUCATION SCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="0;UNKNOWN;4;Year 12 or equivalent;3;Year 11 or equivalent;2;Year 10 or equivalent;1;Year 9 or equivalent or below" connection="connDECVPRODSQL2005" defaultValue="&quot;0&quot;" PathID="STUDENT_CENSUS_DATAFATHER_EDUCATION_SCHOOL" html="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="110"/>
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
				<RadioButton id="19" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="FATHER_EDUCATION_NONSCHOOL" fieldSource="FATHER_EDUCATION_NONSCHOOL" required="False" caption="POST-SCHOOL EDUCATION - FATHER/PARENT2" wizardCaption="FATHER EDUCATION NONSCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="0;UNKNOWN;7;Bachelor degree or above;6;Advanced Diploma/Diploma;5;Certificate I to IV (incl. Trade Cert);8;No non-school qualification" connection="connDECVPRODSQL2005" PathID="STUDENT_CENSUS_DATAFATHER_EDUCATION_NONSCHOOL" html="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="112"/>
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
				<ListBox id="20" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="FATHER_OCCUPATIONGROUP" fieldSource="FATHER_OCCUPATIONGROUP" required="False" caption="FATHER OCCUPATION GROUP" wizardCaption="FATHER OCCUPATIONGROUP" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" dataSource="U;UNKNOWN;A;A - Senior Management, Qualified Professionals;B;B - Other Management, Arts/Media/Sports, Other Professionals;C;C - Trades, Clerks, Skilled Office, Sales and Service;D;D - Machine Operators, Hospitality, Asistants, Labourers;N;N - No paid work in last 12 months" connection="connDECVPRODSQL2005" defaultValue="&quot;U&quot;" PathID="STUDENT_CENSUS_DATAFATHER_OCCUPATIONGROUP">
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
				<TextBox id="99" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DATE_LAST_ATTENDED_SCHOOL" PathID="STUDENT_CENSUS_DATADATE_LAST_ATTENDED_SCHOOL" fieldSource="DATE_LAST_ATTENDED_SCHOOL" format="d/m/yyyy" caption="DATE LAST ATTENDED SCHOOL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="107" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_gotoTAFECensusPage" PathID="STUDENT_CENSUS_DATALink_gotoTAFECensusPage" hrefSource="Student_CensusTAFE_maintain.ccp" wizardUseTemplateBlock="False" removeParameters="override">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="108" action="Show" conditionType="Parameter" dataType="Integer" condition="Equal" name1="override" sourceType1="URL" name2="1" sourceType2="Expression"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Hidden id="114" fieldSourceType="DBColumn" dataType="Text" name="Hidden_household_status" PathID="STUDENT_CENSUS_DATAHidden_household_status">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="120"/>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="116" name="Hidden_household_status" sourceType="Variable" sourceName="tmpHouseholdstatus"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="124" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="ResidentialStatusErrormessage" PathID="STUDENT_CENSUS_DATAResidentialStatusErrormessage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="125" fieldSourceType="DBColumn" dataType="Text" name="Hidden_KoorieTorresFlag" PathID="STUDENT_CENSUS_DATAHidden_KoorieTorresFlag" defaultValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="127" eventType="Server"/>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="126" name="Hidden_KoorieTorresFlag" sourceType="Variable" sourceName="tmpKoorieTorresFlag" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="153" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CRIS_ID" PathID="STUDENT_CENSUS_DATACRIS_ID" caption="CRIS ID" fieldSource="CRIS_ID" required="False" unique="False" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="189" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="False" returnValueType="Number" name="YOUTH_JUSTICE_INVOLVEMENT" fieldSource="YOUTH_JUSTICE_INVOLVEMENT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACCESS ATRISK" caption="Youth Justice involvement?" required="False" unique="False" PathID="STUDENT_CENSUS_DATAYOUTH_JUSTICE_INVOLVEMENT" dataSource="No;No;Yes;Yes">
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
				<TextBox id="191" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="YOUTH_JUSTICE_INVOLVEMENT_DETAILS" PathID="STUDENT_CENSUS_DATAYOUTH_JUSTICE_INVOLVEMENT_DETAILS" caption="Youth Justice involvement details" fieldSource="YOUTH_JUSTICE_INVOLVEMENT_DETAILS" required="False" unique="False" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes>
						<Attribute id="192" name="placeholder" sourceType="Expression" source="&quot;Please specify if Yes&quot;"/>
					</Attributes>
					<Features/>
				</TextBox>
				<Hidden id="197" fieldSourceType="DBColumn" dataType="Boolean" name="Hidden_YouthJusticeInvolvementFlag" PathID="STUDENT_CENSUS_DATAHidden_YouthJusticeInvolvementFlag" defaultValue="&quot;N&quot;" visible="Yes">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="198"/>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="199" name="Hidden_YouthJusticeInvolvementFlag" sourceType="Variable" sourceName="tmpYouthJusticeFlag" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="66" name="Hidden_last_altered_by" sourceType="Expression" sourceName="dbutility.userid.toupper()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="67" name="Hidden_last_altered_date" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="121" name="tmpHouseNow" type="Text" initialValue="0"/>
						<Action actionName="Declare Variable" actionCategory="General" id="122" name="tmpHouseOrig" type="Text" initialValue="0"/>
						<Action actionName="Save Control Value" actionCategory="General" id="118" name="HOUSEHOLD_STATUS" sourceType="Variable" sourceName="tmpHouseNow"/>
						<Action actionName="Save Control Value" actionCategory="General" id="119" name="Hidden_household_status" sourceType="Variable" sourceName="tmpHouseOrig"/>
						<Action actionName="Custom Code" actionCategory="General" id="117"/>
						<Action actionName="Declare Variable" actionCategory="General" id="128" name="tmpKooriNow" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Declare Variable" actionCategory="General" id="129" name="tmpKooriOrig" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Save Control Value" actionCategory="General" id="130" name="Hidden_KoorieTorresFlag" sourceType="Variable" sourceName="tmpKooriOrig"/>
						<Action actionName="Save Control Value" actionCategory="General" id="131" name="KOORITORRESFLAG" sourceType="Variable" sourceName="tmpKooriNow"/>
						<Action actionName="Custom Code" actionCategory="General" id="132"/>
						<Action actionName="Custom Code" actionCategory="General" id="196"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="5" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" parameterSource="STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="190" tableName="STUDENT_CENSUS_DATA"/>
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
		<Record id="133" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_CENSUS_DATA1" connection="connDECVPRODSQL2005" dataSource="STUDENT_CENSUS_DATA" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="STUDENT_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="False" wizardCaption="Edit STUDENT Access / Alert" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Users/eaffleck/Documents/CodeCharge Studio 5 Projects/svn_STUDENT_ADMIN_CCS5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="STUDENT_CENSUS_DATA1">
			<Components>
				<Button id="135" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_CENSUS_DATA1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="136" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_CENSUS_DATA1Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="138" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STUDENT ID" caption="STUDENT ID" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" dataSource="STUDENT" boundColumn="STUDENT_ID" textColumn="SURNAME" PathID="STUDENT_CENSUS_DATA1STUDENT_ID" html="False">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="139" tableName="STUDENT"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="140" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="False" returnValueType="Number" name="RESTRICT_ACCESS_ATRISK" fieldSource="RESTRICT_ACCESS_ATRISK" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACCESS ATRISK" caption="Is the Student AT RISK?" required="True" unique="False" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACCESS_ATRISK" dataSource="No;No;Yes;Yes">
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
				<TextArea id="141" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RESTRICT_ACCESS_ATRISK_DESCRIPTION" fieldSource="RESTRICT_ACCESS_ATRISK_DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACCESS ATRISK DESCRIPTION" caption="Describe AT RISK Restrictions" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACCESS_ATRISK_DESCRIPTION">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="150"/>
							</Actions>
						</Event>
					</Events>
					<Attributes>
						<Attribute id="186" name="maxlength" sourceType="Expression" source="&quot;190&quot;"/>
					</Attributes>
					<Features/>
				</TextArea>
				<RadioButton id="142" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="False" returnValueType="Number" name="RESTRICT_ACCESS_ALERT" fieldSource="RESTRICT_ACCESS_ALERT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACCESS ALERT" caption="Is there an ACCESS ALERT for the student?" required="True" unique="False" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACCESS_ALERT" dataSource="No;No;Yes;Yes">
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
				<RadioButton id="143" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="False" returnValueType="Number" name="RESTRICT_ACCESS_ALERT_RECEIVED" fieldSource="RESTRICT_ACCESS_ALERT_RECEIVED" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACCESS ALERT RECEIVED" caption="Has ACCESS ALERT been RECEIVED?" required="False" unique="False" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACCESS_ALERT_RECEIVED" dataSource="No;No;Yes;Yes">
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
				<RadioButton id="144" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="RESTRICT_ACCESS_TYPE" fieldSource="RESTRICT_ACCESS_TYPE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACCESS TYPE" caption="ACCESS TYPE" required="False" unique="False" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACCESS_TYPE" dataSource="Parenting Order;Parenting Order;Parenting Plan;Parenting Plan;Intervention Order;Intervention Order;Protection Order;Protection Order;Informal Carer Stat Dec;Informal Carer Stat Dec;DHHS Authorisation;DHHS Authorisation;Witness Protection Program Order;Witness Protection Program Order;Other;Other;None;None">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="149"/>
							</Actions>
						</Event>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="151"/>
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
				<TextArea id="145" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RESTRICT_ACCESS_DESCRIPTION" fieldSource="RESTRICT_ACCESS_DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACCESS DESCRIPTION" caption="Describe any ACCESS Restrictions" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACCESS_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes>
						<Attribute id="187" name="maxlength" sourceType="Expression" source="&quot;190&quot;"/>
					</Attributes>
					<Features/>
				</TextArea>
				<RadioButton id="146" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="False" returnValueType="Number" name="RESTRICT_ACTIVITY_ALERT" fieldSource="RESTRICT_ACTIVITY_ALERT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACTIVITY ALERT" caption="Is there an ACTIVITY ALERT for the Student?" required="True" unique="False" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACTIVITY_ALERT" dataSource="No;No;Yes;Yes">
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
				<TextArea id="147" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RESTRICT_ACTIVITY_DESCRIPTION" fieldSource="RESTRICT_ACTIVITY_DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESTRICT ACTIVITY DESCRIPTION" caption="Describe any ACTIVITY Restrictions" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="STUDENT_CENSUS_DATA1RESTRICT_ACTIVITY_DESCRIPTION">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="152"/>
							</Actions>
						</Event>
					</Events>
					<Attributes>
						<Attribute id="188" name="maxlength" sourceType="Expression" source="&quot;190&quot;"/>
					</Attributes>
					<Features/>
				</TextArea>
			</Components>
			<Events>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="148"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="137" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" parameterSource="STUDENT_ID" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="134" schemaName="dbo" tableName="STUDENT_CENSUS_DATA"/>
			</JoinTables>
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
		<CodeFile id="3" language="VB" name="Student_Census_maintain.aspx" forShow="True" url="Student_Census_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Census_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Census_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Page1" language="VB" name="Student_Census_maintain_style.css" forShow="False" comment="/*" commentEnd="*/" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Declare Variable" actionCategory="General" id="100" name="enrolCategory" type="Text" initialValue="&quot;&quot;"/>
				<Action actionName="Declare Variable" actionCategory="General" id="105" name="tmpOverride" type="Integer" initialValue="0"/>
				<Action actionName="Declare Variable" actionCategory="General" id="106" name="tmpStudentID" type="Text" initialValue="&quot;&quot;"/>
				<Action actionName="Retrieve Value for Variable" actionCategory="General" id="103" name="tmpOverride" sourceType="URL" sourceName="override"/>
				<Action actionName="Retrieve Value for Variable" actionCategory="General" id="104" name="tmpStudentID" sourceType="URL" sourceName="STUDENT_ID"/>
				<Action actionName="DLookup" actionCategory="Database" id="101" typeOfTarget="Variable" expression="&quot;rtrim([CATEGORY_CODE])&quot;" domain="&quot;STUDENT&quot;" criteria="&quot;CATEGORY_CODE = 'TAFE' and STUDENT_ID = &quot; &amp; tmpStudentID.ToString()" connection="connDECVPRODSQL2005" dataType="Text" target="enrolCategory"/>
				<Action actionName="Custom Code" actionCategory="General" id="102"/>
			</Actions>
		</Event>
	</Events>
</Page>
