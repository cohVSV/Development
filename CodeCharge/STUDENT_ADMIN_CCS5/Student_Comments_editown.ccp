<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0">
	<Components>
		<Link id="2" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_BacktoPastoralList" PathID="Link_BacktoPastoralList" hrefSource="PastoralTeacher_StudentList.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="5" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="EditComments" dataSource="STUDENT_COMMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT COMMENT " wizardFormMethod="post" PathID="EditComments" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" returnPage="Student_Comments_maintain.ccp" activeCollection="TableParameters">
			<Components>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="EditCommentsButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="EditCommentsButton_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="8" message="Delete Comment? \n(this cannot be recovered)"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="9" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="EditCommentsButton_Cancel" returnPage="Student_Comments_maintain.ccp" removeParameters="COMMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextArea id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT" fieldSource="COMMENT" required="True" caption="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="EditCommentsCOMMENT">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="21" name="COMMENT" sourceType="Expression" sourceName="rtrim(item.COMMENT.GetFormattedValue())"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextArea>
				<Hidden id="12" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditCommentshidden_LAST_ALTERED_BY" defaultValue="&quot;unknown&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="13" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditCommentshidden_LAST_ALTERED_DATE" format="yyyy-mm-dd H:nn" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="14" fieldSourceType="DBColumn" dataType="Text" name="ACTIVE_STATUS" fieldSource="ACTIVE_STATUS" required="True" caption="ACTIVE STATUS" wizardCaption="ACTIVE STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditCommentsACTIVE_STATUS" defaultValue="&quot;A&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="15" fieldSourceType="DBColumn" dataType="Text" name="COMMENT_TYPE" fieldSource="COMMENT_TYPE" required="False" caption="COMMENT TYPE" wizardCaption="COMMENT TYPE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditCommentsCOMMENT_TYPE" defaultValue="&quot;REGULAR&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="16" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditCommentsSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSTUDENT_ID" PathID="EditCommentslblSTUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblCommentType" PathID="EditCommentslblCommentType" defaultValue="&quot;SPECIAL COMMENT TYPE&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="26" visible="No" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="lbSpecialCommentType" wizardEmptyCaption="Select Value" PathID="EditCommentslbSpecialCommentType" dataSource="0;No change to comment type;REGULAR;Remove Alert/ Make Regular comment;ALERT;Alert - general alert;RESTRICTED;Restricted Access / Court Order;WELLBEING;Wellbeing Comment" defaultValue="&quot;0&quot;" required="True" caption="Special Comment Type" _valueOfList="0" _nameOfList="No change to comment type">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="30" name="tmpCommentType" type="Text" initialValue="&quot;0&quot;"/>
								<Action actionName="Save Control Value" actionCategory="General" id="29" name="COMMENT_TYPE" sourceType="Variable" sourceName="tmpCommentType"/>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="28" name="lbSpecialCommentType" sourceType="Variable" sourceName="tmpCommentType"/>
							</Actions>
						</Event>
					</Events>
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
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring.toupper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="Custom Code" actionCategory="General" id="31"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="27"/>
					</Actions>
				</Event>
				<Event name="OnSubmit" type="Client">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="32"/>
</Actions>
</Event>
</Events>
			<TableParameters>
				<TableParameter id="10" conditionType="Parameter" useIsNull="False" field="COMMENT_ID" parameterSource="COMMENT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="23" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="22" tableName="STUDENT_COMMENT" posLeft="10" posTop="10" posWidth="160" posHeight="168"/>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Comments_editown.aspx" forShow="True" url="Student_Comments_editown.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Comments_editown.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Comments_editownDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
