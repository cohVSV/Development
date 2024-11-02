<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Menu_Student_maintain" PathID="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="4" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="select CARER_ID, TITLE, SURNAME, FIRST_NAME, RELATIONSHIP, HOME_PHONE, WORK_PHONE, MOBILE, EMAIL, LAST_ALTERED_BY, LAST_ALTERED_DATE from STUDENT_CARER_CONTACT where carer_id in (
select Parent1 FROM STUDENT WHERE STUDENT_ID={STUDENT_ID}
union 
select Parent2 FROM STUDENT  WHERE STUDENT_ID={STUDENT_ID}
union
select SCHOOL_SUPERVISOR_NAME FROM STUDENT_ENROLMENT  WHERE STUDENT_ID={STUDENT_ID} and ENROLMENT_YEAR={ENROLMENT_YEAR}
)" name="Grid1" pageSizeLimit="100" wizardCaption="List of Grid1 " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Carer found" pasteActions="pasteActions" PathID="Grid1">
			<Components>
				<Link id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Grid1_AddCarer" hrefSource="Student_Carer_Maint.ccp" removeParameters="CARER_ID;Ss" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="Grid1Grid1_AddCarer">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="8" visible="True" name="Sorter_TITLE" column="TITLE" wizardCaption="TITLE" wizardSortingType="SimpleDir" wizardControl="TITLE" wizardAddNbsp="False" PathID="Grid1Sorter_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="Grid1Sorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="Grid1Sorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_HOME_PHONE" column="HOME_PHONE" wizardCaption="HOME PHONE" wizardSortingType="SimpleDir" wizardControl="HOME_PHONE" wizardAddNbsp="False" PathID="Grid1Sorter_HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_WORK_PHONE" column="WORK_PHONE" wizardCaption="WORK PHONE" wizardSortingType="SimpleDir" wizardControl="WORK_PHONE" wizardAddNbsp="False" PathID="Grid1Sorter_WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="13" visible="True" name="Sorter_MOBILE" column="MOBILE" wizardCaption="MOBILE" wizardSortingType="SimpleDir" wizardControl="MOBILE" wizardAddNbsp="False" PathID="Grid1Sorter_MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_EMAIL" column="EMAIL" wizardCaption="EMAIL" wizardSortingType="SimpleDir" wizardControl="EMAIL" wizardAddNbsp="False" PathID="Grid1Sorter_EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="15" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Detail" wizardCaption="Detail" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" dataType="Text" wizardDefaultValue="edit" hrefSource="Student_Carer_Maint.ccp" wizardThemeItem="GridA" PathID="Grid1Detail">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="16" sourceType="DataField" format="yyyy-mm-dd" name="CARER_ID" source="CARER_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="46" visible="True" name="Sorter_RELATIONSHIP" column="RELATIONSHIP" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="Grid1Sorter_RELATIONSHIP">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid1RELATIONSHIP">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="72"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="68" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Grid1_AddSuperVisor" hrefSource="Student_Carer_Maint.ccp" removeParameters="CARER_ID" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="Grid1Grid1_AddSuperVisor">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="69" sourceType="Expression" name="Ss" source="1"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="76" name="TmpParentFlag" type="Integer" initialValue="0"/>
						<Action actionName="DLookup" actionCategory="Database" id="75" typeOfTarget="Variable" connection="connDECVPRODSQL2005" target="TmpParentFlag" expression="&quot;1&quot;" domain="&quot;STUDENT&quot;" criteria="&quot;STUDENT_ID=&quot; &amp;  Grid1Data.UrlSTUDENT_ID.tostring &amp;  &quot; and PARENT1&gt;0 and PARENT2&gt;0&quot;" dataType="Integer"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="77" action="Hide" conditionType="Parameter" dataType="Integer" componentName="Grid1_AddCarer" condition="Equal" sourceType1="Expression" name1="TmpParentFlag" sourceType2="Expression" name2="1"/>
						<Action actionName="Declare Variable" actionCategory="General" id="78" name="TmpStudentSuperVisorFlag" type="Integer" initialValue="0"/>
						<Action actionName="DLookup" actionCategory="Database" id="79" typeOfTarget="Variable" expression="&quot;1&quot;" domain="&quot;STUDENT_ENROLMENT&quot;" criteria="&quot;STUDENT_ID=&quot; &amp; Grid1Data.UrlSTUDENT_ID.tostring &amp; &quot; and ENROLMENT_YEAR=&quot; &amp; Grid1Data.UrlENROLMENT_YEAR.tostring  &amp; &quot; and ISNULL(SCHOOL_SUPERVISOR_NAME,0)&gt;0&quot;" dataType="Integer" connection="connDECVPRODSQL2005" target="TmpStudentSuperVisorFlag"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="81" action="Hide" conditionType="Parameter" dataType="Integer" componentName="Grid1_AddSuperVisor" condition="Equal" sourceType1="Expression" name2="1" sourceType2="Expression" name1="TmpStudentSuperVisorFlag"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields>
				<Field id="17" fieldName="TITLE"/>
				<Field id="19" fieldName="SURNAME"/>
				<Field id="21" fieldName="FIRST_NAME"/>
				<Field id="23" fieldName="HOME_PHONE"/>
				<Field id="25" fieldName="WORK_PHONE"/>
				<Field id="27" fieldName="MOBILE"/>
				<Field id="29" fieldName="EMAIL"/>
			</Fields>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="5" variable="STUDENT_ID" parameterType="URL" defaultValue="56794" dataType="Float" parameterSource="STUDENT_ID" designDefaultValue="56794"/>
				<SQLParameter id="80" variable="ENROLMENT_YEAR" parameterType="URL" dataType="Text" parameterSource="ENROLMENT_YEAR"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="31" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_CARER_CONTACT" errorSummator="Error" wizardCaption="Add/Edit STUDENT CARER CONTACT " wizardFormMethod="post" PathID="STUDENT_CARER_CONTACT" removeParameters="CARER_ID;Ss" parameterTypeListName="ParameterTypeList" activeCollection="USPParameters" dataSource="STUDENT_CARER_CONTACT" pasteActions="pasteActions" customInsertType="Procedure" customInsert="USP_Student_CARER_CONTACT_ADD_UPDATE;1" customUpdateType="Procedure" customUpdate="USP_Student_CARER_CONTACT_ADD_UPDATE;1" visible="Dynamic" features="(assigned)">
			<Components>
				<Button id="32" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_CARER_CONTACTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="33" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_CARER_CONTACTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="34" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_CARER_CONTACTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="36" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="TITLE" fieldSource="TITLE" caption="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STUDENT_CARER_CONTACTTITLE" _valueOfList="MRS" _nameOfList="Mrs" dataSource="MR;Mr;MRS;Mrs;Miss;Miss;Ms;Ms">
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
				<TextBox id="37" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTSURNAME" features="(assigned)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<PTAutocomplete id="116" enabled="True" sourceType="Table" name="PTAutocomplete1" servicePage="services/Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutocomplete1.ccp" category="Prototype" searchField="SURNAME" connection="connDECVPRODSQL2005" featureNameChanged="No" dataSource="STUDENT_CARER_CONTACT">
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
				<TextBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="HOME_PHONE" fieldSource="HOME_PHONE" required="False" caption="HOME PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTHOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WORK_PHONE" fieldSource="WORK_PHONE" required="False" caption="WORK PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTWORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MOBILE" fieldSource="MOBILE" required="False" caption="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTMOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL" fieldSource="EMAIL" required="False" caption="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTEMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="44" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTLAST_ALTERED_BY" defaultValue="DBUTILITY.USERID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="45" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACTLAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="70" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="RELATIONSHIP" wizardEmptyCaption="Select Value" PathID="STUDENT_CARER_CONTACTRELATIONSHIP" fieldSource="RELATIONSHIP" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other;SS;School Supervisor" required="True" caption="RELATIONSHIP">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="174"/>
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
				</ListBox>
				<Label id="73" fieldSourceType="DBColumn" dataType="Text" html="False" name="Label_MESSAGE" PathID="STUDENT_CARER_CONTACTLabel_MESSAGE" defaultValue="&quot;CARER&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="74"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="84" fieldSourceType="DBColumn" dataType="Text" name="Hidden_Surname" PathID="STUDENT_CARER_CONTACTHidden_Surname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="163" fieldSourceType="DBColumn" dataType="Text" name="Hidden_Carer_ID" PathID="STUDENT_CARER_CONTACTHidden_Carer_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="82"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="173" name="Hidden_Carer_ID" sourceType="Variable" sourceName="iUrlCarer_ID"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="35" conditionType="Parameter" useIsNull="False" field="CARER_ID" parameterSource="CARER_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key80" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key81" parameterName="@Contact_ID" parameterSource="Hidden_Carer_ID" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key82" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key83" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key84" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key85" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key86" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key87" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key88" parameterName="@Home_Phone" parameterSource="HOME_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key89" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key90" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key91" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key92" parameterName="@Last_Altered_By" parameterSource="LAST_ALTERED_BY" dataType="Char" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="48" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="49" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="50" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="51" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="52" field="HOME_PHONE" dataType="Text" parameterType="Control" parameterSource="HOME_PHONE"/>
				<CustomParameter id="53" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="54" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="55" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="56" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="LAST_ALTERED_BY"/>
				<CustomParameter id="57" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" parameterSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key80" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key81" parameterName="@Contact_ID" parameterSource="Hidden_Carer_ID" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key82" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key83" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key84" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key85" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key86" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key87" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key88" parameterName="@Home_Phone" parameterSource="HOME_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key89" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key90" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key91" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key92" parameterName="@Last_Altered_By" parameterSource="LAST_ALTERED_BY" dataType="Char" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="58" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="59" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="60" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="61" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="62" field="HOME_PHONE" dataType="Text" parameterType="Control" parameterSource="HOME_PHONE"/>
				<CustomParameter id="63" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="64" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="65" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="66" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="LAST_ALTERED_BY"/>
				<CustomParameter id="67" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" parameterSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features>
				<Condition id="117" name="Condition1" category="Ajax" featureNameChanged="No" condition="!=" sourceType1="Control" name2="&quot;&quot;" sourceType2="Expression" ccsIdsOnly="False" start="STUDENT_CARER_CONTACTSURNAME.onkeypress;STUDENT_CARER_CONTACTSURNAME.onchange;" name1="STUDENT_CARER_CONTACTSURNAME">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="147" name="STUDENT_CARER_CONTACTSURNAME.onkeypress" relProperty="start">
							<Items>
								<ControlPointItem id="148" name="Student_Carer_Maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="149" name="STUDENT_CARER_CONTACT" ccpId="31" type="Record" isFeature="False" PathID="STUDENT_CARER_CONTACT"/>
								<ControlPointItem id="150" name="SURNAME" ccpId="37" type="TextBox" isFeature="False" PathID="STUDENT_CARER_CONTACTSURNAME"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="151" name="STUDENT_CARER_CONTACTSURNAME.onchange" relProperty="start">
							<Items>
								<ControlPointItem id="152" name="Student_Carer_Maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="153" name="STUDENT_CARER_CONTACT" ccpId="31" type="Record" isFeature="False" PathID="STUDENT_CARER_CONTACT"/>
								<ControlPointItem id="154" name="SURNAME" ccpId="37" type="TextBox" isFeature="False" PathID="STUDENT_CARER_CONTACTSURNAME"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<PTAutoFill id="122" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill1" category="Prototype" featureNameChanged="No" servicePage="services/Student_Carer_Maint_STUDENT_CARER_CONTACT_SURNAME_PTAutoFill1.ccp" ccsIdsOnly="False" start="STUDENT_CARER_CONTACTCondition1.ontrue;STUDENT_CARER_CONTACTCondition1.onfalse;">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Controls>
						<Control id="164" name="STUDENT_CARER_CONTACTTITLE" source="TITLE" propertyValue="value"/>
						<Control id="165" name="STUDENT_CARER_CONTACTSURNAME" source="SURNAME" propertyValue="value"/>
						<Control id="166" name="STUDENT_CARER_CONTACTFIRST_NAME" source="FIRST_NAME" propertyValue="value"/>
						<Control id="167" name="STUDENT_CARER_CONTACTRELATIONSHIP" source="RELATIONSHIP" propertyValue="value"/>
						<Control id="168" name="STUDENT_CARER_CONTACTHOME_PHONE" source="HOME_PHONE" propertyValue="value"/>
						<Control id="169" name="STUDENT_CARER_CONTACTWORK_PHONE" source="WORK_PHONE" propertyValue="value"/>
						<Control id="170" name="STUDENT_CARER_CONTACTMOBILE" source="MOBILE" propertyValue="value"/>
						<Control id="171" name="STUDENT_CARER_CONTACTEMAIL" source="EMAIL" propertyValue="value"/>
						<Control id="172" name="STUDENT_CARER_CONTACTHidden_Carer_ID" source="CARER_ID" propertyValue="value"/>
					</Controls>
					<ControlPoints>
						<ControlPoint id="155" name="STUDENT_CARER_CONTACTCondition1.ontrue" relProperty="start">
							<Items>
								<ControlPointItem id="156" name="Student_Carer_Maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="157" name="STUDENT_CARER_CONTACT" ccpId="31" type="Record" isFeature="False" PathID="STUDENT_CARER_CONTACT"/>
								<ControlPointItem id="158" name="Condition1" ccpId="117" type="Condition" isFeature="True" PathID="STUDENT_CARER_CONTACTCondition1"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="159" name="STUDENT_CARER_CONTACTCondition1.onfalse" relProperty="start">
							<Items>
								<ControlPointItem id="160" name="Student_Carer_Maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="161" name="STUDENT_CARER_CONTACT" ccpId="31" type="Record" isFeature="False" PathID="STUDENT_CARER_CONTACT"/>
								<ControlPointItem id="162" name="Condition1" ccpId="117" type="Condition" isFeature="True" PathID="STUDENT_CARER_CONTACTCondition1"/>
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
		<CodeFile id="3" language="VB" name="Student_Carer_Maint.aspx" forShow="True" url="Student_Carer_Maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Carer_Maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Carer_MaintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Page1" language="VB" name="Student_Carer_Maint_style.css" forShow="False" comment="/*" commentEnd="*/" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
