<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="3" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Panel id="4" visible="True" generateDiv="True" name="Panel1" PathID="Panel1" features="(assigned)">
			<Components>
				<Grid id="5" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="COMMENT_TYPE" connection="connDECVPRODSQL2005" dataSource="COMMENT_TYPE" pageSizeLimit="100" pageSize="True" wizardCaption="List of COMMENT TYPE " wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Comment Types found!" wizardGridPagingType="Centered" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="custom" wizardGridRecordLinkField="edit" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="False" gridExtendedHTML="False" PathID="Panel1COMMENT_TYPE" composition="5" isParent="True" useJqueryFeatures="True">
					<Components>
						<Link id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="COMMENT_TYPE_Insert" hrefSource="COMMENT_TYPE_maint.ccp" removeParameters="COMMENT_TYPE_ID" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="Panel1COMMENT_TYPECOMMENT_TYPE_Insert">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Sorter id="12" visible="True" name="Sorter_COMMENT_TYPE" column="COMMENT_TYPE" wizardCaption="COMMENT TYPE" wizardSortingType="SimpleDir" wizardControl="COMMENT_TYPE" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_COMMENT_TYPE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="13" visible="True" name="Sorter_COMMENT_DESCRIPTION" column="COMMENT_DESCRIPTION" wizardCaption="COMMENT DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="COMMENT_DESCRIPTION" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_COMMENT_DESCRIPTION">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="14" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_STATUS">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="15" visible="True" name="Sorter_PUBLIC_FLAG" column="PUBLIC_FLAG" wizardCaption="PUBLIC FLAG" wizardSortingType="SimpleDir" wizardControl="PUBLIC_FLAG" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_PUBLIC_FLAG">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="16" visible="True" name="Sorter_SPECIAL_FLAG" column="SPECIAL_FLAG" wizardCaption="SPECIAL FLAG" wizardSortingType="SimpleDir" wizardControl="SPECIAL_FLAG" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_SPECIAL_FLAG">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="17" visible="True" name="Sorter_COMMENT_HELP" column="COMMENT_HELP" wizardCaption="COMMENT HELP" wizardSortingType="SimpleDir" wizardControl="COMMENT_HELP" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_COMMENT_HELP">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="18" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_LAST_ALTERED_BY">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="19" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="Panel1COMMENT_TYPESorter_LAST_ALTERED_DATE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="20" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" preserveParameters="GET" name="Detail" wizardCaption="Detail" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" dataType="Text" hrefSource="COMMENT_TYPE_maint.ccp" wizardThemeItem="GridA" PathID="Panel1COMMENT_TYPEDetail" urlType="Relative">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="21" sourceType="DataField" format="yyyy-mm-dd" name="COMMENT_TYPE_ID" source="COMMENT_TYPE_ID"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="COMMENT_TYPE1" fieldSource="COMMENT_TYPE" wizardCaption="COMMENT TYPE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPECOMMENT_TYPE1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="COMMENT_DESCRIPTION" fieldSource="COMMENT_DESCRIPTION" wizardCaption="COMMENT DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPECOMMENT_DESCRIPTION">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="27" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPESTATUS">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="29" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="PUBLIC_FLAG" fieldSource="PUBLIC_FLAG" wizardCaption="PUBLIC FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPEPUBLIC_FLAG">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="31" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="SPECIAL_FLAG" fieldSource="SPECIAL_FLAG" wizardCaption="SPECIAL FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPESPECIAL_FLAG">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="COMMENT_HELP" fieldSource="COMMENT_HELP" wizardCaption="COMMENT HELP" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPECOMMENT_HELP">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPELAST_ALTERED_BY">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="37" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1COMMENT_TYPELAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="38" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Blueprint">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="11" conditionType="Parameter" useIsNull="False" field="COMMENT_HELP" dataType="Text" searchConditionType="Contains" parameterType="URL" parameterSource="s_keyword" logicOperator="Or" orderNumber="3" rightBrackets="1"/>
