<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="REGION" dataSource="REGION" errorSummator="Error" wizardCaption="Add/Edit REGION " wizardFormMethod="post" returnPage="REGION_list.ccp" PathID="REGION" pasteAsReplace="pasteAsReplace">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="REGIONButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="REGIONButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="REGIONButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="REGION_NAME" fieldSource="REGION_NAME" required="True" caption="NAME" wizardCaption="NAME" wizardSize="40" wizardMaxLength="40" wizardIsPassword="False" PathID="REGIONREGION_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE" fieldSource="PHONE" required="True" caption="PHONE" wizardCaption="PHONE" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" PathID="REGIONPHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" PathID="REGIONFAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="REGIONEMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR1" fieldSource="ADDR1" required="True" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="REGIONADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="REGIONADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="True" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="REGIONSUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="REGIONPOSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="REGIONLAST_ALTERED_BY" defaultValue="DBUtility.UserID.tostring()">
<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
<Hidden id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="REGIONLAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="GeneralDate">
<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
<RadioButton id="23" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RadioButtonStatus" PathID="REGIONRadioButtonStatus" fieldSource="STATUS" dataSource="1;Active;0;Inactive" defaultValue="0" required="True" caption="STATUS">
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
<ListBox id="24" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Integer" returnValueType="Number" name="PARENT_REGION_ID" wizardEmptyCaption="Select Value" PathID="REGIONPARENT_REGION_ID" fieldSource="PARENT_REGION_ID" connection="connDECVPRODSQL2005" dataSource="REGION" boundColumn="REGION_ID" textColumn="REGION_NAME" defaultValue="0" required="True">
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
<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="REGION_ID" PathID="REGIONREGION_ID" fieldSource="REGION_ID" required="True" caption="Region ID" unique="True">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Hide-Show Component" actionCategory="General" id="27" action="Hide" conditionType="Parameter" dataType="Boolean" condition="Equal" name1="IsEditMode" sourceType1="SpecialValue" sourceType2="Expression" name2="true"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</TextBox>
<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblREGION_ID" PathID="REGIONlblREGION_ID" fieldSource="REGION_ID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="label_Last_altered_by" PathID="REGIONlabel_Last_altered_by" fieldSource="LAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="31" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="label_last_altered_date" PathID="REGIONlabel_last_altered_date" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="21"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="28" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserID.tostring()"/>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="29" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="REGION_ID" parameterSource="REGION_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
		<IncludePage id="17" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="18" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="Link1" hrefSource="REGION_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="REGION_maint.aspx" forShow="True" url="REGION_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="REGION_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="REGION_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
