<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="18" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STAFF" dataSource="STAFF" errorSummator="Error" wizardCaption="Add/Edit STAFF " wizardFormMethod="post" returnPage="STAFF_list.ccp" PathID="STAFF">
			<Components>
				<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="StaffID" fieldSource="STAFF_ID" caption="STAFF ID" required="True" unique="True" PathID="STAFFStaffID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="StaffID_view" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SALUTATION" fieldSource="SALUTATION" required="False" caption="SALUTATION" wizardCaption="SALUTATION" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" PathID="STAFFSALUTATION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="STAFFSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRSTNAME" fieldSource="FIRSTNAME" required="True" caption="FIRSTNAME" wizardCaption="FIRSTNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="STAFFFIRSTNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MIDDLENAME" fieldSource="MIDDLENAME" required="False" caption="MIDDLENAME" wizardCaption="MIDDLENAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="STAFFMIDDLENAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="TEACHER_FLAG" fieldSource="TEACHER_FLAG" required="True" caption="TEACHER FLAG" wizardCaption="TEACHER FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" sourceType="Table" html="True" PathID="STAFFTEACHER_FLAG" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</CheckBox>
				<CheckBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="STATUS" fieldSource="STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" sourceType="Table" html="True" PathID="STAFFSTATUS" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</CheckBox>
				<ListBox id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="GROUP_ID" fieldSource="GROUP_ID" required="False" caption="GROUP ID" wizardCaption="GROUP ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="SECURITY_GROUP" boundColumn="GROUP_ID" textColumn="GROUP_NAME" PathID="STAFFGROUP_ID">
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
				<Label id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="lblLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="STAFFlblLAST_ALTERED_BY" html="False" defaultValue="DBUtility.UserLogin.ToUpper()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="lblLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="STAFFlblLAST_ALTERED_DATE" html="False" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STAFFButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STAFFButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="STAFFButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="7" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="CAMPUS_CODE" fieldSource="CAMPUS_CODE" required="True" caption="CAMPUS CODE" wizardCaption="CAMPUS CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="CAMPUS" boundColumn="CAMPUS_CODE" textColumn="CAMPUS_CODE" html="False" defaultValue="{res:Text1}" PathID="STAFFCAMPUS_CODE">
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
				</Hidden>
				<Hidden id="23" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" PathID="STAFFhidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper()">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="28" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="24" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" PathID="STAFFhidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="27" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LoginID" PathID="STAFFLoginID" fieldSource="LOGIN_ID" required="False" unique="False" caption="LOGIN ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblLoginID" PathID="STAFFlblLoginID" defaultValue="&quot;LOGIN ID:&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="39" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LOGIN_ID" PathID="STAFFHidden_LOGIN_ID" fieldSource="LOGIN_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<CheckBoxList id="45" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" html="True" returnValueType="Number" name="CheckboxList_SECURITY_FUNCTIONS" PathID="STAFFCheckboxList_SECURITY_FUNCTIONS" caption="SECURITY Additional" connection="connDECVPRODSQL2005" dataSource="SECURITY_FUNCTION" boundColumn="FUNCTION_ID" textColumn="FUNCTION_TITLE" required="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="53"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="50" posHeight="136" posLeft="10" posTop="10" posWidth="160" schemaName="dbo" tableName="SECURITY_FUNCTION"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="51" fieldName="*"/>
					</Fields>
					<PKFields>
						<PKField id="52" dataType="Text" fieldName="FUNCTION_ID" tableName="SECURITY_FUNCTION"/>
					</PKFields>
					<Attributes/>
					<Features/>
				</CheckBoxList>
				<Hidden id="55" fieldSourceType="DBColumn" dataType="Text" name="Hidden_SECURITY_FUNCTIONS" PathID="STAFFHidden_SECURITY_FUNCTIONS" fieldSource="SECURITY_FUNCTIONS" defaultValue="&quot;Z&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="22"/>
						<Action actionName="Custom Code" actionCategory="General" id="54"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="29"/>
						<Action actionName="Declare Variable" actionCategory="General" id="35" name="tmpSTAFF_ID" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Save Control Value" actionCategory="General" id="37" name="StaffID" sourceType="Variable" sourceName="tmpSTAFF_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="38" name="Hidden_LOGIN_ID" sourceType="Variable" sourceName="tmpSTAFF_ID"/>
						<Action actionName="Custom Code" actionCategory="General" id="56"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="30"/>
						<Action actionName="Custom Code" actionCategory="General" id="57"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="47" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF_ID" logicOperator="And" orderNumber="1" parameterSource="STAFF_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="46" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STAFF"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="48" fieldName="*"/>
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
				<PKField id="49" dataType="Text" fieldName="STAFF_ID" tableName="STAFF"/>
			</PKFields>
		</Record>
		<IncludePage id="19" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="Link1" hrefSource="STAFF_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="STAFF_maint.aspx" forShow="True" url="STAFF_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="STAFF_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="STAFF_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
