<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="4" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="6" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Panel id="8" visible="True" generateDiv="True" name="Panel1" PathID="Panel1" features="(assigned)">
			<Components>
				<Grid id="9" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="40" name="REF_MODULE_CODES1" connection="connDECVPRODSQL2005" dataSource="REF_MODULE_CODES" orderBy="MODULE_CODE" pageSizeLimit="100" pageSize="True" wizardCaption="MODULE CODES" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Modules found!" wizardGridPagingType="Simple" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="True" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="custom" wizardGridRecordLinkField="Detail" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="Panel1REF_MODULE_CODES1" composition="2" isParent="True" useJqueryFeatures="True">
					<Components>
						<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="REF_MODULE_CODES1_Insert" hrefSource="REF_MODULE_CODES.ccp" removeParameters="MODULE_CODE" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="Panel1REF_MODULE_CODES1REF_MODULE_CODES1_Insert">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="REF_MODULE_CODES1_TotalRecords" wizardUseTemplateBlock="False" PathID="Panel1REF_MODULE_CODES1REF_MODULE_CODES1_TotalRecords">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Retrieve number of records" actionCategory="Database" id="12"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Label>
						<Sorter id="13" visible="True" name="Sorter_MODULE_CODE" column="MODULE_CODE" wizardCaption="MODULE CODE" wizardSortingType="SimpleDir" wizardControl="MODULE_CODE" wizardAddNbsp="False" PathID="Panel1REF_MODULE_CODES1Sorter_MODULE_CODE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="14" visible="True" name="Sorter_MODULE_LABEL" column="MODULE_LABEL" wizardCaption="MODULE LABEL" wizardSortingType="SimpleDir" wizardControl="MODULE_LABEL" wizardAddNbsp="False" PathID="Panel1REF_MODULE_CODES1Sorter_MODULE_LABEL">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="15" visible="True" name="Sorter_SEMESTER" column="SEMESTER" wizardCaption="SEMESTER" wizardSortingType="SimpleDir" wizardControl="SEMESTER" wizardAddNbsp="False" PathID="Panel1REF_MODULE_CODES1Sorter_SEMESTER">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="16" visible="True" name="Sorter_PRIMARY_FLAG" column="PRIMARY_FLAG" wizardCaption="PRIMARY FLAG" wizardSortingType="SimpleDir" wizardControl="PRIMARY_FLAG" wizardAddNbsp="False" PathID="Panel1REF_MODULE_CODES1Sorter_PRIMARY_FLAG">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="17" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="Panel1REF_MODULE_CODES1Sorter_STATUS">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="18" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="Panel1REF_MODULE_CODES1Sorter_LAST_ALTERED_BY">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="19" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="Panel1REF_MODULE_CODES1Sorter_LAST_ALTERED_DATE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="20" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" preserveParameters="GET" name="Detail" wizardCaption="Detail" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" dataType="Text" hrefSource="REF_MODULE_CODES.ccp" wizardThemeItem="GridA" PathID="Panel1REF_MODULE_CODES1Detail" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="21" sourceType="DataField" format="yyyy-mm-dd" name="MODULE_CODE" source="MODULE_CODE"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="MODULE_CODE" fieldSource="MODULE_CODE" wizardCaption="MODULE CODE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1REF_MODULE_CODES1MODULE_CODE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="MODULE_LABEL" fieldSource="MODULE_LABEL" wizardCaption="MODULE LABEL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1REF_MODULE_CODES1MODULE_LABEL">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="24" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1REF_MODULE_CODES1SEMESTER">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="25" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="PRIMARY_FLAG" fieldSource="PRIMARY_FLAG" wizardCaption="PRIMARY FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1REF_MODULE_CODES1PRIMARY_FLAG">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1REF_MODULE_CODES1STATUS">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1REF_MODULE_CODES1LAST_ALTERED_BY">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="28" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1REF_MODULE_CODES1LAST_ALTERED_DATE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="29" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Blueprint">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="30" conditionType="Parameter" useIsNull="False" field="MODULE_CODE" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="1" searchFormParameter="True" leftBrackets="1"/>
						<TableParameter id="31" conditionType="Parameter" useIsNull="False" field="MODULE_LABEL" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="2" searchFormParameter="True" rightBrackets="1"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="32" tableName="REF_MODULE_CODES"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="33" tableName="REF_MODULE_CODES" fieldName="MODULE_CODE"/>
						<Field id="34" tableName="REF_MODULE_CODES" fieldName="MODULE_LABEL"/>
						<Field id="35" tableName="REF_MODULE_CODES" fieldName="SEMESTER"/>
						<Field id="36" tableName="REF_MODULE_CODES" fieldName="PRIMARY_FLAG"/>
						<Field id="37" tableName="REF_MODULE_CODES" fieldName="STATUS"/>
						<Field id="38" tableName="REF_MODULE_CODES" fieldName="LAST_ALTERED_BY"/>
						<Field id="39" tableName="REF_MODULE_CODES" fieldName="LAST_ALTERED_DATE"/>
					</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="40" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="REF_MODULE_CODESSearch" searchIds="36" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="Or" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="GridRecord" returnPage="REF_MODULE_CODES.ccp" PathID="Panel1REF_MODULE_CODESSearch" composition="2">
					<Components>
						<Link id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="REF_MODULE_CODES.ccp" removeParameters="s_keyword" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="Panel1REF_MODULE_CODESSearchClearParameters">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Button id="42" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="Panel1REF_MODULE_CODESSearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" fieldSource="MODULE_CODE,MODULE_LABEL" wizardIsPassword="False" wizardCaption="Keyword" caption="Keyword" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel1REF_MODULE_CODESSearchs_keyword">
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
				<Panel id="44" visible="True" generateDiv="True" name="Panel2" PathID="Panel1Panel2" features="(assigned)">
					<Components>
						<Record id="45" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="REF_MODULE_CODES2" connection="connDECVPRODSQL2005" dataSource="REF_MODULE_CODES" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="MODULE_CODE" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="False" wizardCaption="Add/Edit MODULE CODES " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Program Files (x86)/CodeChargeStudio5/Templates/Record/Dialog.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="Panel1Panel2REF_MODULE_CODES2" composition="2">
							<Components>
								<Button id="46" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Panel1Panel2REF_MODULE_CODES2Button_Insert">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="47" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Panel1Panel2REF_MODULE_CODES2Button_Update">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="48" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Panel1Panel2REF_MODULE_CODES2Button_Cancel" removeParameters="MODULE_CODE">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<TextBox id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MODULE_CODE" fieldSource="MODULE_CODE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="MODULE CODE" caption="MODULE CODE" required="True" unique="True" wizardSize="50" wizardMaxLength="50" PathID="Panel1Panel2REF_MODULE_CODES2MODULE_CODE">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<TextBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MODULE_LABEL" fieldSource="MODULE_LABEL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="MODULE LABEL" caption="MODULE LABEL" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel1Panel2REF_MODULE_CODES2MODULE_LABEL">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<RadioButton id="51" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="PRIMARY_FLAG" fieldSource="PRIMARY_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PRIMARY FLAG" caption="PRIMARY FLAG" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="Panel1Panel2REF_MODULE_CODES2PRIMARY_FLAG" dataSource="1;Primary (F-6);0;7-12">
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
								<RadioButton id="52" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="STATUS" fieldSource="STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STATUS" caption="STATUS" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="Panel1Panel2REF_MODULE_CODES2STATUS" dataSource="1;Active;0;Inactive/Hidden">
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
								<Hidden id="53" fieldSourceType="DBColumn" dataType="Integer" name="SEMESTER" fieldSource="SEMESTER" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="SEMESTER" caption="SEMESTER" required="True" unique="False" PathID="Panel1Panel2REF_MODULE_CODES2SEMESTER" defaultValue="0">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Hidden>
								<Hidden id="54" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" required="True" unique="False" PathID="Panel1Panel2REF_MODULE_CODES2LAST_ALTERED_BY" defaultValue="DBUtility.UserId.ToUpper()">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Hidden>
								<Hidden id="55" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED DATE" caption="LAST ALTERED DATE" required="False" format="dd/mm/yyyy" unique="False" PathID="Panel1Panel2REF_MODULE_CODES2LAST_ALTERED_DATE" defaultValue="CurrentDateTime">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Hidden>
								<Label id="56" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblMODULE_CODE" PathID="Panel1Panel2REF_MODULE_CODES2lblMODULE_CODE" fieldSource="MODULE_CODE">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Label>
							</Components>
							<Events>
								<Event name="BeforeUpdate" type="Server">
									<Actions>
										<Action actionName="Retrieve Value for Control" actionCategory="General" id="57" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserId.ToUpper()"/>
										<Action actionName="Retrieve Value for Control" actionCategory="General" id="58" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
									</Actions>
								</Event>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Hide-Show Component" actionCategory="General" id="59" action="Show" conditionType="Parameter" dataType="Boolean" componentName="lblMODULE_CODE" sourceType1="SpecialValue" name1="IsEditMode" sourceType2="Expression" name2="true" condition="Equal"/>
										<Action actionName="Hide-Show Component" actionCategory="General" id="60" action="Hide" conditionType="Parameter" dataType="Boolean" componentName="MODULE_CODE" sourceType1="SpecialValue" name1="IsEditMode" condition="Equal" name2="true" sourceType2="Expression"/>
									</Actions>
								</Event>
							</Events>
							<TableParameters>
								<TableParameter id="61" conditionType="Parameter" useIsNull="False" field="MODULE_CODE" parameterSource="MODULE_CODE" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
							</TableParameters>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="62" schemaName="dbo" tableName="REF_MODULE_CODES"/>
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
					<Events/>
					<Attributes/>
					<Features>
						<JDialog id="63" modal="True" visible="False" enabled="True" name="JDialog1" category="jQuery" title="Add/Edit MODULE CODES " show="Panel1condition_for_show.ontrue;" hide="Panel1condition_for_hide.ontrue;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<ControlPoints>
								<ControlPoint id="64" name="Panel1condition_for_show.ontrue" relProperty="show">
									<Items>
										<ControlPointItem id="65" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="66" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
										<ControlPointItem id="67" name="condition_for_show" ccpId="55" type="Condition" isFeature="True" PathID="Panel1condition_for_show"/>
									</Items>
								</ControlPoint>
								<ControlPoint id="68" name="Panel1condition_for_hide.ontrue" relProperty="hide">
									<Items>
										<ControlPointItem id="69" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="70" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
										<ControlPointItem id="71" name="condition_for_hide" ccpId="60" type="Condition" isFeature="True" PathID="Panel1condition_for_hide"/>
									</Items>
								</ControlPoint>
							</ControlPoints>
							<Features/>
						</JDialog>
					</Features>
				</Panel>
				<Link id="72" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="REF_MODULE_CODES1_Insert" hrefSource="REF_MODULE_CODES.ccp" removeParameters="MODULE_CODE" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="Panel1REF_MODULE_CODES1_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<Attributes/>
			<Features>
				<JUpdatePanel id="73" enabled="True" childrenAsTriggers="True" name="JUpdatePanel1" category="jQuery">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</JUpdatePanel>
				<Condition id="74" name="Condition1" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;link&quot;)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="75" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
							<Items>
								<ControlPointItem id="76" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="77" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="78" name="UpdatePanel1" ccpId="54" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="79" name="Condition2" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;submit&quot; &amp;&amp; $(&quot;#ErrorBlock&quot;).length == 0)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="80" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
							<Items>
								<ControlPointItem id="81" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="82" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="83" name="UpdatePanel1" ccpId="54" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="84" name="Condition3" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;link&quot;)" sourceType2="Expression" start="Panel1REF_MODULE_CODES1REF_MODULE_CODES1_Insert.onclick;Panel1REF_MODULE_CODES1Detail.onclick;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="85" name="Panel1REF_MODULE_CODES1REF_MODULE_CODES1_Insert.onclick" relProperty="start">
							<Items>
								<ControlPointItem id="86" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="87" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="88" name="REF_MODULE_CODES1" ccpId="5" type="Grid" isFeature="False" PathID="Panel1REF_MODULE_CODES1"/>
								<ControlPointItem id="89" name="REF_MODULE_CODES1_Insert" ccpId="8" type="Link" isFeature="False" PathID="Panel1REF_MODULE_CODES1REF_MODULE_CODES1_Insert"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="90" name="Panel1REF_MODULE_CODES1Detail.onclick" relProperty="start">
							<Items>
								<ControlPointItem id="91" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="92" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="93" name="REF_MODULE_CODES1" ccpId="5" type="Grid" isFeature="False" PathID="Panel1REF_MODULE_CODES1"/>
								<ControlPointItem id="94" name="Detail" ccpId="20" type="Link" isFeature="False" PathID="Panel1REF_MODULE_CODES1Detail"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="95" name="Condition4" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;submit&quot;)" sourceType2="Expression" start="Panel1Panel2REF_MODULE_CODES2.onsubmit;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="96" name="Panel1Panel2REF_MODULE_CODES2.onsubmit" relProperty="start">
							<Items>
								<ControlPointItem id="97" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="98" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="99" name="Panel2" ccpId="40" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
								<ControlPointItem id="100" name="REF_MODULE_CODES2" ccpId="41" type="Record" isFeature="False" PathID="Panel1Panel2REF_MODULE_CODES2"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="101" name="Condition5" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;&quot;)" sourceType2="Expression" start="Panel1Panel2DialogPanel1.onshow;Panel1Panel2DialogPanel1.onhide;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="102" name="Panel1Panel2DialogPanel1.onshow" relProperty="start">
							<Items>
								<ControlPointItem id="103" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="104" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="105" name="Panel2" ccpId="40" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
								<ControlPointItem id="106" name="DialogPanel1" ccpId="82" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="107" name="Panel1Panel2DialogPanel1.onhide" relProperty="start">
							<Items>
								<ControlPointItem id="108" name="REF_MODULE_CODES" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="109" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="110" name="Panel2" ccpId="40" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
								<ControlPointItem id="111" name="DialogPanel1" ccpId="82" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
			</Features>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="REF_MODULE_CODES.aspx" forShow="True" url="REF_MODULE_CODES.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="REF_MODULE_CODES.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="REF_MODULE_CODESDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
