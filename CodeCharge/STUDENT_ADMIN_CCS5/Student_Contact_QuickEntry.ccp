<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="QuickEnterForm" dataSource="STUDENT_COMMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT COMMENT " wizardFormMethod="post" PathID="QuickEnterForm" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" removeParameters="STUDENT_ID">
			<Components>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="True" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="QuickEnterFormButton_Insert">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="16"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT_TYPE" fieldSource="COMMENT_TYPE" required="False" caption="COMMENT TYPE" wizardCaption="COMMENT TYPE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormCOMMENT_TYPE" sourceType="ListOfValues" html="True" dataSource="CONTACT_PHONE;&lt;b&gt;T&lt;/b&gt;elephone;CONTACT_EMAIL;&lt;b&gt;E&lt;/b&gt;mail;CONTACT_POST;&lt;b&gt;P&lt;/b&gt;aper/Post;CONTACT_VISIT;&lt;b&gt;V&lt;/b&gt;isit to/by Student" _valueOfList="CONTACT_VISIT" _nameOfList="&lt;b&gt;V&lt;/b&gt;isit to/by Student">
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
				<TextArea id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT" fieldSource="COMMENT" required="True" caption="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormCOMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Hidden id="10" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="11" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="12" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="QuickEnterFormLAST_ALTERED_DATE">
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
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="text_Who" PathID="QuickEnterFormtext_Who" required="True">
					<Components/>
					<Events>
						<Event name="OnKeyPress" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="18"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="13" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="20" name="text_Who" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="21" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
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
		<CodeFile id="3" language="VB" name="Student_Contact_QuickEntry.aspx" forShow="True" url="Student_Contact_QuickEntry.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Contact_QuickEntry.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Contact_QuickEntryDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
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
