<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="CONTRIBUTION" dataSource="CONTRIBUTION" errorSummator="Error" wizardCaption="Add/Edit CONTRIBUTION " wizardFormMethod="post" returnPage="CONTRIBUTION_list.ccp" PathID="CONTRIBUTION" activeCollection="TableParameters">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="CONTRIBUTIONButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="CONTRIBUTIONButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="CONTRIBUTIONButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="7" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="SCHOOL_TYPE_CODE" fieldSource="SCHOOL_TYPE_CODE" required="True" caption="SCHOOL TYPE CODE" wizardCaption="SCHOOL TYPE CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="SCHOOL_TYPE" boundColumn="SCHOOL_TYPE_CODE" textColumn="SCHOOL_TYPE_CODE" PathID="CONTRIBUTIONSCHOOL_TYPE_CODE">
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
				<RadioButton id="8" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" html="True" returnValueType="Number" name="CAMPUS_CODE" fieldSource="CAMPUS_CODE" required="True" caption="CAMPUS CODE" wizardCaption="CAMPUS CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" connection="connDECVPRODSQL2005" dataSource="CAMPUS" boundColumn="CAMPUS_CODE" textColumn="CAMPUS_CODE" visible="Yes" PathID="CONTRIBUTIONCAMPUS_CODE">
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
				</RadioButton>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="FROM_YEAR_LEVEL" fieldSource="FROM_YEAR_LEVEL" required="True" caption="FROM YEAR LEVEL" wizardCaption="FROM YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" PathID="CONTRIBUTIONFROM_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="TO_YEAR_LEVEL" fieldSource="TO_YEAR_LEVEL" required="True" caption="TO YEAR LEVEL" wizardCaption="TO YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" PathID="CONTRIBUTIONTO_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="PER_SUBJECT_FLAG" fieldSource="PER_SUBJECT_FLAG" required="True" caption="PER SUBJECT FLAG" wizardCaption="PER SUBJECT FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" PathID="CONTRIBUTIONPER_SUBJECT_FLAG" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Single" name="DEFAULT_CONTRIBUTION" fieldSource="DEFAULT_CONTRIBUTION" required="True" caption="DEFAULT CONTRIBUTION" wizardCaption="DEFAULT CONTRIBUTION" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" PathID="CONTRIBUTIONDEFAULT_CONTRIBUTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Single" name="DISCOUNT_AMOUNT" fieldSource="DISCOUNT_AMOUNT" required="True" caption="DISCOUNT AMOUNT" wizardCaption="DISCOUNT AMOUNT" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" PathID="CONTRIBUTIONDISCOUNT_AMOUNT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="CONTRIBUTIONLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="CONTRIBUTIONLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="18" urlType="Relative" enableValidation="False" isDefault="False" name="Buttoncancel" PathID="CONTRIBUTIONButtoncancel" operation="Cancel" returnPage="CONTRIBUTION_list.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="CATEGORY" PathID="CONTRIBUTIONCATEGORY" visible="Yes" fieldSource="CATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="CATEGORY_CODE" parameterSource="CATEGORY_CODE" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="22" conditionType="Parameter" useIsNull="False" field="SCHOOL_TYPE_CODE" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SCHOOL_TYPE_CODE"/>
				<TableParameter id="23" conditionType="Parameter" useIsNull="False" field="CAMPUS_CODE" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="CAMPUS_CODE"/>
				<TableParameter id="24" conditionType="Parameter" useIsNull="False" field="FROM_YEAR_LEVEL" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="FROM_YEAR_LEVEL"/>
				<TableParameter id="25" conditionType="Parameter" useIsNull="False" field="TO_YEAR_LEVEL" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="TO_YEAR_LEVEL"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="21" tableName="CONTRIBUTION" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
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
		<IncludePage id="16" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="17" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="Link1" hrefSource="CONTRIBUTION_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="CONTRIBUTION_maint.aspx" forShow="True" url="CONTRIBUTION_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="CONTRIBUTION_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="CONTRIBUTION_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
