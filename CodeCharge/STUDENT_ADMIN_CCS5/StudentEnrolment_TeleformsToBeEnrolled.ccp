<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Panel id="3" visible="True" name="Panel1" PathID="Panel1" features="(assigned)">
			<Components>
				<EditableGrid id="5" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="40" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" dataSource="TMP_STUDENT" activeCollection="USPParameters" orderBy="LAST_ALTERED_DATE desc" name="NewEditableGrid1" pageSizeLimit="100" wizardCaption="List of TMP STUDENT " wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Teleforms Details found" PathID="Panel1NewEditableGrid1" customUpdateType="Procedure" parameterTypeListName="CustomTableParameterTypeList" customUpdate="sp_cpyTMP_TABLE_TO_LIVE_Teleforms;1" pasteAsReplace="pasteAsReplace">
					<Components>
						<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="NewEditableGrid1_TotalRecords" wizardUseTemplateBlock="False" PathID="Panel1NewEditableGrid1NewEditableGrid1_TotalRecords">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Retrieve number of records" actionCategory="Database" id="23"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="26" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" required="False" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1STUDENT_ID">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1SURNAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1FIRST_NAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="29" fieldSourceType="DBColumn" dataType="Date" html="False" name="BIRTH_DATE" fieldSource="BIRTH_DATE" required="True" caption="BIRTH DATE" wizardCaption="BIRTH DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1BIRTH_DATE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" required="True" caption="CATEGORY CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1CATEGORY_CODE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="32" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1LAST_ALTERED_DATE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" name="TELEFORM_STATUS" fieldSource="TELEFORM_STATUS" required="False" caption="TELEFORM STATUS" wizardCaption="TELEFORM STATUS" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1TELEFORM_STATUS">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Hidden id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" name="TMP_STUDENT_ID" fieldSource="TMP_STUDENT_ID" required="True" caption="ID" wizardCaption="ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1TMP_STUDENT_ID">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Hidden>
						<Navigator id="35" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="False" wizardImagesScheme="Blueprint" PathID="Panel1NewEditableGrid1Navigator">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
						<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBCATEGORY_CODE" fieldSource="SUBCATEGORY_CODE" required="True" caption="SUBCATEGORY CODE" wizardCaption="SUBCATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1NewEditableGrid1SUBCATEGORY_CODE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Button id="39" urlType="Relative" enableValidation="True" isDefault="False" name="Button1" PathID="Panel1NewEditableGrid1Button1">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
					</Components>
					<Events/>
					<TableParameters>
						<TableParameter id="16" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="LAST_ALTERED_BY='TELEFORM'"/><TableParameter id="24" conditionType="Parameter" useIsNull="False" field="SURNAME" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="1" leftBrackets="1"/><TableParameter id="25" conditionType="Parameter" useIsNull="False" field="FIRST_NAME" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="2" rightBrackets="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="6" tableName="TMP_STUDENT" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="7" fieldName="isnull(STUDENT_ID,'New Student') " isExpression="True" alias="STUDENT_ID"/>
						<Field id="8" tableName="TMP_STUDENT" fieldName="SURNAME"/>
						<Field id="9" tableName="TMP_STUDENT" fieldName="FIRST_NAME"/>
						<Field id="10" tableName="TMP_STUDENT" fieldName="BIRTH_DATE"/>
						<Field id="11" tableName="TMP_STUDENT" fieldName="CATEGORY_CODE"/>
						<Field id="12" tableName="TMP_STUDENT" fieldName="SUBCATEGORY_CODE"/>
						<Field id="13" tableName="TMP_STUDENT" fieldName="LAST_ALTERED_DATE"/>
						<Field id="14" tableName="TMP_STUDENT" fieldName="TELEFORM_STATUS"/>
						<Field id="15" tableName="TMP_STUDENT" fieldName="TMP_STUDENT_ID"/>
					</Fields>
					<PKFields>
						<PKField id="21" tableName="TMP_STUDENT" fieldName="TMP_STUDENT_ID" dataType="Float"/>
					</PKFields>
					<ISPParameters/>
					<ISQLParameters/>
					<IFormElements/>
					<USPParameters>
						<SPParameter id="Key40" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
						<SPParameter id="Key41" parameterName="@TMP_STUDENT_ID" parameterSource="TMP_STUDENT_ID" dataType="Numeric" parameterType="DataSourceColumn" dataSize="8" direction="Input" scale="0" precision="0"/>
					</USPParameters>
					<USQLParameters/>
					<UConditions/>
					<UFormElements>
						<CustomParameter id="38" field="TMP_STUDENT_ID" dataType="Integer" parameterType="Control" parameterSource="TMP_STUDENT_ID"/>
					</UFormElements>
					<DSPParameters/>
					<DSQLParameters/>
					<DConditions/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</EditableGrid>
				<Record id="18" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="TMP_STUDENTSearch" wizardCaption="Search TMP STUDENT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="StudentEnrolment_TeleformsToBeEnrolled.ccp" PathID="Panel1TMP_STUDENTSearch">
					<Components>
						<Button id="19" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="Panel1TMP_STUDENTSearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardCaption="Keyword" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="Panel1TMP_STUDENTSearchs_keyword">
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
			</Components>
			<Events/>
			<Attributes/>
			<Features>
				<UpdatePanel id="4" enabled="True" childrenAsTriggers="True" name="UpdatePanel" category="Ajax">
					<Components/>
					<Events/>
					<Features/>
					<ControlPoints/>
				</UpdatePanel>
			</Features>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolment_TeleformsToBeEnrolled.aspx" forShow="True" url="StudentEnrolment_TeleformsToBeEnrolled.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolment_TeleformsToBeEnrolled.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolment_TeleformsToBeEnrolledDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
