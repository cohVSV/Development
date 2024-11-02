<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Back" hrefSource="FinancialAccounts_maintain.ccp" wizardUseTemplateBlock="False" PathID="Link_Back">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="3" sourceType="SQL" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="txn" dataSource="select a.TXN_ID, a.STUDENT_ID, a.ENROLMENT_YEAR, a.TXN_DATE as TRANS_DATE, convert(varchar(20),b.TXN_TYPE) as TRANS_CODE, convert(numeric(6,2),a.AMOUNT) as AMOUNT, a.CR_DR_FLAG, a.COMMENTS, 
convert(varchar(10),a.RECEIPT_NO) as RECEIPT
 from TXN a, TXN_CODE b where a.TXN_ID = {TXN_ID} and a.TXN_CODE=b.TXN_CODE " errorSummator="Error" wizardCaption="Add/Edit Txn " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" returnPage="FinancialAccounts_maintain.ccp" removeParameters="TXN_ID" customUpdateType="Table" activeCollection="UConditions" activeTableType="customUpdate" customUpdate="txn" parameterTypeListName="ParameterTypeList" PathID="txn">
			<Components>
				<Hidden id="14" fieldSourceType="DBColumn" dataType="Float" name="TXN_ID" fieldSource="TXN_ID" required="True" caption="Transaction ID" wizardCaption="ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnTXN_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="6" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="7" fieldSourceType="DBColumn" dataType="Float" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" required="True" caption="ENROLMENT YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="8" fieldSourceType="DBColumn" dataType="Date" html="False" name="TRANS_DATE" fieldSource="TRANS_DATE" required="True" caption="DATE" wizardCaption="DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="TRANS_CODE" fieldSource="TRANS_CODE" required="True" caption="CODE" wizardCaption="CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Single" html="False" name="AMOUNT" fieldSource="AMOUNT" required="True" caption="AMOUNT" wizardCaption="AMOUNT" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" format="$0.00" defaultValue="0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="CR_DR_FLAG" fieldSource="CR_DR_FLAG" required="True" caption="CR DR FLAG" wizardCaption="CR DR FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextArea id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENTS" fieldSource="COMMENTS" required="False" caption="COMMENTS" wizardCaption="COMMENTS" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="txnCOMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RECEIPT_NO" fieldSource="RECEIPT" required="False" caption="RECEIPT #" wizardCaption="RECEIPT NO" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="txnRECEIPT_NO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="19" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" returnPage="FinancialAccounts_maintain.ccp" removeParameters="TXN_ID" PathID="txnButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="txnButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Validate Maximum Length" actionCategory="Validation" id="20" name="COMMENTS" maximumLength="60" errorMessage="Field [Comment] Must not exceed 60 characters"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="5" conditionType="Parameter" useIsNull="False" field="TXN_ID" parameterSource="TXN_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="28" parameterType="URL" variable="TXN_ID" dataType="Float" parameterSource="TXN_ID" designDefaultValue="12443"/>
			</SQLParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="27" conditionType="Parameter" useIsNull="False" field="TXN_ID" dataType="Float" parameterType="Control" searchConditionType="Equal" logicOperator="And" orderNumber="1" parameterSource="TXN_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="22" field="LAST_ALTERED_BY" dataType="Text" parameterType="Session" parameterSource="UserID" omitIfEmpty="True"/>
				<CustomParameter id="23" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" parameterSource="Now()" omitIfEmpty="True"/>
				<CustomParameter id="25" field="COMMENTS" dataType="Text" parameterType="Control" parameterSource="COMMENTS" omitIfEmpty="True"/>
				<CustomParameter id="26" field="RECEIPT_NO" dataType="Text" parameterType="Control" parameterSource="RECEIPT_NO" omitIfEmpty="True"/>
			</UFormElements>
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
		<CodeFile id="3" language="VB" name="FinancialAccounts_comments_maintain.aspx" forShow="True" url="FinancialAccounts_comments_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="FinancialAccounts_comments_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="FinancialAccounts_comments_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
