<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Assignment_maint" actionPage="ASSIGNMENT_maint" errorSummator="Error" wizardFormMethod="post" connection="connDECVPRODSQL2005" dataSource="ASSIGNMENT" returnPage="ASSIGNMENT_list.ccp" customUpdateType="Table" activeCollection="IFormElements" customUpdate="ASSIGNMENT" customInsertType="Table" activeTableType="ASSIGNMENT" customInsert="ASSIGNMENT" removeParameters="ASSIGNMENT_ID" PathID="Assignment_maint">
			<Components>
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubjectID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubjectName">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="12" name="tmpSubjectID" type="Float" initialValue="0"/>
								<Action actionName="Retrieve Value for Variable" actionCategory="General" id="18" name="tmpSubjectID" sourceType="URL" sourceName="SUBJECT_ID"/>
								<Action actionName="DLookup" actionCategory="Database" id="19" typeOfTarget="Control" expression="&quot;SUBJECT_TITLE&quot;" domain="&quot;SUBJECT&quot;" criteria="&quot;SUBJECT_ID = &quot; &amp; tmpSubjectID.ToString" connection="connDECVPRODSQL2005" dataType="Text" target="lblSubjectName"/>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="20" name="lblSubjectID" sourceType="Variable" sourceName="tmpSubjectID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="txtASSIGNMENT_ID" caption="Assignment ID" required="True" fieldSource="ASSIGNMENT_ID" PathID="Assignment_mainttxtASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="txtASSIGNMENT_DESCRIPTION" caption="Assignment Description" fieldSource="DESCRIPTION" PathID="Assignment_mainttxtASSIGNMENT_DESCRIPTION">
					<Components/>
					<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="39"/>
</Actions>
</Event>
</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="23" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="radioSTATUS" caption="Status" fieldSource="STATUS" connection="connDECVPRODSQL2005" _valueOfList="No" _nameOfList="Inactive" dataSource="Yes;Active;No;Inactive" defaultValue="&quot;Yes&quot;" required="True" PathID="Assignment_maintradioSTATUS">
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
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="7" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="Assignment_maintButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="8" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Assignment_maintButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="9" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Assignment_maintButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="13" fieldSourceType="DBColumn" dataType="Text" name="hidden_SUBJECT_ID" fieldSource="SUBJECT_ID" PathID="Assignment_mainthidden_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="16" fieldSourceType="CodeExpression" dataType="Text" name="hidden_LAST_ALTERED_BY" fieldSource="DBUtility.UserId.ToString()" PathID="Assignment_mainthidden_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="17" fieldSourceType="CodeExpression" dataType="Date" name="hidden_LAST_ALTERED_DATE" defaultValue="CurrentDateTime" PathID="Assignment_mainthidden_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="30" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="SUBJECT_ID"/>
				<TableParameter id="31" conditionType="Parameter" useIsNull="False" field="ASSIGNMENT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ASSIGNMENT_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="29" tableName="ASSIGNMENT" posLeft="10" posTop="10" posWidth="160" posHeight="168"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="33" field="ASSIGNMENT_ID" dataType="Integer" parameterType="Control" parameterSource="txtASSIGNMENT_ID" omitIfEmpty="True"/>
				<CustomParameter id="34" field="DESCRIPTION" dataType="Text" parameterType="Control" parameterSource="txtASSIGNMENT_DESCRIPTION" omitIfEmpty="True"/>
				<CustomParameter id="35" field="STATUS" dataType="Boolean" parameterType="Control" parameterSource="radioSTATUS" DBFormat="1;0" format="Yes;No" omitIfEmpty="True"/>
				<CustomParameter id="36" field="SUBJECT_ID" dataType="Text" parameterType="URL" parameterSource="SUBJECT_ID" omitIfEmpty="True"/>
				<CustomParameter id="37" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_LAST_ALTERED_BY"/>
				<CustomParameter id="38" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_LAST_ALTERED_DATE"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="25" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="hidden_SUBJECT_ID"/>
				<TableParameter id="26" conditionType="Parameter" useIsNull="False" field="ASSIGNMENT_ID" dataType="Integer" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="txtASSIGNMENT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="21" field="ASSIGNMENT_ID" dataType="Integer" parameterType="Control" parameterSource="txtASSIGNMENT_ID" omitIfEmpty="True"/>
				<CustomParameter id="22" field="DESCRIPTION" dataType="Text" parameterType="Control" parameterSource="txtASSIGNMENT_DESCRIPTION" omitIfEmpty="True"/>
				<CustomParameter id="24" field="STATUS" dataType="Boolean" parameterType="Control" parameterSource="radioSTATUS" DBFormat="1;0" format="Yes;No" omitIfEmpty="True"/>
				<CustomParameter id="27" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_LAST_ALTERED_BY"/>
				<CustomParameter id="28" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" omitIfEmpty="True" parameterSource="hidden_LAST_ALTERED_DATE"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<Link id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="ASSIGNMENT_list.ccp" wizardUseTemplateBlock="False" removeParameters="ASSIGNMENT_ID" PathID="Link1">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="ASSIGNMENT_maint.aspx" forShow="True" url="ASSIGNMENT_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="ASSIGNMENT_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="ASSIGNMENT_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
