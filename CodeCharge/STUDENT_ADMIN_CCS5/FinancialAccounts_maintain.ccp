<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="50" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
<IncludePage id="52" name="Menu_Student_maintain" PathID="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblEnrolmentYear">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
<Grid id="56" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="select a.TXN_ID, a.TXN_DATE as TRANS_DATE, convert(varchar(20),b.TXN_TYPE) as TRANS_CODE, convert(numeric(6,2),a.AMOUNT) as AMOUNT, a.CR_DR_FLAG, a.COMMENTS, 
convert(varchar(10),a.RECEIPT_NO) as RECEIPT
 from TXN a, TXN_CODE b where STUDENT_ID= {STUDENT_ID} and ENROLMENT_YEAR= {ENROLMENT_YEAR} and a.CAMPUS_CODE='D' and a.TXN_CODE=b.TXN_CODE order by TXN_ID" name="Grid_Transactions" pageSizeLimit="100" wizardCaption="List of Grid1 " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Transactions found for this Student + Year" pasteAsReplace="pasteAsReplace" PathID="Grid_Transactions">
			<Components>
				<Link id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Date" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_TRANS_DATE" fieldSource="TRANS_DATE" wizardUseTemplateBlock="False" format="dd/mm/yyyy" hrefSource="FinancialAccounts_comments_maintain.ccp" PathID="Grid_Transactionslink_TRANS_DATE">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="45" sourceType="DataField" format="yyyy-mm-dd" name="TXN_ID" source="TXN_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Hidden id="7" fieldSourceType="DBColumn" dataType="Float" html="False" name="TXN_ID" fieldSource="TXN_ID" wizardCaption="TXN ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid_TransactionsTXN_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="TRANS_CODE" fieldSource="TRANS_CODE" wizardCaption="TRANS CODE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Float" html="False" name="AMOUNT" fieldSource="AMOUNT" wizardCaption="AMOUNT" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" format="$0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="CR_DR_FLAG" fieldSource="CR_DR_FLAG" wizardCaption="CR DR FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="12" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENTS" fieldSource="COMMENTS" wizardCaption="COMMENTS" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="RECEIPT" fieldSource="RECEIPT" wizardCaption="RECEIPT" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Single" html="False" name="lblAcctBalance" format="$0.00" defaultValue="0.00">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="38" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblCRDRFlag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="6" styles="Row;AltRow" name="rowStyle" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="37" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="4" variable="STUDENT_ID" parameterType="URL" dataType="Text" parameterSource="STUDENT_ID" designDefaultValue="52884" defaultValue="1"/>
				<SQLParameter id="5" variable="ENROLMENT_YEAR" parameterType="URL" dataType="Text" parameterSource="ENROLMENT_YEAR" defaultValue="year(now())" designDefaultValue="2008"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
<Record id="14" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="txn" dataSource="txn" errorSummator="Error" wizardCaption="Add/Edit Txn " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" returnPage="FinancialAccounts_maintain_autocalc.ccp" PathID="txn" pasteActions="pasteActions">
			<Components>
				<Hidden id="24" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="25" fieldSourceType="DBColumn" dataType="Float" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" required="True" caption="ENROLMENT YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="27" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" defaultValue="DBUtility.UserID.tostring()" PathID="txnLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CAMPUS_CODE" caption="CAMPUS CODE" fieldSource="CAMPUS_CODE" required="False" defaultValue="&quot;D&quot;" PathID="txnCAMPUS_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="28" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" defaultValue="CurrentDateTime" PathID="txnLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="TXN_DATE" fieldSource="TXN_DATE" required="True" caption="Transaction Date" wizardCaption="DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" defaultValue="CurrentDate" format="dd/mm/yyyy" PathID="txnTXN_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="19" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="TXN_CODE" required="True" caption="Transaction Code" wizardCaption="CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="TXN_CODE" boundColumn="TXN_CODE" textColumn="TXN_TYPE" orderBy="TXN_TYPE" defaultValue="&quot;&quot;" PathID="txnTXN_CODE" features="(assigned)" generateDiv="False" fieldSource="TXN_CODE">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features>
						<PTAutoFill id="57" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill2" servicePage="services/FinancialAccounts_maintain_txn_TXN_CODE_PTAutoFill1.ccp" searchField="TXN_CODE" connection="connDECVPRODSQL2005" featureNameChanged="No" dataSource="TXN_CODE" category="Prototype">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Controls>
								<Control id="58" name="txnLabel_CR_DR_FLAG" source="CR_DR_FLAG" propertyValue="innerHTML"/>
								<Control id="59" name="txnCR_DR_FLAG" source="CR_DR_FLAG" propertyValue="value"/>
							</Controls>
							<ControlPoints/>
							<Features/>
						</PTAutoFill>
					</Features>
					<PKFields/>
				</ListBox>
				<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Single" name="AMOUNT" fieldSource="AMOUNT" required="True" caption="Amount" wizardCaption="AMOUNT" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" format="0.#;;;;,;" PathID="txnAMOUNT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextArea id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENTS" fieldSource="COMMENTS" required="False" caption="Comments" wizardCaption="COMMENTS" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="txnCOMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RECEIPT_NO" fieldSource="RECEIPT_NO" required="False" caption="RECEIPT NO" wizardCaption="RECEIPT NO" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnRECEIPT_NO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="15" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="txnButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="21" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="CR_DR_FLAG" fieldSource="CR_DR_FLAG" required="True" caption="DR/CR (select Transation Code)" wizardCaption="CR DR FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="D" _nameOfList="DR" dataSource="C;CR;D;DR" defaultValue="&quot;&quot;" PathID="txnCR_DR_FLAG" html="True">
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
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="60" action="Hide" conditionType="Parameter" dataType="Text" componentName="txn" condition="Equal" sourceType1="URL" name1="STUDENT_ID" name2="&quot;&quot;" sourceType2="Expression"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="29" name="STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="30" name="ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Validate Maximum Length" actionCategory="Validation" id="31" name="COMMENTS" maximumLength="60" errorMessage="Field [Comment] Must not exceed 60 characters"/>
						<Action actionName="Validate Maximum Value" actionCategory="Validation" id="32" name="AMOUNT" maximumValue="10000" errorMessage="Field [Amount] Must be less than 10,000"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="16" conditionType="Parameter" useIsNull="False" field="TXN_ID" parameterSource="TXN_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
		<CodeFile id="3" language="VB" name="FinancialAccounts_maintain.aspx" forShow="True" url="FinancialAccounts_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="FinancialAccounts_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="FinancialAccounts_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Retrieve Value for Control" actionCategory="General" id="48" name="lblStudentID" sourceType="URL" sourceName="STUDENT_ID"/>
				<Action actionName="Retrieve Value for Control" actionCategory="General" id="49" name="lblEnrolmentYear" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
			</Actions>
		</Event>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="43" form="txn" name="AMOUNT"/>
			</Actions>
		</Event>
	</Events>
</Page>
