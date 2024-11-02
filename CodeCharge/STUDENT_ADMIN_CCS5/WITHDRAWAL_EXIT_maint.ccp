<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="WITHDRAWAL_EXIT_DESTINATI" dataSource="WITHDRAWAL_EXIT_DESTINATION" errorSummator="Error" wizardCaption="Add/Edit WITHDRAWAL EXIT DESTINATION " wizardFormMethod="post" returnPage="WITHDRAWAL_EXIT_list.ccp" PathID="WITHDRAWAL_EXIT_DESTINATI" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="WITHDRAWAL_EXIT_DESTINATIButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="WITHDRAWAL_EXIT_DESTINATIButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="WITHDRAWAL_EXIT_DESTINATIButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EXIT_DESTINATION_DESCRIPTION" fieldSource="EXIT_DESTINATION_DESCRIPTION" required="True" caption="EXIT DESTINATION DESCRIPTION" wizardCaption="EXIT DESTINATION DESCRIPTION" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="WITHDRAWAL_EXIT_DESTINATIEXIT_DESTINATION_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="DISPLAY_ORDER" fieldSource="DISPLAY_ORDER" required="True" caption="DISPLAY ORDER" wizardCaption="DISPLAY ORDER" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" PathID="WITHDRAWAL_EXIT_DESTINATIDISPLAY_ORDER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="9" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="GROUPING" fieldSource="GROUPING" required="False" caption="GROUPING" wizardCaption="GROUPING" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardEmptyCaption="Select Value" PathID="WITHDRAWAL_EXIT_DESTINATIGROUPING" connection="connDECVPRODSQL2005" dataSource="SELECT distinct GROUPING 
FROM WITHDRAWAL_EXIT_DESTINATION 
order by GROUPING" boundColumn="GROUPING" textColumn="GROUPING">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="20" tableName="WITHDRAWAL_EXIT_DESTINATION" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="21" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="GROUPING"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Hidden id="10" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="False" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="WITHDRAWAL_EXIT_DESTINATILAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper()">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="11" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="False" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="WITHDRAWAL_EXIT_DESTINATILAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblLAST_ALTERED_BY" PathID="WITHDRAWAL_EXIT_DESTINATIlblLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="&quot;unknown&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblLAST_ALTERED_DATE" PathID="WITHDRAWAL_EXIT_DESTINATIlblLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="WD_DEST_ID" parameterSource="WD_DEST_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
		<IncludePage id="13" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="Link1" hrefSource="WITHDRAWAL_EXIT_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="WITHDRAWAL_EXIT_maint.aspx" forShow="True" url="WITHDRAWAL_EXIT_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="WITHDRAWAL_EXIT_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="WITHDRAWAL_EXIT_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
