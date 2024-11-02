<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="ENROLMENT_CATEGORY" dataSource="ENROLMENT_CATEGORY" errorSummator="Error" wizardCaption="Add/Edit ENROLMENT CATEGORY " wizardFormMethod="post" returnPage="ENROLMENT_CATEG_list.ccp" PathID="ENROLMENT_CATEGORY" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" activeCollection="TableParameters">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ENROLMENT_CATEGORYButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ENROLMENT_CATEGORYButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="ENROLMENT_CATEGORYButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" required="True" caption="CATEGORY CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="ENROLMENT_CATEGORYCATEGORY_CODE" unique="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBCATEGORY_FULL_TITLE" fieldSource="SUBCATEGORY_FULL_TITLE" required="True" caption="SUBCATEGORY FULL TITLE" wizardCaption="SUBCATEGORY FULL TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="ENROLMENT_CATEGORYSUBCATEGORY_FULL_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="STATUS" fieldSource="STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" PathID="ENROLMENT_CATEGORYSTATUS" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBCATEGORY_CODE" PathID="ENROLMENT_CATEGORYSUBCATEGORY_CODE" caption="SUBCATEGORY CODE" fieldSource="SUBCATEGORY_CODE" required="True" unique="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="ENROLMENT_CATEGORYLAST_ALTERED_BY" defaultValue="DBUtility.UserId.ToUpper()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="ENROLMENT_CATEGORYLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblLAST_ALTERED_BY" PathID="ENROLMENT_CATEGORYlblLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserId.ToUpper()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblLAST_ALTERED_DATE" PathID="ENROLMENT_CATEGORYlblLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="17" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Cancel" PathID="ENROLMENT_CATEGORYButton_Cancel" operation="Cancel" returnPage="ENROLMENT_CATEG_list.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserId.ToUpper()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="20" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="24" name="CATEGORY_CODE" sourceType="Expression" sourceName="(ENROLMENT_CATEGORYCATEGORY_CODE.Text.ToUpper())"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="25" name="SUBCATEGORY_CODE" sourceType="Expression" sourceName="(ENROLMENT_CATEGORYSUBCATEGORY_CODE.Text.ToUpper())"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="SUBCATEGORY_CODE" parameterSource="SUBCATEGORY_CODE" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="27" conditionType="Parameter" useIsNull="False" field="CATEGORY_CODE" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="CATEGORY_CODE"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="26" tableName="ENROLMENT_CATEGORY" posLeft="10" posTop="10" posWidth="160" posHeight="152"/>
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
		<IncludePage id="12" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="13" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="Link1" hrefSource="ENROLMENT_CATEG_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="ENROLMENT_CATEG_maint.aspx" forShow="True" url="ENROLMENT_CATEG_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="ENROLMENT_CATEG_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="ENROLMENT_CATEG_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
