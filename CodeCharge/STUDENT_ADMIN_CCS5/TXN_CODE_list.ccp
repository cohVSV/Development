<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="32" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="33" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="34" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="TXN_CODE" connection="connDECVPRODSQL2005" dataSource="TXN_CODE" pageSizeLimit="100" pageSize="False" wizardCaption="List of Transactions Codes" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Transaction Codes found!" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="custom" wizardGridRecordLinkField="edit" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="TXN_CODE" composition="12" isParent="True">
<Components>
<Link id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="TXN_CODE_Insert" hrefSource="TXN_CODE_list.ccp" removeParameters="TXN_CODE" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="TXN_CODETXN_CODE_Insert">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Sorter id="38" visible="True" name="Sorter_TXN_CODE" column="TXN_CODE" wizardCaption="TXN CODE" wizardSortingType="SimpleDir" wizardControl="TXN_CODE" wizardAddNbsp="False" PathID="TXN_CODESorter_TXN_CODE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="39" visible="True" name="Sorter_TXN_TYPE" column="TXN_TYPE" wizardCaption="TXN TYPE" wizardSortingType="SimpleDir" wizardControl="TXN_TYPE" wizardAddNbsp="False" PathID="TXN_CODESorter_TXN_TYPE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="40" visible="True" name="Sorter_CR_DR_FLAG" column="CR_DR_FLAG" wizardCaption="CR DR FLAG" wizardSortingType="SimpleDir" wizardControl="CR_DR_FLAG" wizardAddNbsp="False" PathID="TXN_CODESorter_CR_DR_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="41" visible="True" name="Sorter_DESCRIPTION" column="DESCRIPTION" wizardCaption="DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="DESCRIPTION" wizardAddNbsp="False" PathID="TXN_CODESorter_DESCRIPTION">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="42" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="TXN_CODESorter_LAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="43" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="TXN_CODESorter_LAST_ALTERED_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Link id="44" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" preserveParameters="GET" name="Detail" wizardCaption="Detail" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" dataType="Text" hrefSource="TXN_CODE_list.ccp" wizardThemeItem="GridA" PathID="TXN_CODEDetail">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="45" sourceType="DataField" format="yyyy-mm-dd" name="TXN_CODE" source="TXN_CODE"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="TXN_CODE1" fieldSource="TXN_CODE" wizardCaption="TXN CODE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="TXN_CODETXN_CODE1">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="TXN_TYPE" fieldSource="TXN_TYPE" wizardCaption="TXN TYPE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="TXN_CODETXN_TYPE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="CR_DR_FLAG" fieldSource="CR_DR_FLAG" wizardCaption="CR DR FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="TXN_CODECR_DR_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="DESCRIPTION" fieldSource="DESCRIPTION" wizardCaption="DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="TXN_CODEDESCRIPTION">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="54" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="TXN_CODELAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="56" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="TXN_CODELAST_ALTERED_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Navigator id="57" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Navigator>
</Components>
<Events/>
<TableParameters/>
<JoinTables>
<JoinTable id="35" schemaName="dbo" tableName="TXN_CODE"/>
</JoinTables>
<JoinLinks/>
<Fields>
<Field id="36" tableName="TXN_CODE" fieldName="TXN_CODE"/>
<Field id="47" tableName="TXN_CODE" fieldName="TXN_TYPE"/>
<Field id="49" tableName="TXN_CODE" fieldName="CR_DR_FLAG"/>
<Field id="51" tableName="TXN_CODE" fieldName="DESCRIPTION"/>
<Field id="53" tableName="TXN_CODE" fieldName="LAST_ALTERED_BY"/>
<Field id="55" tableName="TXN_CODE" fieldName="LAST_ALTERED_DATE"/>
</Fields>
<PKFields/>
<SPParameters/>
<SQLParameters/>
<SecurityGroups/>
<Attributes/>
<Features/>
</Grid>
<Record id="58" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="TXN_CODE1" connection="connDECVPRODSQL2005" dataSource="TXN_CODE" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="TXN_CODE" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="False" wizardCaption="Add/Edit Transaction Code" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Users/decv_development/Documents/CodeCharge Studio 5 Projects/svn_STUDENT_ADMIN_CCS5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="TXN_CODE1" composition="12">
<Components>
<Button id="60" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="TXN_CODE1Button_Insert">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="61" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="TXN_CODE1Button_Update">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="62" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="TXN_CODE1Button_Cancel">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="TXN_CODE" fieldSource="TXN_CODE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="TXN CODE" caption="TXN CODE" required="True" unique="False" wizardSize="1" wizardMaxLength="1" PathID="TXN_CODE1TXN_CODE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="TXN_TYPE" fieldSource="TXN_TYPE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="TXN TYPE" caption="TXN TYPE" required="True" unique="False" wizardSize="20" wizardMaxLength="20" PathID="TXN_CODE1TXN_TYPE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<RadioButton id="66" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="CR_DR_FLAG" fieldSource="CR_DR_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CR DR FLAG" caption="CR DR FLAG" required="True" unique="False" PathID="TXN_CODE1CR_DR_FLAG" dataSource="C;CR;D;DR">
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
<TextBox id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DESCRIPTION" fieldSource="DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="DESCRIPTION" caption="DESCRIPTION" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="TXN_CODE1DESCRIPTION">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<Hidden id="68" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" required="True" unique="False" PathID="TXN_CODE1LAST_ALTERED_BY">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="74" sourceType="Expression" sourceName="DBUtility.UserID.ToUpper"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Hidden>
<Hidden id="69" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED DATE" caption="LAST ALTERED DATE" required="True" format="dd/mm/yyyy" unique="False" PathID="TXN_CODE1LAST_ALTERED_DATE" defaultValue="CurrentDateTime">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
</Components>
<Events>
<Event name="AfterUpdate" type="Server">
<Actions>
<Action actionName="Save Variable Value" actionCategory="General" id="70" name="&quot;Item has been Updated&quot;" sourceType="Session" sourceName="notifymessage"/>
</Actions>
</Event>
<Event name="AfterInsert" type="Server">
<Actions>
<Action actionName="Save Variable Value" actionCategory="General" id="71" name="&quot;Item has been Added&quot;" sourceType="Session" sourceName="notifymessage"/>
</Actions>
</Event>
<Event name="BeforeUpdate" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="72" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserID.ToUpper"/>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="73" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
</Actions>
</Event>
</Events>
<TableParameters>
<TableParameter id="63" conditionType="Parameter" useIsNull="False" field="TXN_CODE" parameterSource="TXN_CODE" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
</TableParameters>
<SPParameters/>
<SQLParameters/>
<JoinTables>
<JoinTable id="59" schemaName="dbo" tableName="TXN_CODE"/>
</JoinTables>
<JoinLinks/>
<Fields/>
<PKFields/>
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
</Record>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="TXN_CODE_list.aspx" forShow="True" url="TXN_CODE_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="TXN_CODE_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="TXN_CODE_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
