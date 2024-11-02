<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_EQUIPMENT" dataSource="STUDENT_EQUIPMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT EQUIPMENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" PathID="STUDENT_EQUIPMENT" pasteActions="pasteActions">
			<Components>
				<RadioButton id="6" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="HAS_COMPUTER" fieldSource="HAS_COMPUTER" required="False" caption="Access to their OWN COMPUTER" wizardCaption="HAS COMPUTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" _valueOfList="U" _nameOfList="Unknown" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTHAS_COMPUTER">
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
				<RadioButton id="7" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="HAS_VCR" fieldSource="HAS_VCR" required="False" caption="Owns a VCR" wizardCaption="HAS VCR" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTHAS_VCR">
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
				<RadioButton id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="HAS_DVD" fieldSource="HAS_DVD" caption="Owns a DVD player" wizardCaption="HAS DVD" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" required="False" PathID="STUDENT_EQUIPMENTHAS_DVD">
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
				<RadioButton id="9" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="HAS_INTERNET_ACCESS" fieldSource="HAS_INTERNET_ACCESS" required="False" caption="ACCESS TO THE INTERNET" wizardCaption="HAS INTERNET ACCESS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTHAS_INTERNET_ACCESS">
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
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_EQUIPMENTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_EQUIPMENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="11" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="HAS_BROADBAND" PathID="STUDENT_EQUIPMENTHAS_BROADBAND" fieldSource="HAS_BROADBAND" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" required="False" caption="Access to CABLE BROADBAND">
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
				<CheckBox id="15" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="NEWSLETTER_BYMAIL" PathID="STUDENT_EQUIPMENTNEWSLETTER_BYMAIL" _valueOfList="Y" _nameOfList="Yes" dataSource="Y;Yes;N;No" defaultValue="Unchecked" required="True" fieldSource="NEWSLETTER_BYMAIL" caption="Newsletter by POST ONLY" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;">
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
				</CheckBox>
				<Hidden id="16" fieldSourceType="DBColumn" dataType="Text" name="Hidden_lastalteredby" PathID="STUDENT_EQUIPMENTHidden_lastalteredby" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="17" fieldSourceType="DBColumn" dataType="Date" name="Hidden_lastaltereddate" PathID="STUDENT_EQUIPMENTHidden_lastaltereddate" fieldSource="LAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="yyyy-mm-dd H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<RadioButton id="20" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="SHARES_COMPUTER" fieldSource="SHARES_COMPUTER" required="False" caption="Shares a COMPUTER" wizardCaption="HAS COMPUTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" _valueOfList="U" _nameOfList="Unknown" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTSHARES_COMPUTER">
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
				<RadioButton id="21" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="LIMITED_INTERNET_ACCESS" PathID="STUDENT_EQUIPMENTLIMITED_INTERNET_ACCESS" fieldSource="LIMITED_INTERNET_ACCESS" dataSource="Y;Yes;N;No;U;Unknown" defaultValue="&quot;U&quot;" required="False" caption="Limited Access to the Internet">
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
				<RadioButton id="22" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="HAS_DER_PC" PathID="STUDENT_EQUIPMENTHAS_DER_PC" fieldSource="HAS_DER_PC" dataSource="KD1;DER Desktop;KN1;DER Notebook;DN1;VSV Notebook;RTN;Returned to VSV;ZZ;None" defaultValue="&quot;ZZ&quot;" caption="Has a DER PC" connection="connDECVPRODSQL2005" _valueOfList="RTN" _nameOfList="Returned to DECV">
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
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentNo" PathID="STUDENT_EQUIPMENTlblStudentNo" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="24" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="ACCESS_COMPUTER" fieldSource="ACCESS_COMPUTER_2010" required="True" caption="Access to a COMPUTER" wizardCaption="HAS COMPUTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="N;No;Y;Yes, my own;L;Yes, Limited or shared;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTACCESS_COMPUTER" connection="connDECVPRODSQL2005" _valueOfList="L" _nameOfList="Yes, Limited or shared">
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
				<RadioButton id="25" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="ACCESS_INTERNET" fieldSource="ACCESS_INTERNET_2010" required="True" caption="Access to the INTERNET" wizardCaption="HAS COMPUTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" _valueOfList="L" _nameOfList="Yes (Limited: dial-up; 3G; Library, etc)" dataSource="N;No;Y;Yes (Full: ADSL at home, Cable);L;Yes (Limited: dial-up, 3G, Library, etc);U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTACCESS_INTERNET" connection="connDECVPRODSQL2005">
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
				<RadioButton id="26" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="ACCESS_WORKEXAMPLES_radio" fieldSource="ACCESS_WORKEXAMPLES" required="True" caption="Permission to access Student WORK EXAMPLES" wizardCaption="HAS INTERNET ACCESS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="Y;Yes;N;No" PathID="STUDENT_EQUIPMENTACCESS_WORKEXAMPLES_radio">
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
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="Hidden_lastalteredby" sourceType="Expression" sourceName="DBUtility.UserId.ToUpper()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="Hidden_lastaltereddate" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="5" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" parameterSource="STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
		<IncludePage id="12" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Equipment_maintain.aspx" forShow="True" url="Student_Equipment_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Equipment_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Equipment_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
