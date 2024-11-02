<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="LANGUAGE" dataSource="[LANGUAGE]" errorSummator="Error" wizardCaption="Add/Edit LANGUAGE " wizardFormMethod="post" returnPage="LANGUAGE_list.ccp" PathID="LANGUAGE">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="LANGUAGEButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="LANGUAGEButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="LANGUAGEButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LANG_DESCRIPTION" fieldSource="LANG_DESCRIPTION" required="True" caption="LANG DESCRIPTION" wizardCaption="LANG DESCRIPTION" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="LANGUAGELANG_DESCRIPTION">
					<Components/>
					<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" sourceType="Expression" sourceName="LANGUAGELANG_DESCRIPTION.Text.Trim()"/>
</Actions>
</Event>
</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="8" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="LANGUAGELAST_ALTERED_BY" defaultValue="DBUtility.UserID.tostring()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="9" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="LANGUAGELAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="GeneralDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="12" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="label_Last_altered_by" PathID="LANGUAGElabel_Last_altered_by" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
<Label id="14" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="label_last_altered_date" PathID="LANGUAGElabel_last_altered_date" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="LANG_CODE" PathID="LANGUAGELANG_CODE" fieldSource="LANG_CODE" caption="Language Code" required="True" unique="True">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<Button id="20" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" PathID="LANGUAGEButton_Cancel" operation="Cancel" removeParameters="LANG_CODE" returnPage="LANGUAGE_list.ccp">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
</Components>
			<Events>
<Event name="BeforeUpdate" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="17" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserID.tostring()"/>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
</Actions>
</Event>
</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="LANG_CODE" parameterSource="LANG_CODE" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
<JoinTable id="15" tableName="[LANGUAGE]"/>
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
			<Features/>
			<PKFields/>
		</Record>
		<IncludePage id="10" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="11" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="LANGUAGE_maint.aspx" forShow="True" url="LANGUAGE_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="LANGUAGE_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="LANGUAGE_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
