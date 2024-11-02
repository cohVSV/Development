<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
<Record id="20" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ENROL_CHECKLISTSearch" searchIds="20" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="Advanced" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="Grid" returnPage="ENROL_CHECKLIST_maint.ccp" PathID="ENROL_CHECKLISTSearch" composition="13">
<Components>
<Link id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="ENROL_CHECKLIST_maint.ccp" removeParameters="s_keyword" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="ENROL_CHECKLISTSearchClearParameters">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Button id="22" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="ENROL_CHECKLISTSearchButton_DoSearch">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" fieldSource="DESCRIPTION" wizardIsPassword="False" wizardCaption="Keyword" caption="Keyword" required="False" unique="False" wizardSize="50" wizardMaxLength="200" PathID="ENROL_CHECKLISTSearchs_keyword">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
</Components>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
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
<Grid id="24" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="ENROL_CHECKLIST" connection="connDECVPRODSQL2005" dataSource="ENROL_CHECKLIST" pageSizeLimit="100" pageSize="False" wizardCaption="List of ENROL CHECKLIST Items" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Enrol Checklist items found!" wizardGridPagingType="Simple" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="True" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="field" wizardGridRecordLinkField="ID" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="ENROL_CHECKLIST" composition="14" isParent="True">
<Components>
<Link id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ENROL_CHECKLIST_Insert" hrefSource="ENROL_CHECKLIST_maint.ccp" removeParameters="ID" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="ENROL_CHECKLISTENROL_CHECKLIST_Insert">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ENROL_CHECKLIST_TotalRecords" wizardUseTemplateBlock="False" PathID="ENROL_CHECKLISTENROL_CHECKLIST_TotalRecords">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Retrieve number of records" actionCategory="Database" id="29"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Label>
<Sorter id="31" visible="True" name="Sorter_ID" column="ID" wizardCaption="ID" wizardSortingType="SimpleDir" wizardControl="ID" wizardAddNbsp="False" PathID="ENROL_CHECKLISTSorter_ID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="32" visible="True" name="Sorter_DESCRIPTION" column="DESCRIPTION" wizardCaption="DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="DESCRIPTION" wizardAddNbsp="False" PathID="ENROL_CHECKLISTSorter_DESCRIPTION">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="33" visible="True" name="Sorter_CATEGORIES_REQUIRED" column="CATEGORIES_REQUIRED" wizardCaption="CATEGORIES REQUIRED" wizardSortingType="SimpleDir" wizardControl="CATEGORIES_REQUIRED" wizardAddNbsp="False" PathID="ENROL_CHECKLISTSorter_CATEGORIES_REQUIRED">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="34" visible="True" name="Sorter_ACTIVE" column="ACTIVE" wizardCaption="ACTIVE" wizardSortingType="SimpleDir" wizardControl="ACTIVE" wizardAddNbsp="False" PathID="ENROL_CHECKLISTSorter_ACTIVE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="35" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="ENROL_CHECKLISTSorter_LAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="36" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="ENROL_CHECKLISTSorter_LAST_ALTERED_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Link id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" preserveParameters="GET" name="ID" fieldSource="ID" wizardCaption="ID" wizardIsPassword="False" wizardUseTemplateBlock="False" linkProperties="''" wizardAlign="right" wizardAddNbsp="True" wizardThemeItem="GridA" PathID="ENROL_CHECKLISTID">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="38" sourceType="DataField" format="yyyy-mm-dd" name="ID" source="ID"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="DESCRIPTION" fieldSource="DESCRIPTION" wizardCaption="DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ENROL_CHECKLISTDESCRIPTION">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="42" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="CATEGORIES_REQUIRED" fieldSource="CATEGORIES_REQUIRED" wizardCaption="CATEGORIES REQUIRED" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ENROL_CHECKLISTCATEGORIES_REQUIRED">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ACTIVE" fieldSource="ACTIVE" wizardCaption="ACTIVE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ENROL_CHECKLISTACTIVE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ENROL_CHECKLISTLAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="48" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ENROL_CHECKLISTLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Navigator id="49" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Navigator>
</Components>
<Events/>
<TableParameters>
<TableParameter id="67" conditionType="Parameter" useIsNull="False" dataType="Text" field="DESCRIPTION" logicOperator="Or" orderNumber="1" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains" searchFormParameter="True"/>
<TableParameter id="68" conditionType="Parameter" useIsNull="False" dataType="Text" field="CATEGORIES_REQUIRED" logicOperator="And" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
</TableParameters>
<JoinTables>
<JoinTable id="66" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="ENROL_CHECKLIST"/>
</JoinTables>
<JoinLinks/>
<Fields>
<Field id="69" fieldName="ID" tableName="ENROL_CHECKLIST"/>
<Field id="70" fieldName="DESCRIPTION" tableName="ENROL_CHECKLIST"/>
<Field id="71" fieldName="CATEGORIES_REQUIRED" tableName="ENROL_CHECKLIST"/>
<Field id="72" fieldName="ACTIVE" tableName="ENROL_CHECKLIST"/>
<Field id="73" fieldName="LAST_ALTERED_BY" tableName="ENROL_CHECKLIST"/>
<Field id="74" fieldName="LAST_ALTERED_DATE" tableName="ENROL_CHECKLIST"/>
</Fields>
<PKFields/>
<SPParameters/>
<SQLParameters/>
<SecurityGroups/>
<Attributes/>
<Features/>
</Grid>
<Record id="53" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ENROL_CHECKLIST1" connection="connDECVPRODSQL2005" dataSource="ENROL_CHECKLIST" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit ENROL CHECKLIST Item" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Users/decv_development/Documents/CodeCharge Studio 5 Projects/svn_STUDENT_ADMIN_CCS5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="ENROL_CHECKLIST1" composition="14">
<Components>
<Button id="55" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="ENROL_CHECKLIST1Button_Insert">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="56" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ENROL_CHECKLIST1Button_Update">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="57" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ENROL_CHECKLIST1Button_Cancel">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DESCRIPTION" fieldSource="DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="DESCRIPTION" caption="DESCRIPTION" required="True" unique="False" wizardSize="50" wizardMaxLength="200" PathID="ENROL_CHECKLIST1DESCRIPTION">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CATEGORIES_REQUIRED" fieldSource="CATEGORIES_REQUIRED" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CATEGORIES REQUIRED" caption="CATEGORIES REQUIRED" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="ENROL_CHECKLIST1CATEGORIES_REQUIRED">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CATEGORIES_OPTIONAL" fieldSource="CATEGORIES_OPTIONAL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CATEGORIES OPTIONAL" caption="CATEGORIES OPTIONAL" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="ENROL_CHECKLIST1CATEGORIES_OPTIONAL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<TextBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CATEGORIES_NOTAPPLICABLE" fieldSource="CATEGORIES_NOTAPPLICABLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="CATEGORIES NOTAPPLICABLE" caption="CATEGORIES NOTAPPLICABLE" required="False" unique="False" wizardSize="50" wizardMaxLength="100" PathID="ENROL_CHECKLIST1CATEGORIES_NOTAPPLICABLE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<RadioButton id="63" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="ACTIVE" fieldSource="ACTIVE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ACTIVE" caption="ACTIVE" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="ENROL_CHECKLIST1ACTIVE" dataSource="Y;Yes (default);N;No" defaultValue="&quot;Y&quot;">
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
<Hidden id="64" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" required="True" unique="False" PathID="ENROL_CHECKLIST1LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<Hidden id="65" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED DATE" caption="LAST ALTERED DATE" required="False" format="dd/mm/yyyy h:nn AM/PM" unique="False" PathID="ENROL_CHECKLIST1LAST_ALTERED_DATE" DBFormat="yyyy-mm-dd HH:nn:ss" defaultValue="CurrentDateTime">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<Label id="75" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblLastAlteredBy" PathID="ENROL_CHECKLIST1lblLastAlteredBy" fieldSource="LAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="76" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="lblLastAlteredWhen" PathID="ENROL_CHECKLIST1lblLastAlteredWhen" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
<Events>
<Event name="BeforeUpdate" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="77" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="78" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
</Actions>
</Event>
<Event name="AfterInsert" type="Server">
<Actions>
<Action actionName="Save Variable Value" actionCategory="General" id="79" name="&quot;Item has been Added&quot;" sourceType="Session" sourceName="notifymessage"/>
</Actions>
</Event>
<Event name="AfterUpdate" type="Server">
<Actions>
<Action actionName="Save Variable Value" actionCategory="General" id="80" name="&quot;Item has been Updated&quot;" sourceType="Session" sourceName="notifymessage"/>
</Actions>
</Event>
</Events>
<TableParameters>
<TableParameter id="58" conditionType="Parameter" useIsNull="False" field="ID" parameterSource="ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
</TableParameters>
<SPParameters/>
<SQLParameters/>
<JoinTables>
<JoinTable id="54" schemaName="dbo" tableName="ENROL_CHECKLIST"/>
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
		<CodeFile id="3" language="VB" name="ENROL_CHECKLIST_maint.aspx" forShow="True" url="ENROL_CHECKLIST_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
<CodeFile id="1" language="VB" name="ENROL_CHECKLIST_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
<CodeFile id="2" language="VB" name="ENROL_CHECKLIST_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
</CodeFiles>
	<SecurityGroups/>
<CachingParameters/>
<Attributes/>
<Features/>
<Events/>
</Page>
