<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="27" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="SUBJECT_list.ccp" wizardUseTemplateBlock="False" PathID="Link1" removeParameters="SUBJECT_ID">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="29" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="NewRecord1" dataSource="SUBJECT" errorSummator="Error" wizardCaption="Add/Edit SUBJECT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" customInsertType="Table" activeCollection="UFormElements" activeTableType="SUBJECT" customInsert="SUBJECT" customUpdateType="Table" customUpdate="SUBJECT" PathID="NewRecord1">
			<Components>
				<TextBox id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="SUBJECT_ID" fieldSource="SUBJECT_ID" required="True" caption="SUBJECT ID" wizardCaption="ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" unique="True" PathID="NewRecord1SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" required="True" caption="SUBJECT ABBREV" wizardCaption="ABBREV" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1SUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="36" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" required="True" caption="SUBJECT TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1SUBJECT_TITLE">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="141" sourceType="Expression" sourceName="trim(NewRecord1SUBJECT_TITLE.Text)"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" required="True" caption="YEAR LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="40" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="DEFAULT_SEMESTER" fieldSource="DEFAULT_SEMESTER" required="True" caption="DEFAULT SEMESTER" wizardCaption="DEFAULT SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="B" _nameOfList="B" dataSource="1;1;2;2;B;B" PathID="NewRecord1DEFAULT_SEMESTER">
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
				<ListBox id="38" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="DEFAULT_TEACHER_ID" fieldSource="DEFAULT_TEACHER_ID" required="True" caption="DEFAULT TEACHER ID" wizardCaption="DEFAULT TEACHER ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" boundColumn="staff_ID" textColumn="staffname" PathID="NewRecord1DEFAULT_TEACHER_ID" orderBy="status_type, staff_ID">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="131" tableName="View_StaffList_Active_Inactive" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUB_SCHOOL" fieldSource="SUB_SCHOOL" required="False" caption="SUB SCHOOL" wizardCaption="SUB SCHOOL" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1SUB_SCHOOL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="42" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="KLA_ID" fieldSource="KLA_ID" required="True" caption="KLA ID" wizardCaption="KLA ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="KEY_LEARNING_AREA" boundColumn="KLA_ID" textColumn="KEY_LEARNING_AREA" PathID="NewRecord1KLA_ID">
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
				<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="CSF_CLASS_LEVEL" fieldSource="CSF_CLASS_LEVEL" required="False" caption="CSF CLASS LEVEL" wizardCaption="CSF CLASS LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1CSF_CLASS_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="MAX_BOOKS" fieldSource="MAX_BOOKS" required="True" caption="MAX BOOKS" wizardCaption="MAX BOOKS" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1MAX_BOOKS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="89" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="cbx_COURSE_B" checkedValue="&quot;B&quot;" uncheckedValue="&quot;&quot;" PathID="NewRecord1cbx_COURSE_B" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="90" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="cbx_COURSE_C" checkedValue="&quot;C&quot;" uncheckedValue="&quot;&quot;" PathID="NewRecord1cbx_COURSE_C" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="91" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="cbx_COURSE_E" checkedValue="&quot;E&quot;" uncheckedValue="&quot;&quot;" PathID="NewRecord1cbx_COURSE_E" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="92" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="cbx_COURSE_I" checkedValue="&quot;I&quot;" uncheckedValue="&quot;&quot;" PathID="NewRecord1cbx_COURSE_I" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextArea id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DESCRIPTION_LINE1" fieldSource="DESCRIPTION_LINE1" required="False" caption="DESCRIPTION LINE1" wizardCaption="DESCRIPTION LINE1" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1DESCRIPTION_LINE1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DESCRIPTION_LINE2" fieldSource="DESCRIPTION_LINE2" required="False" caption="DESCRIPTION LINE2" wizardCaption="DESCRIPTION LINE2" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1DESCRIPTION_LINE2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="48" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="STATUS" fieldSource="STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="No" _nameOfList="Inactive" dataSource="Yes;Active;No;Inactive" PathID="NewRecord1STATUS">
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
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="30" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="NewRecord1Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="31" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="NewRecord1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="32" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="NewRecord1Button_Cancel" returnPage="SUBJECT_list.ccp" removeParameters="SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="93" fieldSourceType="DBColumn" dataType="Text" name="hidden_VALID_COURSE_DISTRIBUTION" fieldSource="VALID_COURSE_DISTRIBUTION" defaultValue="&quot;&quot;" PathID="NewRecord1hidden_VALID_COURSE_DISTRIBUTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="136" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" PathID="NewRecord1hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserId.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="137" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" PathID="NewRecord1hidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="yyyy-mm-dd H:nn" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="140" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBJECT_TITLE_NEW" fieldSource="SUBJECT_TITLE_NEW" required="False" caption="New Title" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1SUBJECT_TITLE_NEW">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="37" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="CAMPUS_CODE" fieldSource="CAMPUS_CODE" required="True" caption="CAMPUS CODE" wizardCaption="CAMPUS CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="D" _nameOfList="DECV" dataSource="D;VSV" defaultValue="&quot;D&quot;" PathID="NewRecord1CAMPUS_CODE">
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
				<ListBox id="148" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="CORE_YEARLEVELS" wizardEmptyCaption="Select Value" PathID="NewRecord1CORE_YEARLEVELS" fieldSource="CORE_YEARLEVELS" caption="CORE FOR YEARLEVEL" dataSource="7;Year 7;8;Year 8;9;Year 9;10;Year 10;7-8;Years 7 &amp; 8;9-10;Years 9 &amp; 10;Elective;Elective">
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
				<RadioButton id="156" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="rbCORE_SUBJECT_FLAG" PathID="NewRecord1rbCORE_SUBJECT_FLAG" caption="CORE / NON-CORE SUBJECT" fieldSource="CORE_SUBJECT_FLAG" dataSource="1;CORE;0;NON-CORE" defaultValue="0">
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
				<TextBox id="157" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="LINKED_SUBJECT_ID" PathID="NewRecord1LINKED_SUBJECT_ID" fieldSource="LINKED_SUBJECT_ID" caption="LINKED SUBJECT ID" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="158" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" defaultValue="Unchecked" name="checkEXTENDABLE_SUBJECT" PathID="NewRecord1checkEXTENDABLE_SUBJECT" caption="EXTENDABLE SUBJECT" fieldSource="EXTENDABLE_FLAG" checkedValue="1" uncheckedValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextBox id="166" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="ALLOCATE_STUDENTS_MAX" fieldSource="ALLOCATE_STUDENTS_MAX" required="True" caption="MAX STUDENT_ALLOCATION" wizardCaption="MAX BOOKS" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewRecord1ALLOCATE_STUDENTS_MAX" format="0;(0)" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="173" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="listParentGroupSubject" wizardEmptyCaption="Select Value" PathID="NewRecord1listParentGroupSubject" fieldSource="PARENT_SUBJECT_ID" connection="connDECVPRODSQL2005" dataSource="SELECT '-1' as SUBJECT_ID, '- This is a Parent Group Subject -' as display_text
	union
