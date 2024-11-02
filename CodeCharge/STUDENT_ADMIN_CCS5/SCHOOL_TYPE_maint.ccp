<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="SCHOOL_TYPE" dataSource="SCHOOL_TYPE" errorSummator="Error" wizardCaption="Add/Edit SCHOOL TYPE " wizardFormMethod="post" returnPage="SCHOOL_TYPE_list.ccp" PathID="SCHOOL_TYPE" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="SCHOOL_TYPEButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="SCHOOL_TYPEButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="SCHOOL_TYPEButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCHOOL_TYPE_DESCRIPTION" fieldSource="SCHOOL_TYPE_DESCRIPTION" required="True" caption="DESCRIPTION" wizardCaption="DESCRIPTION" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="SCHOOL_TYPESCHOOL_TYPE_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="12" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Cancel" PathID="SCHOOL_TYPEButton_Cancel" operation="Cancel" returnPage="SCHOOL_TYPE_list.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbl_SchoolTypeCode" PathID="SCHOOL_TYPElbl_SchoolTypeCode" fieldSource="SCHOOL_TYPE_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCHOOL_TYPE_CODE" PathID="SCHOOL_TYPESCHOOL_TYPE_CODE" caption="Type Code" fieldSource="SCHOOL_TYPE_CODE" required="True" unique="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbl_LAST_ALTERED_BY" PathID="SCHOOL_TYPElbl_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserId.ToString()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Date" html="False" name="lbl_LAST_ALTERED_DATE" PathID="SCHOOL_TYPElbl_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="SCHOOL_TYPELAST_ALTERED_BY" defaultValue="DBUtility.UserId.ToString()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="SCHOOL_TYPELAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="16"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserId.ToString()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="20" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="SCHOOL_TYPE_CODE" parameterSource="SCHOOL_TYPE_CODE" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
		<Link id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="Link1" hrefSource="SCHOOL_TYPE_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SCHOOL_TYPE_maint.aspx" forShow="True" url="SCHOOL_TYPE_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SCHOOL_TYPE_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SCHOOL_TYPE_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