<TableParameter id="10" conditionType="Parameter" useIsNull="False" field="COMMENT_DESCRIPTION" dataType="Text" searchConditionType="Contains" parameterType="URL" parameterSource="s_keyword" logicOperator="Or" orderNumber="2"/>
<TableParameter id="9" conditionType="Parameter" useIsNull="False" field="COMMENT_TYPE" dataType="Text" searchConditionType="Contains" parameterType="URL" parameterSource="s_keyword" logicOperator="Or" orderNumber="1" leftBrackets="1"/>
</TableParameters>
					<JoinTables>
						<JoinTable id="6" tableName="COMMENT_TYPE"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="36" tableName="COMMENT_TYPE" fieldName="LAST_ALTERED_DATE"/>
<Field id="34" tableName="COMMENT_TYPE" fieldName="LAST_ALTERED_BY"/>
<Field id="32" tableName="COMMENT_TYPE" fieldName="COMMENT_HELP"/>
<Field id="30" tableName="COMMENT_TYPE" fieldName="SPECIAL_FLAG"/>
<Field id="28" tableName="COMMENT_TYPE" fieldName="PUBLIC_FLAG"/>
<Field id="26" tableName="COMMENT_TYPE" fieldName="STATUS"/>
<Field id="24" tableName="COMMENT_TYPE" fieldName="COMMENT_DESCRIPTION"/>
<Field id="22" tableName="COMMENT_TYPE" fieldName="COMMENT_TYPE"/>
<Field id="7" tableName="COMMENT_TYPE" fieldName="COMMENT_TYPE_ID"/>
</Fields>
					<PKFields/>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="39" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="COMMENT_TYPESearch" searchIds="39" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="Or" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="GridRecord" returnPage="COMMENT_TYPE_maint.ccp" PathID="Panel1COMMENT_TYPESearch" composition="5">
					<Components>
						<Link id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="COMMENT_TYPE_maint.ccp" removeParameters="s_keyword" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="Panel1COMMENT_TYPESearchClearParameters">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Button id="41" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="Panel1COMMENT_TYPESearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" fieldSource="COMMENT_TYPE,COMMENT_DESCRIPTION,COMMENT_HELP" wizardIsPassword="False" wizardCaption="Keyword" caption="Keyword" required="False" unique="False" wizardSize="20" wizardMaxLength="20" PathID="Panel1COMMENT_TYPESearchs_keyword">
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
				<Panel id="43" visible="True" generateDiv="True" name="Panel2" PathID="Panel1Panel2" features="(assigned)">
					<Components>
						<Record id="44" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="COMMENT_TYPE1" connection="connDECVPRODSQL2005" dataSource="COMMENT_TYPE" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="COMMENT_TYPE_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit COMMENT TYPE " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="False" recordDirection="Vertical" templatePageRecord="C:/Program Files (x86)/CodeChargeStudio5/Templates/Record/Dialog.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="Panel1Panel2COMMENT_TYPE1" composition="5" removeParameters="COMMENT_TYPE_ID">
							<Components>
								<Button id="46" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Panel1Panel2COMMENT_TYPE1Button_Insert">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="47" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Panel1Panel2COMMENT_TYPE1Button_Update">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="48" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Panel1Panel2COMMENT_TYPE1Button_Cancel">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<TextBox id="50" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="COMMENT_TYPE2" fieldSource="COMMENT_TYPE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMMENT TYPE" caption="COMMENT TYPE" required="True" unique="True" wizardSize="20" wizardMaxLength="20" PathID="Panel1Panel2COMMENT_TYPE1COMMENT_TYPE2">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<TextBox id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT_DESCRIPTION" fieldSource="COMMENT_DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMMENT DESCRIPTION" caption="COMMENT DESCRIPTION" required="False" unique="False" wizardSize="50" wizardMaxLength="50" PathID="Panel1Panel2COMMENT_TYPE1COMMENT_DESCRIPTION">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<RadioButton id="52" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="PUBLIC_FLAG" fieldSource="PUBLIC_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="PUBLIC FLAG" caption="PUBLIC FLAG" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="Panel1Panel2COMMENT_TYPE1PUBLIC_FLAG" dataSource="1;Yes (Public);0;No" defaultValue="0">
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
								<RadioButton id="53" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="SPECIAL_FLAG" fieldSource="SPECIAL_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SPECIAL FLAG" caption="SPECIAL FLAG" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="Panel1Panel2COMMENT_TYPE1SPECIAL_FLAG" dataSource="1;Yes (Non-Teachers);0;No (Teachers)" defaultValue="0">
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
								<RadioButton id="54" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="STATUS" fieldSource="STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STATUS" caption="STATUS" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="Panel1Panel2COMMENT_TYPE1STATUS" dataSource="1;Active;0;Inactive" defaultValue="1">
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
								<Hidden id="55" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" required="False" unique="False" PathID="Panel1Panel2COMMENT_TYPE1LAST_ALTERED_BY">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Hidden>
								<Hidden id="56" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED DATE" caption="LAST ALTERED DATE" required="False" format="dd/mm/yyyy h:nn AM/PM" unique="False" PathID="Panel1Panel2COMMENT_TYPE1LAST_ALTERED_DATE" defaultValue="CurrentDateTime" DBFormat="yyyy-mm-dd HH:nn:ss">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Hidden>
								<TextArea id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT_HELP" fieldSource="COMMENT_HELP" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="COMMENT HELP" caption="COMMENT HELP" required="False" unique="False" wizardSize="50" wizardRows="3" PathID="Panel1Panel2COMMENT_TYPE1COMMENT_HELP">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextArea>
								<Label id="106" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblCOMMENT_TYPE" PathID="Panel1Panel2COMMENT_TYPE1lblCOMMENT_TYPE" fieldSource="COMMENT_TYPE">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Label>
							</Components>
							<Events>
								<Event name="OnSubmit" type="Client">
									<Actions>
										<Action actionName="Validate Maximum Length" actionCategory="Validation" id="107" name="COMMENT_HELP" maximumLength="500" errorMessage="Comment Help must be less than 500 characters in length"/>
									</Actions>
								</Event>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="108"/>
									</Actions>
								</Event>
								<Event name="BeforeUpdate" type="Server">
									<Actions>
										<Action actionName="Retrieve Value for Control" actionCategory="General" id="109" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
										<Action actionName="Retrieve Value for Control" actionCategory="General" id="110" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
									</Actions>
								</Event>
								<Event name="BeforeInsert" type="Server">
									<Actions>
										<Action actionName="Retrieve Value for Control" actionCategory="General" id="111" name="COMMENT_TYPE2" sourceType="Expression" sourceName="COMMENT_TYPE1COMMENT_TYPE2.Text.ToUpper"/>
									</Actions>
								</Event>
							</Events>
							<TableParameters>
								<TableParameter id="49" conditionType="Parameter" useIsNull="False" field="COMMENT_TYPE_ID" parameterSource="COMMENT_TYPE_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
							</TableParameters>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="45" tableName="COMMENT_TYPE"/>
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
						<JDialog id="86" modal="True" visible="False" enabled="True" name="DialogPanel1" category="jQuery" title="Add/Edit COMMENT TYPE " show="Panel1condition_for_show.ontrue;" hide="Panel1condition_for_hide.ontrue;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<ControlPoints>
								<ControlPoint id="87" name="Panel1condition_for_show.ontrue" relProperty="show">
									<Items>
										<ControlPointItem id="88" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="89" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
										<ControlPointItem id="90" name="condition_for_show" ccpId="59" type="Condition" isFeature="True" PathID="Panel1condition_for_show"/>
									</Items>
								</ControlPoint>
								<ControlPoint id="91" name="Panel1condition_for_hide.ontrue" relProperty="hide">
									<Items>
										<ControlPointItem id="92" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="93" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
										<ControlPointItem id="94" name="condition_for_hide" ccpId="64" type="Condition" isFeature="True" PathID="Panel1condition_for_hide"/>
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
				<JUpdatePanel id="58" enabled="True" childrenAsTriggers="True" name="UpdatePanel1" category="jQuery">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</JUpdatePanel>
				<Condition id="59" name="condition_for_show" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;link&quot;)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="60" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
							<Items>
								<ControlPointItem id="61" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="62" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="63" name="UpdatePanel1" ccpId="58" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="64" name="condition_for_hide" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;submit&quot; &amp;&amp; $(&quot;#ErrorBlock&quot;).length == 0)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="65" name="Panel1UpdatePanel1.onafterrefresh" relProperty="start">
							<Items>
								<ControlPointItem id="66" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="67" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="68" name="UpdatePanel1" ccpId="58" type="JUpdatePanel" isFeature="True" PathID="Panel1UpdatePanel1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="69" name="ccc_link_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;link&quot;)" sourceType2="Expression" start="Panel1COMMENT_TYPECOMMENT_TYPE_Insert.onclick;Panel1COMMENT_TYPEDetail.onclick;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="70" name="Panel1COMMENT_TYPECOMMENT_TYPE_Insert.onclick" relProperty="start">
							<Items>
								<ControlPointItem id="71" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="72" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="73" name="COMMENT_TYPE" ccpId="5" type="Grid" isFeature="False" PathID="Panel1COMMENT_TYPE"/>
								<ControlPointItem id="74" name="COMMENT_TYPE_Insert" ccpId="8" type="Link" isFeature="False" PathID="Panel1COMMENT_TYPECOMMENT_TYPE_Insert"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="75" name="Panel1COMMENT_TYPEDetail.onclick" relProperty="start">
							<Items>
								<ControlPointItem id="76" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="77" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="78" name="COMMENT_TYPE" ccpId="5" type="Grid" isFeature="False" PathID="Panel1COMMENT_TYPE"/>
								<ControlPointItem id="79" name="Detail" ccpId="20" type="Link" isFeature="False" PathID="Panel1COMMENT_TYPEDetail"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="80" name="ccc_submit_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;submit&quot;)" sourceType2="Expression" start="Panel1Panel2COMMENT_TYPE1.onsubmit;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="81" name="Panel1Panel2COMMENT_TYPE1.onsubmit" relProperty="start">
							<Items>
								<ControlPointItem id="82" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="83" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="84" name="Panel2" ccpId="43" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
								<ControlPointItem id="85" name="COMMENT_TYPE1" ccpId="44" type="Record" isFeature="False" PathID="Panel1Panel2COMMENT_TYPE1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<Condition id="95" name="ccc_others_Condition" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;&quot;)" sourceType2="Expression" start="Panel1Panel2DialogPanel1.onshow;Panel1Panel2DialogPanel1.onhide;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="96" name="Panel1Panel2DialogPanel1.onshow" relProperty="start">
							<Items>
								<ControlPointItem id="97" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="98" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="99" name="Panel2" ccpId="43" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
								<ControlPointItem id="100" name="DialogPanel1" ccpId="86" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="101" name="Panel1Panel2DialogPanel1.onhide" relProperty="start">
							<Items>
								<ControlPointItem id="102" name="COMMENT_TYPE_maint" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="103" name="Panel1" ccpId="4" type="Panel" isFeature="False" PathID="Panel1"/>
								<ControlPointItem id="104" name="Panel2" ccpId="43" type="Panel" isFeature="False" PathID="Panel1Panel2"/>
								<ControlPointItem id="105" name="DialogPanel1" ccpId="86" type="JDialog" isFeature="True" PathID="Panel1Panel2DialogPanel1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
			</Features>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="COMMENT_TYPE_maint.aspx" forShow="True" url="COMMENT_TYPE_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="COMMENT_TYPE_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="COMMENT_TYPE_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