SELECT SUBJECT_ID, rtrim(SUBJECT_ABBREV) + ' - ' + rtrim(SUBJECT_TITLE) as display_text
FROM SUBJECT 
where status=1
and parent_subject_id = -1
and year_level between 7 and 10" boundColumn="SUBJECT_ID" textColumn="display_text" required="True" defaultValue="0" caption="Parent / Full Year Grouping">
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
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="53"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="94"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="95"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="135"/>
						<Action actionName="Save Variable Value" actionCategory="General" id="165" name="&quot;Item has been Updated&quot;" sourceType="Session" sourceName="notifymessage"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="138" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserId.ToUpper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="139" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="176" sourceType="Session" sourceName="notifymessage" name="&quot;Item has been Added&quot;"/>
					</Actions>
				</Event>
</Events>
			<TableParameters>
				<TableParameter id="168" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_ID" logicOperator="And" orderNumber="1" parameterSource="SUBJECT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="175" tableName="SUBJECT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="169" fieldName="*"/>
			</Fields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="54" field="SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="SUBJECT_ID" omitIfEmpty="True"/>
				<CustomParameter id="55" field="SUBJECT_ABBREV" dataType="Text" parameterType="Control" parameterSource="SUBJECT_ABBREV" omitIfEmpty="True"/>
				<CustomParameter id="56" field="SUBJECT_TITLE" dataType="Text" parameterType="Control" parameterSource="SUBJECT_TITLE" omitIfEmpty="True"/>
				<CustomParameter id="57" field="CAMPUS_CODE" dataType="Text" parameterType="Control" parameterSource="CAMPUS_CODE" omitIfEmpty="True"/>
				<CustomParameter id="58" field="YEAR_LEVEL" dataType="Integer" parameterType="Control" parameterSource="YEAR_LEVEL" omitIfEmpty="True"/>
				<CustomParameter id="59" field="DEFAULT_SEMESTER" dataType="Text" parameterType="Control" parameterSource="DEFAULT_SEMESTER" omitIfEmpty="True"/>
				<CustomParameter id="60" field="DEFAULT_TEACHER_ID" dataType="Text" parameterType="Control" parameterSource="DEFAULT_TEACHER_ID" omitIfEmpty="True"/>
				<CustomParameter id="61" field="SUB_SCHOOL" dataType="Text" parameterType="Control" parameterSource="SUB_SCHOOL" omitIfEmpty="True"/>
				<CustomParameter id="62" field="KLA_ID" dataType="Float" parameterType="Control" parameterSource="KLA_ID" omitIfEmpty="True"/>
				<CustomParameter id="63" field="CSF_CLASS_LEVEL" dataType="Integer" parameterType="Control" parameterSource="CSF_CLASS_LEVEL" omitIfEmpty="True"/>
				<CustomParameter id="64" field="MAX_BOOKS" dataType="Integer" parameterType="Control" parameterSource="MAX_BOOKS" omitIfEmpty="True"/>
				<CustomParameter id="65" field="DESCRIPTION_LINE1" dataType="Text" parameterType="Control" parameterSource="DESCRIPTION_LINE1" omitIfEmpty="True"/>
				<CustomParameter id="66" field="DESCRIPTION_LINE2" dataType="Text" parameterType="Control" parameterSource="DESCRIPTION_LINE2" omitIfEmpty="True"/>
				<CustomParameter id="67" field="STATUS" dataType="Boolean" parameterType="Control" parameterSource="STATUS" omitIfEmpty="True"/>
				<CustomParameter id="68" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" defaultValue="&quot;unknown&quot;" omitIfEmpty="False" parameterSource="DBUtility.UserId.ToString()"/>
				<CustomParameter id="69" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="DateTime.Now()"/>
				<CustomParameter id="70" field="VALID_COURSE_DISTRIBUTION" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_VALID_COURSE_DISTRIBUTION"/>
				<CustomParameter id="146" field="SUBJECT_TITLE_NEW" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="SUBJECT_TITLE_NEW"/>
				<CustomParameter id="150" field="CORE_YEARLEVELS" dataType="Text" parameterType="Control" defaultValue="&quot;&quot;" omitIfEmpty="False" parameterSource="CORE_YEARLEVELS"/>
				<CustomParameter id="159" field="CORE_SUBJECT_FLAG" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="rbCORE_SUBJECT_FLAG"/>
				<CustomParameter id="160" field="LINKED_SUBJECT_ID" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="LINKED_SUBJECT_ID"/>
				<CustomParameter id="161" field="EXTENDABLE_FLAG" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="checkEXTENDABLE_SUBJECT"/>
				<CustomParameter id="171" field="ALLOCATE_STUDENTS_MAX" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="ALLOCATE_STUDENTS_MAX"/>
				<CustomParameter id="177" field="PARENT_SUBJECT_ID" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="listParentGroupSubject"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="71" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" parameterType="URL" parameterSource="SUBJECT_ID" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="72" field="SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="SUBJECT_ID" omitIfEmpty="True"/>
				<CustomParameter id="73" field="SUBJECT_ABBREV" dataType="Text" parameterType="Control" parameterSource="SUBJECT_ABBREV" omitIfEmpty="True"/>
				<CustomParameter id="74" field="SUBJECT_TITLE" dataType="Text" parameterType="Control" parameterSource="SUBJECT_TITLE" omitIfEmpty="True"/>
				<CustomParameter id="75" field="CAMPUS_CODE" dataType="Text" parameterType="Control" parameterSource="CAMPUS_CODE" omitIfEmpty="True"/>
				<CustomParameter id="76" field="YEAR_LEVEL" dataType="Integer" parameterType="Control" parameterSource="YEAR_LEVEL" omitIfEmpty="True"/>
				<CustomParameter id="77" field="DEFAULT_SEMESTER" dataType="Text" parameterType="Control" parameterSource="DEFAULT_SEMESTER" omitIfEmpty="True"/>
				<CustomParameter id="78" field="DEFAULT_TEACHER_ID" dataType="Text" parameterType="Control" parameterSource="DEFAULT_TEACHER_ID" omitIfEmpty="True"/>
				<CustomParameter id="79" field="SUB_SCHOOL" dataType="Text" parameterType="Control" parameterSource="SUB_SCHOOL" omitIfEmpty="True"/>
				<CustomParameter id="80" field="KLA_ID" dataType="Float" parameterType="Control" parameterSource="KLA_ID" omitIfEmpty="True"/>
				<CustomParameter id="81" field="CSF_CLASS_LEVEL" dataType="Integer" parameterType="Control" parameterSource="CSF_CLASS_LEVEL" omitIfEmpty="True"/>
				<CustomParameter id="82" field="MAX_BOOKS" dataType="Integer" parameterType="Control" parameterSource="MAX_BOOKS" omitIfEmpty="True"/>
				<CustomParameter id="83" field="DESCRIPTION_LINE1" dataType="Text" parameterType="Control" parameterSource="DESCRIPTION_LINE1" omitIfEmpty="True"/>
				<CustomParameter id="84" field="DESCRIPTION_LINE2" dataType="Text" parameterType="Control" parameterSource="DESCRIPTION_LINE2" omitIfEmpty="True"/>
				<CustomParameter id="85" field="STATUS" dataType="Boolean" parameterType="Control" parameterSource="STATUS" omitIfEmpty="True"/>
				<CustomParameter id="86" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" defaultValue="&quot;unknown&quot;" omitIfEmpty="False" parameterSource="DBUtility.UserId.ToString()"/>
				<CustomParameter id="87" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="DateTime.Now()"/>
				<CustomParameter id="88" field="VALID_COURSE_DISTRIBUTION" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_VALID_COURSE_DISTRIBUTION"/>
				<CustomParameter id="147" field="SUBJECT_TITLE_NEW" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="SUBJECT_TITLE_NEW"/>
				<CustomParameter id="151" field="CORE_YEARLEVELS" dataType="Text" parameterType="Control" defaultValue="&quot;&quot;" omitIfEmpty="False" parameterSource="CORE_YEARLEVELS"/>
				<CustomParameter id="162" field="CORE_SUBJECT_FLAG" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="rbCORE_SUBJECT_FLAG"/>
				<CustomParameter id="163" field="LINKED_SUBJECT_ID" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="LINKED_SUBJECT_ID"/>
				<CustomParameter id="164" field="EXTENDABLE_FLAG" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="checkEXTENDABLE_SUBJECT"/>

				<CustomParameter id="172" field="ALLOCATE_STUDENTS_MAX" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="ALLOCATE_STUDENTS_MAX"/>
				<CustomParameter id="178" field="PARENT_SUBJECT_ID" dataType="Integer" parameterType="Control" defaultValue="0" omitIfEmpty="False" parameterSource="listParentGroupSubject"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="170" dataType="Integer" fieldName="SUBJECT_ID" tableName="SUBJECT"/>
			</PKFields>
		</Record>
		<EditableGrid id="96" urlType="Relative" secured="False" emptyRows="1" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="10" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" dataSource="SUBJECT_TEACHER" activeCollection="TableParameters" name="SUBJECT_TEACHER" pageSizeLimit="100" wizardCaption="List of SUBJECT TEACHER " wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Subject Teachers found!" PathID="SUBJECT_TEACHER" deleteControl="CheckBox_Delete" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<ListBox id="111" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" required="False" caption="STAFF ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="SUBJECT_TEACHERSTAFF_ID" dataSource="View_StaffList_Active_Inactive" boundColumn="staff_ID" connection="connDECVPRODSQL2005" textColumn="staffname" orderBy="status_type, staff_ID">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="126" tableName="View_StaffList_Active_Inactive" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="112" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="SUBJECT_TIMEFRACTION" fieldSource="SUBJECT_TIMEFRACTION" required="True" caption="SUBJECT TIMEFRACTION" wizardCaption="SUBJECT TIMEFRACTION" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SUBJECT_TEACHERSUBJECT_TIMEFRACTION" defaultValue="0.00" format="0.00">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Maximum Value" actionCategory="Validation" id="132" maximumValue="1.1" errorMessage="Maximum SUBJECT TIME FRACTION is 1.1"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="113" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="ALLOCATABLE_FLAG" fieldSource="ALLOCATABLE_FLAG" required="False" caption="ALLOCATABLE FLAG" wizardCaption="ALLOCATABLE FLAG" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SUBJECT_TEACHERALLOCATABLE_FLAG" _valueOfList="0" _nameOfList="NOT to this Teacher" dataSource="1;Yes!;0;NOT to this Teacher">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="124"/>
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
				<CheckBox id="116" visible="Dynamic" fieldSourceType="CodeExpression" dataType="Boolean" name="CheckBox_Delete" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardAddNbsp="True" PathID="SUBJECT_TEACHERCheckBox_Delete" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Button id="117" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="SUBJECT_TEACHERButton_Submit">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="118" message="Submit records?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="119" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel" PathID="SUBJECT_TEACHERCancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="114" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SUBJECT_TEACHERLAST_ALTERED_BY" defaultValue="dbutility.userid.tostring">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="128" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="120" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblLAST_ALTERED_BY" PathID="SUBJECT_TEACHERlblLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="110" fieldSourceType="DBColumn" dataType="Integer" name="SUBJECT_ID" fieldSource="SUBJECT_ID" required="True" caption="SUBJECT ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SUBJECT_TEACHERSUBJECT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="127" name="SUBJECT_ID" sourceType="URL" sourceName="SUBJECT_ID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="121" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblLAST_ALTERED_DATE" PathID="SUBJECT_TEACHERlblLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="115" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SUBJECT_TEACHERLAST_ALTERED_DATE" defaultValue="CurrentDateTime">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="129" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeExecuteInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="133"/>
					</Actions>
				</Event>
				<Event name="BeforeExecuteUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="134"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="107" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SUBJECT_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="97" tableName="SUBJECT_TEACHER" posLeft="10" posTop="10" posWidth="160" posHeight="152"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="106" fieldName="*"/>
			</Fields>
			<PKFields>
				<PKField id="108" tableName="SUBJECT_TEACHER" fieldName="SUBJECT_ID" dataType="Integer"/>
				<PKField id="109" tableName="SUBJECT_TEACHER" fieldName="STAFF_ID" dataType="Text"/>
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
		</EditableGrid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SUBJECT_maint.aspx" forShow="True" url="SUBJECT_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SUBJECT_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SUBJECT_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="24" groupID="1"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
