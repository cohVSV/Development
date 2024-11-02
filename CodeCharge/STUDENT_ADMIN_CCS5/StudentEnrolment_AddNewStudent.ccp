<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="79" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" returnPage="StudentEnrolment_AddNewStudent.ccp" customInsertType="Procedure" dataSource="STUDENT" activeCollection="TableParameters" PathID="STUDENT">
			<Components>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="80" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="EnrolDate" caption="ENROLMENT DATE" required="True" defaultValue="now()" format="dd/mm/yyyy" PathID="STUDENTEnrolDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTSURNAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="83" name="SURNAME" sourceType="URL" sourceName="s_SURNAME"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTFIRST_NAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="84" name="FIRST_NAME" sourceType="URL" sourceName="s_FIRST_NAME"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MIDDLE_NAME" fieldSource="MIDDLE_NAME" required="False" caption="MIDDLE NAME" wizardCaption="MIDDLE NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTMIDDLE_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="BIRTH_DATE" fieldSource="BIRTH_DATE" required="True" caption="DATE OF BIRTH" wizardCaption="BIRTH DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy" PathID="STUDENTBIRTH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="11" name="DatePicker_BIRTH_DATE" control="BIRTH_DATE" wizardSatellite="True" wizardControl="BIRTH_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STUDENTDatePicker_BIRTH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<RadioButton id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="SEX" fieldSource="SEX" required="True" caption="GENDER" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="M" _nameOfList="Male" dataSource="F;Female;M;Male" PathID="STUDENTSEX">
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
				<ListBox id="65" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="listYearLevel" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="0;0;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12" _valueOfList="2" _nameOfList="2" caption="YEAR LEVEL" required="True" PathID="STUDENTlistYearLevel">
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
				<TextBox id="82" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="EnrolYear" caption="ENROLMENT YEAR" defaultValue="(IIF((month(now())&gt;=9),(year(now())), (year(now())+1)))" PathID="STUDENTEnrolYear">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="64" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="ListBox_SubCategory" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="select rtrim(SUBCATEGORY_FULL_TITLE) as SUBCATEGORY_FULL_TITLE from ENROLMENT_CATEGORY where STATUS=1 order by rtrim(SUBCATEGORY_FULL_TITLE)" boundColumn="SUBCATEGORY_FULL_TITLE" textColumn="SUBCATEGORY_FULL_TITLE" required="True" caption="Category / SubCategory dropdown" PathID="STUDENTListBox_SubCategory">
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
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="ATTENDING_SCHOOL_ID" fieldSource="ATTENDING_SCHOOL_ID" required="False" caption="ATTENDING SCHOOL ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTATTENDING_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblAttendingSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="HOME_SCHOOL_ID" fieldSource="HOME_SCHOOL_ID" required="True" caption="HOME SCHOOL ID" wizardCaption="HOME SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTHOME_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHomeSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" required="False" caption="CATEGORY CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBCATEGORY_CODE" fieldSource="SUBCATEGORY_CODE" required="False" caption="SUBCATEGORY CODE" wizardCaption="SUBCATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTSUBCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EnrolmentCategoryTemp" PathID="STUDENTEnrolmentCategoryTemp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="78" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblErrorMessages">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="DLookup" actionCategory="Database" id="57" typeOfTarget="Control" expression="&quot;CATEGORY_CODE&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="CATEGORY_CODE"/>
						<Action actionName="DLookup" actionCategory="Database" id="58" typeOfTarget="Control" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" expression="&quot;SUBCATEGORY_CODE&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="SUBCATEGORY_CODE"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="DLookup" actionCategory="Database" id="59" typeOfTarget="Control" expression="&quot;CATEGORY_CODE&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="CATEGORY_CODE"/>
						<Action actionName="DLookup" actionCategory="Database" id="60" typeOfTarget="Control" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" expression="&quot;SUBCATEGORY_CODE&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="SUBCATEGORY_CODE"/>
					</Actions>
				</Event>
				<Event name="BeforeSelect" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="75" name="tmpStudentID" type="Integer"/>
						<Action actionName="Retrieve Value for Variable" actionCategory="General" id="77" name="tmpStudentID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Custom Code" actionCategory="General" id="76"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="Expression" orderNumber="1" parameterSource="0"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="28" tableName="STUDENT" posLeft="10" posTop="10" posWidth="349" posHeight="276"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="29" fieldName="MIDDLE_NAME" isExpression="False" alias="MIDDLE_NAME" tableName="STUDENT"/>
				<Field id="30" tableName="STUDENT" fieldName="STUDENT_ID"/>
				<Field id="31" fieldName="SURNAME" isExpression="False" alias="SURNAME" tableName="STUDENT"/>
				<Field id="32" fieldName="FIRST_NAME" isExpression="False" alias="FIRST_NAME" tableName="STUDENT"/>
				<Field id="34" tableName="STUDENT" fieldName="BIRTH_DATE"/>
				<Field id="35" tableName="STUDENT" fieldName="SEX"/>
				<Field id="36" tableName="STUDENT" fieldName="CATEGORY_CODE"/>
				<Field id="37" tableName="STUDENT" fieldName="SUBCATEGORY_CODE"/>
				<Field id="38" tableName="STUDENT" fieldName="ATTENDING_SCHOOL_ID"/>
				<Field id="39" tableName="STUDENT" fieldName="HOME_SCHOOL_ID"/>
			</Fields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="66" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="67" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="68" field="MIDDLE_NAME" dataType="Text" parameterType="Control" parameterSource="MIDDLE_NAME"/>
				<CustomParameter id="69" field="BIRTH_DATE" dataType="Date" parameterType="Control" parameterSource="BIRTH_DATE" format="dd/mm/yyyy"/>
				<CustomParameter id="70" field="SEX" dataType="Text" parameterType="Control" parameterSource="SEX"/>
				<CustomParameter id="71" field="ATTENDING_SCHOOL_ID" dataType="Float" parameterType="Control" parameterSource="ATTENDING_SCHOOL_ID"/>
				<CustomParameter id="72" field="HOME_SCHOOL_ID" dataType="Float" parameterType="Control" parameterSource="HOME_SCHOOL_ID"/>
				<CustomParameter id="73" field="CATEGORY_CODE" dataType="Text" parameterType="Control" parameterSource="CATEGORY_CODE"/>
				<CustomParameter id="74" field="SUBCATEGORY_CODE" dataType="Text" parameterType="Control" parameterSource="SUBCATEGORY_CODE"/>
			</IFormElements>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolment_AddNewStudent.aspx" forShow="True" url="StudentEnrolment_AddNewStudent.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolment_AddNewStudent.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolment_AddNewStudentDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="20" groupID="2"/>
		<Group id="21" groupID="3"/>
		<Group id="22" groupID="4"/>
		<Group id="23" groupID="5"/>
		<Group id="24" groupID="6"/>
		<Group id="25" groupID="7"/>
		<Group id="26" groupID="9"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="81" form="STUDENT" name="SURNAME"/>
			</Actions>
		</Event>
	</Events>
</Page>
