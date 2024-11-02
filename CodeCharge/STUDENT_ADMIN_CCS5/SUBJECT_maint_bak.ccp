<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="SUBJECT" dataSource="SUBJECT" errorSummator="Error" wizardCaption="Add/Edit SUBJECT " wizardFormMethod="post" returnPage="SUBJECT_list.ccp" pasteAsReplace="pasteAsReplace" PathID="SUBJECT">
			<Components>
				<TextBox id="26" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="txtNewSubjectID" unique="True" fieldSource="SUBJECT_ID" caption="Subject ID" PathID="SUBJECTtxtNewSubjectID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubjectID" fieldSource="SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" required="True" caption="ABBREV" wizardCaption="ABBREV" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" PathID="SUBJECTSUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" required="True" caption="TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" PathID="SUBJECTSUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="9" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="CAMPUS_CODE" fieldSource="CAMPUS_CODE" required="True" caption="CAMPUS CODE" wizardCaption="CAMPUS CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="CAMPUS" boundColumn="CAMPUS_CODE" textColumn="CAMPUS_CODE" PathID="SUBJECTCAMPUS_CODE">
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
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" required="True" caption="YEAR LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" PathID="SUBJECTYEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DEFAULT_SEMESTER" fieldSource="DEFAULT_SEMESTER" required="True" caption="DEFAULT SEMESTER" wizardCaption="DEFAULT SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" PathID="SUBJECTDEFAULT_SEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="DEFAULT_TEACHER_ID" fieldSource="DEFAULT_TEACHER_ID" required="True" caption="DEFAULT TEACHER ID" wizardCaption="DEFAULT TEACHER ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="STAFF" boundColumn="STAFF_ID" textColumn="STAFF_ID" PathID="SUBJECTDEFAULT_TEACHER_ID">
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
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUB_SCHOOL" fieldSource="SUB_SCHOOL" required="False" caption="SUB SCHOOL" wizardCaption="SUB SCHOOL" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="SUBJECTSUB_SCHOOL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="14" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="KLA_ID" fieldSource="KLA_ID" required="True" caption="KLA ID" wizardCaption="KLA ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="KEY_LEARNING_AREA" boundColumn="KLA_ID" textColumn="KEY_LEARNING_AREA" PathID="SUBJECTKLA_ID">
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
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="CSF_CLASS_LEVEL" fieldSource="CSF_CLASS_LEVEL" required="False" caption="CSF CLASS LEVEL" wizardCaption="CSF CLASS LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" PathID="SUBJECTCSF_CLASS_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="MAX_BOOKS" fieldSource="MAX_BOOKS" required="True" caption="MAX BOOKS" wizardCaption="MAX BOOKS" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" PathID="SUBJECTMAX_BOOKS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBoxList id="17" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="VALID_COURSE_DISTRIBUTION" fieldSource="VALID_COURSE_DISTRIBUTION" required="False" caption="VALID COURSE DISTRIBUTION" wizardCaption="VALID COURSE DISTRIBUTION" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" connection="connDECVPRODSQL2005" dataSource="B;Book;C;CD;E;Email;I;Internet" PathID="SUBJECTVALID_COURSE_DISTRIBUTION">
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
				</CheckBoxList>
				<TextArea id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DESCRIPTION_LINE1" fieldSource="DESCRIPTION_LINE1" required="False" caption="DESCRIPTION LINE1" wizardCaption="DESCRIPTION LINE1" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardRows="3" PathID="SUBJECTDESCRIPTION_LINE1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextArea id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DESCRIPTION_LINE2" fieldSource="DESCRIPTION_LINE2" required="False" caption="DESCRIPTION LINE2" wizardCaption="DESCRIPTION LINE2" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardRows="3" PathID="SUBJECTDESCRIPTION_LINE2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="20" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="STATUS" fieldSource="STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" connection="connDECVPRODSQL2005" dataSource="1;Active;0;Inactive" PathID="SUBJECTSTATUS">
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
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="SUBJECTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="SUBJECTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="SUBJECTButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="22" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" parameterSource="SUBJECT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
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
		<IncludePage id="27" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="SUBJECT_list.ccp" wizardUseTemplateBlock="False" PathID="Link1">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SUBJECT_maint_bak.aspx" forShow="True" url="SUBJECT_maint_bak.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SUBJECT_maint_bak.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SUBJECT_maint_bakDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="24" groupID="1"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
