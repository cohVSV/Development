<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="SCHOOLADDRESS" dataSource="ADDRESS" errorSummator="Error" wizardCaption="Add/Edit ADDRESS " wizardFormMethod="post" PathID="SCHOOLADDRESS" pasteAsReplace="pasteAsReplace" removeParameters="ADDRESS_ID" returnPage="SCHOOL_maint.ccp">
			<Components>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="SCHOOLADDRESSButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="SCHOOLADDRESSButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="6" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="SCHOOLADDRESSButton_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="7" message="Delete record?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="8" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="SCHOOLADDRESSButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDRESSEE" fieldSource="ADDRESSEE" required="True" caption="ADDRESSEE" wizardCaption="EE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="AGENT" fieldSource="AGENT" required="False" caption="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSAGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR1" fieldSource="ADDR1" required="False" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="True" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSSUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSPOSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_A" fieldSource="PHONE_A" required="False" caption="PHONE A" wizardCaption="PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSPHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSFAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSEMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" required="False" caption="EMAIL ADDRESS2" wizardCaption="EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSEMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSCHOOLNAME" PathID="SCHOOLADDRESSlblSCHOOLNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSCHOOLNO" PathID="SCHOOLADDRESSlblSCHOOLNO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STATE" fieldSource="STATE" required="False" caption="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSSTATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COUNTRY" fieldSource="COUNTRY" required="True" caption="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSCOUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_B" fieldSource="PHONE_B" required="False" caption="PHONE B" wizardCaption="PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSPHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="24" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="SCHOOLADDRESSLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkSchoolMaint" PathID="SCHOOLADDRESSlinkSchoolMaint" hrefSource="SCHOOL_maint.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="33" sourceType="URL" name="SCHOOL_ID" source="SCHOOL_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblADDRESS_ID" PathID="SCHOOLADDRESSlblADDRESS_ID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="35" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_BY" PathID="SCHOOLADDRESSHidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="36" fieldSourceType="DBColumn" dataType="Date" name="Hidden_LAST_ALTERED_DATE" PathID="SCHOOLADDRESSHidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblDebug" PathID="SCHOOLADDRESSlblDebug">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="53" name="lblDebug" sourceType="Session" sourceName="debugmsg" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="51" fieldSourceType="DBColumn" dataType="Text" name="HiddenSCHOOLNO" PathID="SCHOOLADDRESSHiddenSCHOOLNO" fieldSource="Barcode">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="30" name="tmpSCHOOLID" type="Text" initialValue="&quot;-1&quot;"/>
						<Action actionName="Retrieve Value for Variable" actionCategory="General" id="29" name="tmpSCHOOLID" sourceType="URL" sourceName="SCHOOL_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="27" name="lblSCHOOLNO" sourceType="Variable" sourceName="tmpSCHOOLID"/>
						<Action actionName="DLookup" actionCategory="Database" id="28" typeOfTarget="Control" expression="&quot;rtrim(SCHOOL_NAME)&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;SCHOOL_ID='&quot; &amp; tmpSCHOOLID.tostring &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="lblSCHOOLNAME"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="52" name="HiddenSCHOOLNO" sourceType="Variable" sourceName="tmpSCHOOLID"/>
						<Action actionName="Custom Code" actionCategory="General" id="32"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="44" name="Hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="45" name="Hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="38"/>
						<Action actionName="Save Variable Value" actionCategory="General" id="54" name="&quot;School Address has been Added to School&quot;" sourceType="Session" sourceName="notifymessage"/>
</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
<Actions>
<Action actionName="Save Variable Value" actionCategory="General" id="55" name="&quot;School Address has been Updated&quot;" sourceType="Session" sourceName="notifymessage"/>
</Actions>
</Event>
</Events>
			<TableParameters>
				<TableParameter id="48" conditionType="Parameter" useIsNull="False" dataType="Float" field="ADDRESS_ID" logicOperator="And" orderNumber="1" parameterSource="ADDRESS_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="47" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="ADDRESS"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="49" fieldName="*"/>
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
				<PKField id="50" dataType="Float" fieldName="ADDRESS_ID" tableName="ADDRESS"/>
			</PKFields>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SCHOOL_ADDRESS_maint.aspx" forShow="True" url="SCHOOL_ADDRESS_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SCHOOL_ADDRESS_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SCHOOL_ADDRESS_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
