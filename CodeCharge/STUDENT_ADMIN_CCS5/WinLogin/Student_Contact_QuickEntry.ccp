<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\WinLogin" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="QuickEnterForm" dataSource="STUDENT_COMMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT COMMENT " wizardFormMethod="post" PathID="QuickEnterForm" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" removeParameters="STUDENT_ID" customInsertType="SQL" customInsert="insert into STUDENT_COMMENT ([COMMENT_ID],[STUDENT_ID],[COMMENT],[LAST_ALTERED_BY],[LAST_ALTERED_DATE],[ACTIVE_STATUS],[COMMENT_TYPE]) 
select (select (max(COMMENT_ID+1)) from STUDENT_COMMENT) , {STUDENT_ID},'{COMMENT}',UPPER('{LAST_ALTERED_BY}'), getdate(),'A','{COMMENT_TYPE}'" parameterTypeListName="ParameterTypeList" activeCollection="ISQLParameters" visible="Dynamic" features="(assigned)">
			<Components>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="True" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="QuickEnterFormButton_Insert">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="33"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT_TYPE" fieldSource="COMMENT_TYPE" required="True" caption="HOW?" wizardCaption="COMMENT TYPE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormCOMMENT_TYPE" sourceType="ListOfValues" html="True" dataSource="CONTACT_PHONE;&lt;b&gt;T&lt;/b&gt;elephone;CONTACT_EMAIL;&lt;b&gt;E&lt;/b&gt;mail;CONTACT_POST;&lt;b&gt;P&lt;/b&gt;aper/Post;CONTACT_VISIT;&lt;b&gt;V&lt;/b&gt;isit to/by Student" _valueOfList="CONTACT_VISIT" _nameOfList="&lt;b&gt;V&lt;/b&gt;isit to/by Student">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</RadioButton>
				<TextArea id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT" fieldSource="COMMENT" required="True" caption="WHY?" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormCOMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Hidden id="10" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormSTUDENT_ID" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="11" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormLAST_ALTERED_BY" defaultValue="&quot;eaffleck&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Button id="6" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="QuickEnterFormButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="text_Who" PathID="QuickEnterFormtext_Who" required="True" caption="WHO?">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="22" fieldSourceType="CodeExpression" dataType="Text" html="False" name="Label1" PathID="QuickEnterFormLabel1" defaultValue="&quot;unknown&quot;" fieldSource="System.Web.HttpContext.Current.User.Identity.Name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="23" fieldSourceType="CodeExpression" dataType="Text" name="Hidden_STAFFID" PathID="QuickEnterFormHidden_STAFFID" fieldSource="System.Web.HttpContext.Current.User.Identity.Name" defaultValue="&quot;unknown&quot;" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="20" name="text_Who" sourceType="URL" sourceName="STUDENT_ID"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="7" conditionType="Parameter" useIsNull="False" field="COMMENT_ID" parameterSource="COMMENT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters>
				<SQLParameter id="29" variable="COMMENT" parameterType="Control" dataType="Text" parameterSource="COMMENT"/>
				<SQLParameter id="30" variable="STUDENT_ID" parameterType="Control" dataType="Text" parameterSource="STUDENT_ID"/>
				<SQLParameter id="31" variable="LAST_ALTERED_BY" parameterType="Control" dataType="Text" parameterSource="LAST_ALTERED_BY"/>
				<SQLParameter id="32" variable="COMMENT_TYPE" parameterType="Control" defaultValue="&quot;REGULAR&quot;" dataType="Text" parameterSource="COMMENT_TYPE"/>
			</ISQLParameters>
			<IFormElements>
				<CustomParameter id="24" field="COMMENT_TYPE" dataType="Text" parameterType="Control" parameterSource="COMMENT_TYPE"/>
				<CustomParameter id="25" field="COMMENT" dataType="Text" parameterType="Control" parameterSource="COMMENT"/>
				<CustomParameter id="26" field="STUDENT_ID" dataType="Float" parameterType="Control" parameterSource="STUDENT_ID"/>
				<CustomParameter id="27" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="LAST_ALTERED_BY"/>
				<CustomParameter id="28" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" parameterSource="LAST_ALTERED_DATE"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features>
				<UpdateDB id="34" enabled="True" name="UpdateDB1_insertCommentQuickEntry" category="Ajax" featureNameChanged="No" connection="connDECVPRODSQL2005" operation="Insert" parameterTypeListName="ParameterTypeList" activeCollection="ISQLParameters" customInsert="insert into STUDENT_COMMENT ([COMMENT_ID],[STUDENT_ID],[COMMENT],[LAST_ALTERED_BY],[LAST_ALTERED_DATE],[ACTIVE_STATUS],[COMMENT_TYPE]) 
select (select (max(COMMENT_ID+1)) from STUDENT_COMMENT) , {STUDENT_ID},'{COMMENT}',UPPER('{LAST_ALTERED_BY}'), getdate(),'A','{COMMENT_TYPE}'" customInsertType="SQL" ccsIdsOnly="False" start="QuickEnterForm.onsubmit;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="39" name="QuickEnterForm.onsubmit" relProperty="start">
							<Items>
								<ControlPointItem id="40" name="Student_Contact_QuickEntry" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="41" name="QuickEnterForm" ccpId="4" type="Record" isFeature="False" PathID="QuickEnterForm"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<ISPParameters/>
					<ISQLParameters>
						<SQLParameter id="35" variable="COMMENT" parameterType="Control" dataType="Text" parameterSource="COMMENT"/>
						<SQLParameter id="36" variable="STUDENT_ID" parameterType="Control" dataType="Text" parameterSource="STUDENT_ID"/>
						<SQLParameter id="37" variable="LAST_ALTERED_BY" parameterType="Control" dataType="Text" parameterSource="LAST_ALTERED_BY"/>
						<SQLParameter id="38" variable="COMMENT_TYPE" parameterType="Control" defaultValue="&quot;CONTACT_PHONE&quot;" dataType="Text" parameterSource="COMMENT_TYPE"/>
					</ISQLParameters>
					<IFormElements/>
					<USPParameters/>
					<USQLParameters/>
					<UConditions/>
					<UFormElements/>
					<DSPParameters/>
					<DSQLParameters/>
					<DConditions/>
					<Features/>
				</UpdateDB>
			</Features>
			<PKFields/>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Contact_QuickEntry.aspx" forShow="True" url="Student_Contact_QuickEntry.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Contact_QuickEntry.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Contact_QuickEntryDataProvider.vb" path="..\App_Code\.\WinLogin" forShow="False" comment="'" codePage="windows-1252" internal_getpath="C:\Program Files\CodeChargeStudio4\Projects\svn_STUDENT_ADMIN_codecharge\WinLogin\Student_Contact_QuickEntryDataProvider.vb"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="17"/>
				<Action actionName="Set Focus" actionCategory="General" id="15" form="QuickEnterForm" name="text_Who"/>
			</Actions>
		</Event>
	</Events>
</Page>
