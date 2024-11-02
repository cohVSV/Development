<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="select a.TXN_ID, a.TXN_DATE as TRANS_DATE, convert(varchar(20),b.TXN_TYPE) as TRANS_CODE, convert(numeric(6,2),a.AMOUNT) as AMOUNT, a.CR_DR_FLAG, a.COMMENTS, 
convert(varchar(10),a.RECEIPT_NO) as RECEIPT
 from TEMP_TXN a, TXN_CODE b where STUDENT_ID= {STUDENT_ID} and ENROLMENT_YEAR= {ENROLMENT_YEAR} and a.CAMPUS_CODE='D' and a.TXN_CODE=b.TXN_CODE order by TXN_ID" name="Grid_Transactions" pageSizeLimit="100" wizardCaption="List of Grid1 " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Transactions found for this Student + Year" pasteAsReplace="pasteAsReplace" PathID="Grid_Transactions">
			<Components>
				<Label id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Date" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_TRANS_DATE" fieldSource="TRANS_DATE" wizardUseTemplateBlock="False" format="dd/mm/yyyy" hrefSource="FinancialAccounts_comments_maintain.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="5" sourceType="DataField" format="yyyy-mm-dd" name="TXN_ID" source="TXN_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="6" fieldSourceType="DBColumn" dataType="Float" html="False" name="TXN_ID" fieldSource="TXN_ID" wizardCaption="TXN ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid_TransactionsTXN_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="7" fieldSourceType="DBColumn" dataType="Text" html="False" name="TRANS_CODE" fieldSource="TRANS_CODE" wizardCaption="TRANS CODE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="8" fieldSourceType="DBColumn" dataType="Float" html="False" name="AMOUNT" fieldSource="AMOUNT" wizardCaption="AMOUNT" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" format="$0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="CR_DR_FLAG" fieldSource="CR_DR_FLAG" wizardCaption="CR DR FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENTS" fieldSource="COMMENTS" wizardCaption="COMMENTS" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="RECEIPT" fieldSource="RECEIPT" wizardCaption="RECEIPT" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="12" fieldSourceType="DBColumn" dataType="Float" html="False" name="lblAcctBalance" format="$0.00" defaultValue="0.00">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="13" id_oncopy="38"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblCRDRFlag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="15" styles="Row;AltRow" name="rowStyle" id_oncopy="6"/>
						<Action actionName="Custom Code" actionCategory="General" id="16" id_oncopy="37"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="17" variable="STUDENT_ID" parameterType="Session" dataType="Text" parameterSource="tmpSTUDENT_ID" designDefaultValue="52884" defaultValue="0"/>
				<SQLParameter id="18" variable="ENROLMENT_YEAR" parameterType="Session" dataType="Text" parameterSource="tmpENROLMENT_YEAR" defaultValue="year(now())" designDefaultValue="2008"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="19" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="txn" dataSource="TEMP_TXN" errorSummator="Error" wizardCaption="Add/Edit Txn " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" returnPage="FinancialAccounts_maintain.ccp" PathID="txn">
			<Components>
				<Hidden id="20" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="21" fieldSourceType="DBColumn" dataType="Float" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" required="True" caption="ENROLMENT YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="22" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" defaultValue="DBUtility.UserID" PathID="txnLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CAMPUS_CODE" caption="CAMPUS CODE" fieldSource="CAMPUS_CODE" required="False" defaultValue="&quot;D&quot;" PathID="txnCAMPUS_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="24" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" defaultValue="CurrentDateTime" PathID="txnLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="TXN_DATE" fieldSource="TXN_DATE" required="True" caption="Transaction Date" wizardCaption="DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" defaultValue="CurrentDate" format="dd/mm/yyyy" PathID="txnTXN_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="26" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="TXN_CODE" fieldSource="TXN_CODE" required="True" caption="Transaction Code" wizardCaption="CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="TXN_CODE" boundColumn="TXN_CODE" textColumn="TXN_TYPE" orderBy="TXN_TYPE" defaultValue="&quot;P&quot;" PathID="txnTXN_CODE">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="27" tableName="TXN_CODE" posLeft="10" posTop="10" posWidth="160" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="28" tableName="TXN_CODE" fieldName="TXN_CODE"/>
						<Field id="29" tableName="TXN_CODE" fieldName="TXN_TYPE"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Single" name="AMOUNT" fieldSource="AMOUNT" required="True" caption="Amount" wizardCaption="AMOUNT" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" format="0.#;;;;,;" PathID="txnAMOUNT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="31" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="CR_DR_FLAG" fieldSource="CR_DR_FLAG" required="True" caption="DR/CR drop-down" wizardCaption="CR DR FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="D" _nameOfList="DR" dataSource="C;CR;D;DR" defaultValue="&quot;C&quot;" PathID="txnCR_DR_FLAG">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextArea id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENTS" fieldSource="COMMENTS" required="False" caption="Comments" wizardCaption="COMMENTS" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="txnCOMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextBox id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RECEIPT_NO" fieldSource="RECEIPT_NO" required="False" caption="RECEIPT NO" wizardCaption="RECEIPT NO" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnRECEIPT_NO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="34" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="txnButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="35" action="Hide" conditionType="Parameter" dataType="Text" componentName="txn" condition="Equal" sourceType1="URL" name1="STUDENT_ID" name2="&quot;&quot;" sourceType2="Expression" id_oncopy="50"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="36" name="STUDENT_ID" sourceType="Session" sourceName="tmpSTUDENT_ID" id_oncopy="29"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="37" name="ENROLMENT_YEAR" sourceType="Session" sourceName="tmpENROLMENT_YEAR" id_oncopy="30"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Validate Maximum Length" actionCategory="Validation" id="38" name="COMMENTS" maximumLength="60" errorMessage="Field [Comment] Must not exceed 60 characters" id_oncopy="31"/>
						<Action actionName="Validate Maximum Value" actionCategory="Validation" id="39" name="AMOUNT" maximumValue="10000" errorMessage="Field [Amount] Must be less than 10,000" id_oncopy="32"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="40" conditionType="Parameter" useIsNull="False" field="TXN_ID" parameterSource="TXN_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolment_AddTXN.aspx" forShow="True" url="StudentEnrolment_AddTXN.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolment_AddTXN.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolment_AddTXNDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
