<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Panel id="165" visible="True" generateDiv="True" name="Panel1" PathID="Panel1" features="(assigned)">
<Components>
<Grid id="166" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="40" name="STUDENT_LEARNING_GOALS1" connection="connDECVPRODSQL2005" dataSource="STUDENT_LEARNING_GOALS" pageSizeLimit="100" pageSize="False" wizardCaption="Student Learning Goals" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Learning Goals found!" wizardGridPagingType="Simple" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="custom" wizardGridRecordLinkField="Detail" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="Panel1STUDENT_LEARNING_GOALS1" composition="16" isParent="True" useJqueryFeatures="True">
<Components>
<Link id="169" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="STUDENT_LEARNING_GOALS1_Insert" hrefSource="Student_Learning_Goals.ccp" removeParameters="LEARNING_GOAL_ID" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="Panel1STUDENT_LEARNING_GOALS1STUDENT_LEARNING_GOALS1_Insert">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Sorter id="171" visible="True" name="Sorter_GOAL_TITLE" column="GOAL_TITLE" wizardCaption="GOAL TITLE" wizardSortingType="SimpleDir" wizardControl="GOAL_TITLE" wizardAddNbsp="False" PathID="Panel1STUDENT_LEARNING_GOALS1Sorter_GOAL_TITLE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="172" visible="True" name="Sorter_GOAL_CATEGORY" column="GOAL_CATEGORY" wizardCaption="GOAL CATEGORY" wizardSortingType="SimpleDir" wizardControl="GOAL_CATEGORY" wizardAddNbsp="False" PathID="Panel1STUDENT_LEARNING_GOALS1Sorter_GOAL_CATEGORY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="173" visible="True" name="Sorter_GOAL_BY_DATE" column="GOAL_BY_DATE" wizardCaption="GOAL BY DATE" wizardSortingType="SimpleDir" wizardControl="GOAL_BY_DATE" wizardAddNbsp="False" PathID="Panel1STUDENT_LEARNING_GOALS1Sorter_GOAL_BY_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="175" visible="True" name="Sorter_GOAL_RESULT" column="GOAL_RESULT" wizardCaption="GOAL RESULT" wizardSortingType="SimpleDir" wizardControl="GOAL_RESULT" wizardAddNbsp="False" PathID="Panel1STUDENT_LEARNING_GOALS1Sorter_GOAL_RESULT">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="178" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="Panel1STUDENT_LEARNING_GOALS1Sorter_LAST_ALTERED_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="181" visible="True" name="Sorter_CREATED_DATETIME" column="CREATED_DATETIME" wizardCaption="CREATED DATETIME" wizardSortingType="SimpleDir" wizardControl="CREATED_DATETIME" wizardAddNbsp="False" PathID="Panel1STUDENT_LEARNING_GOALS1Sorter_CREATED_DATETIME">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Link id="182" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" preserveParameters="GET" name="Detail" wizardCaption="Detail" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" dataType="Text" hrefSource="Student_Learning_Goals.ccp" wizardThemeItem="GridA" PathID="Panel1STUDENT_LEARNING_GOALS1Detail">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="183" sourceType="DataField" format="yyyy-mm-dd" name="LEARNING_GOAL_ID" source="LEARNING_GOAL_ID"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Label id="186" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="GOAL_TITLE" fieldSource="GOAL_TITLE" wizardCaption="GOAL TITLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1GOAL_TITLE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="188" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="GOAL_CATEGORY" fieldSource="GOAL_CATEGORY" wizardCaption="GOAL CATEGORY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1GOAL_CATEGORY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="190" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="GOAL_BY_DATE" fieldSource="GOAL_BY_DATE" wizardCaption="GOAL BY DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1GOAL_BY_DATE" format="dd/mm/yyyy">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="194" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="GOAL_RESULT" fieldSource="GOAL_RESULT" wizardCaption="GOAL RESULT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1GOAL_RESULT">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="200" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="206" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="CREATED_DATETIME" fieldSource="CREATED_DATETIME" wizardCaption="CREATED DATETIME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1CREATED_DATETIME" format="dd/mm/yyyy">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Navigator id="207" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Navigator>
<Label id="192" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="GOAL_DETAIL" fieldSource="GOAL_DETAIL" wizardCaption="GOAL DETAIL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1GOAL_DETAIL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="198" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_LEARNING_GOALS1LAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
<Events/>
<TableParameters>
<TableParameter id="301" conditionType="Parameter" useIsNull="False" dataType="Integer" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="302" conditionType="Parameter" useIsNull="False" dataType="Integer" field="ENROLMENT_YEAR" logicOperator="And" parameterSource="ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
</TableParameters>
<JoinTables>
<JoinTable id="300" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_LEARNING_GOALS"/>
</JoinTables>
<JoinLinks/>
<Fields>
<Field id="303" fieldName="LEARNING_GOAL_ID" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="304" fieldName="GOAL_TITLE" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="305" fieldName="GOAL_CATEGORY" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="306" fieldName="GOAL_BY_DATE" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="307" fieldName="GOAL_DETAIL" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="308" fieldName="GOAL_RESULT" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="309" fieldName="RESULT_NOTES" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="310" fieldName="LAST_ALTERED_BY" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="311" fieldName="LAST_ALTERED_DATE" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="312" fieldName="STUDENT_ID" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="313" fieldName="ENROLMENT_YEAR" tableName="STUDENT_LEARNING_GOALS"/>
<Field id="314" fieldName="CREATED_DATETIME" tableName="STUDENT_LEARNING_GOALS"/>
</Fields>
<PKFields>
<PKField id="315" dataType="Integer" fieldName="LEARNING_GOAL_ID" tableName="STUDENT_LEARNING_GOALS"/>
</PKFields>
<SPParameters/>
<SQLParameters/>
<SecurityGroups/>
<Attributes/>
<Features/>
</Grid>
<Panel id="208" visible="True" generateDiv="True" name="Panel2" PathID="Panel1Panel2" features="(assigned)">
<Components>
<Record id="209" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_LEARNING_GOALS2" connection="connDECVPRODSQL2005" dataSource="STUDENT_LEARNING_GOALS" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="True" buttonsType="button" wizardRecordKey="LEARNING_GOAL_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit Student Learning Goals" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="True" recordDirection="Horizontal" templatePageRecord="C:\Program Files (x86)\CodeChargeStudio5//Templates//Record//Horizontal.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2" composition="16">
<Components>
<Button id="211" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2Button_Insert">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="212" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2Button_Update">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<Button id="213" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2Button_Delete">
<Components/>
<Events>
<Event name="OnClick" type="Client">
<Actions>
<Action actionName="Confirmation Message" actionCategory="General" id="214" message="Permanently Delete Goal?"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Button>
<Button id="215" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2Button_Cancel">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="217" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="GOAL_TITLE" fieldSource="GOAL_TITLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="GOAL TITLE" caption="GOAL TITLE" required="True" unique="False" wizardSize="50" wizardMaxLength="100" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2GOAL_TITLE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
<Hidden id="224" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="STUDENT ID" caption="STUDENT ID" required="True" unique="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2STUDENT_ID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<Hidden id="225" fieldSourceType="DBColumn" dataType="Float" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="ENROLMENT YEAR" caption="ENROLMENT YEAR" required="True" unique="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2ENROLMENT_YEAR">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<Hidden id="226" fieldSourceType="DBColumn" dataType="Date" name="CREATED_DATETIME" fieldSource="CREATED_DATETIME" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="CREATED DATETIME" caption="CREATED DATETIME" required="True" format="yyyy-mm-dd H:nn" unique="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2CREATED_DATETIME" defaultValue="CurrentDateTime">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<Hidden id="227" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" required="True" unique="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<Hidden id="228" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED DATE" caption="LAST ALTERED DATE" required="True" format="yyyy-mm-dd H:nn" unique="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2LAST_ALTERED_DATE" defaultValue="CurrentDateTime">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<TextBox id="219" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="GOAL_BY_DATE" caption="GOAL BY DATE" fieldSource="GOAL_BY_DATE" format="d/m/yyyy" required="True" unique="False" features="(assigned)" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2GOAL_BY_DATE">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="277"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</TextBox>
<ListBox id="218" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="GOAL_CATEGORY" caption="GOAL CATEGORY" fieldSource="GOAL_CATEGORY" connection="connDECVPRODSQL2005" required="True" unique="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2GOAL_CATEGORY" dataSource="Learning/achievement;Learning/achievement ;Personal/social;Personal/social ;Engagement;Engagement ;Pathways/transitions;Pathways/transitions ;Literacy;Literacy ;Numeracy;Numeracy ;Subject specific;Subject specific">
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
<TextArea id="221" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="GOAL_DETAIL" fieldSource="GOAL_DETAIL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="GOAL DETAIL" caption="GOAL DETAIL" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2GOAL_DETAIL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextArea>
<ListBox id="222" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="GOAL_RESULT" fieldSource="GOAL_RESULT" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="GOAL RESULT" caption="GOAL RESULT" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2GOAL_RESULT" dataSource="Unknown;Unknown;Completed;Completed ;Great Effort;Great Effort ;Mostly;Mostly ;Partly;Partly ;60-90% Complete;60-90% Complete ;30-60% Complete;30-60% Complete ;0-30% Complete;0-30% Complete ;Incomplete;Incomplete" defaultValue="&quot;Unknown&quot;">
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
<TextArea id="223" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RESULT_NOTES" fieldSource="RESULT_NOTES" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="RESULT NOTES" caption="RESULT NOTES" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2RESULT_NOTES">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextArea>
<Label id="280" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblLAST_ALTERED_BY" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2lblLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="281" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="lblLAST_ALTERED_DATE" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2lblLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
<Events>
<Event name="BeforeUpdate" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="278" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="279" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
</Actions>
</Event>
<Event name="AfterInsert" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="282"/>
</Actions>
</Event>
<Event name="AfterUpdate" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="283"/>
</Actions>
</Event>
</Events>
<TableParameters>
<TableParameter id="317" conditionType="Parameter" useIsNull="False" dataType="Integer" field="LEARNING_GOAL_ID" logicOperator="And" orderNumber="1" parameterSource="LEARNING_GOAL_ID" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="318" conditionType="Parameter" useIsNull="False" dataType="Integer" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
</TableParameters>
<SPParameters/>
<SQLParameters/>
<JoinTables>
<JoinTable id="316" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_LEARNING_GOALS"/>
</JoinTables>
<JoinLinks/>
<Fields>
<Field id="319" fieldName="*"/>
</Fields>
<PKFields>
<PKField id="320" dataType="Integer" fieldName="LEARNING_GOAL_ID" tableName="STUDENT_LEARNING_GOALS"/>
</PKFields>
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
<Events/>
<Attributes/>
<Features>
<JDialog id="257" modal="True" visible="False" enabled="True" name="DialogPanel1" category="jQuery" title="Add/Edit Student Learning Goals" show="Panel1condition_for_show.ontrue;" hide="Panel1condition_for_hide.ontrue;">
<Components/>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<ControlPoints>
<ControlPoint id="258" name="Panel1condition_for_show.ontrue" relProperty="show">
<Items>
<ControlPointItem id="259" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="260" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="261" name="condition_for_show" ccpId="230" type="Condition" isFeature="True" PathID="Panel1condition_for_show"/>
</Items>
</ControlPoint>
<ControlPoint id="262" name="Panel1condition_for_hide.ontrue" relProperty="hide">
<Items>
<ControlPointItem id="263" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="264" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="265" name="condition_for_hide" ccpId="235" type="Condition" isFeature="True" PathID="Panel1condition_for_hide"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</JDialog>
</Features>
</Panel>
</Components>
<Events/>
<Attributes/>
<Features>
<JUpdatePanel id="229" enabled="True" childrenAsTriggers="True" name="UpdatePanel1" category="jQuery">
<Components/>
<Events/>
<ControlPoints/>
<Features/>
</JUpdatePanel>
<Condition id="230" name="condition_for_show" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;link&quot;)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="231" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
<Items>
<ControlPointItem id="232" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="233" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="234" name="UpdatePanel1" ccpId="229" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="235" name="condition_for_hide" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;submit&quot; &amp;&amp; $(&quot;#ErrorBlock&quot;).length == 0)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="236" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
<Items>
<ControlPointItem id="237" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="238" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="239" name="UpdatePanel1" ccpId="229" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="240" name="ccc_link_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;link&quot;)" sourceType2="Expression" start="Panel1STUDENT_LEARNING_GOALS1STUDENT_LEARNING_GOALS1_Insert.onclick;Panel1STUDENT_LEARNING_GOALS1Detail.onclick;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="241" name="Panel1STUDENT_LEARNING_GOALS1STUDENT_LEARNING_GOALS1_Insert.onclick" relProperty="start">
<Items>
<ControlPointItem id="242" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="243" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="244" name="STUDENT_LEARNING_GOALS1" ccpId="166" type="Grid" isFeature="False" PathID="Panel1STUDENT_LEARNING_GOALS1"/>
<ControlPointItem id="245" name="STUDENT_LEARNING_GOALS1_Insert" ccpId="169" type="Link" isFeature="False" PathID="Panel1STUDENT_LEARNING_GOALS1STUDENT_LEARNING_GOALS1_Insert"/>
</Items>
</ControlPoint>
<ControlPoint id="246" name="Panel1STUDENT_LEARNING_GOALS1Detail.onclick" relProperty="start">
<Items>
<ControlPointItem id="247" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="248" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="249" name="STUDENT_LEARNING_GOALS1" ccpId="166" type="Grid" isFeature="False" PathID="Panel1STUDENT_LEARNING_GOALS1"/>
<ControlPointItem id="250" name="Detail" ccpId="182" type="Link" isFeature="False" PathID="Panel1STUDENT_LEARNING_GOALS1Detail"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="251" name="ccc_submit_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;submit&quot;)" sourceType2="Expression" start="Panel1Panel2STUDENT_LEARNING_GOALS2.onsubmit;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="252" name="Panel1Panel2STUDENT_LEARNING_GOALS2.onsubmit" relProperty="start">
<Items>
<ControlPointItem id="253" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="254" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="255" name="Panel2" ccpId="208" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="256" name="STUDENT_LEARNING_GOALS2" ccpId="209" type="Record" isFeature="False" PathID="Panel1Panel2STUDENT_LEARNING_GOALS2"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
<Condition id="266" name="ccc_others_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;&quot;)" sourceType2="Expression" start="Panel1Panel2DialogPanel1.onshow;Panel1Panel2DialogPanel1.onhide;">
<Components/>
<Events/>
<ControlPoints>
<ControlPoint id="267" name="Panel1Panel2DialogPanel1.onshow" relProperty="start">
<Items>
<ControlPointItem id="268" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="269" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="270" name="Panel2" ccpId="208" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="271" name="DialogPanel1" ccpId="257" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
</Items>
</ControlPoint>
<ControlPoint id="272" name="Panel1Panel2DialogPanel1.onhide" relProperty="start">
<Items>
<ControlPointItem id="273" name="Student_Learning_Goals" ccpId="1" type="Page" isFeature="False"/>
<ControlPointItem id="274" name="Panel1" ccpId="165" type="Panel" isFeature="False" PathID="Panel1"/>
<ControlPointItem id="275" name="Panel2" ccpId="208" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
<ControlPointItem id="276" name="DialogPanel1" ccpId="257" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
</Items>
</ControlPoint>
</ControlPoints>
<Features/>
</Condition>
</Features>
</Panel>
<Link id="72" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
<IncludePage id="73" name="StudentNamePlate" PathID="StudentNamePlate" page="StudentNamePlate.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
<Panel id="124" visible="False" generateDiv="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain">
			<Components>
				<IncludePage id="125" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events/>
			<Attributes/>
			<Features/>
		</Panel>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Learning_Goals.aspx" forShow="True" url="Student_Learning_Goals.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Learning_Goals.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Learning_GoalsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="321"/>
</Actions>
</Event>
</Events>
</Page>
