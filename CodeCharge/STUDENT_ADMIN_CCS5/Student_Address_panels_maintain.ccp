<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<IncludePage id="75" name="Menu_Student_maintain" PathID="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="220" sourceType="Table" urlType="Relative" secured="False" allowInsert="No" allowUpdate="No" allowDelete="No" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="ADDRESS2" dataSource="ADDRESS" errorSummator="Error" wizardCaption="View ADDRESS " wizardFormMethod="post" PathID="ADDRESS2" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" returnPage="Student_Address_panels_maintain.ccp" removeParameters="editmode" activeCollection="TableParameters">
			<Components>
				<Label id="221" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDRESSEE" fieldSource="ADDRESSEE" required="True" caption="EE" wizardCaption="EE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="222" fieldSourceType="DBColumn" dataType="Text" html="False" name="AGENT" fieldSource="AGENT" required="False" caption="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="223" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR1" fieldSource="ADDR1" required="False" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="224" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="225" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="True" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="226" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_A" fieldSource="PHONE_A" required="False" caption="PHONE A" wizardCaption="PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="227" fieldSourceType="DBColumn" dataType="Text" html="False" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="228" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2EMAIL_ADDRESS" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="EMAIL_ADDRESS">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="324"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="229" sourceType="Expression" name="subject" source="&quot;&lt;insert subject&gt;&quot;" old_temp_id="112"/>
					</LinkParameters>
				</Link>
				<Link id="230" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" required="False" caption="EMAIL ADDRESS2" wizardCaption="EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2EMAIL_ADDRESS2" visible="No" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="231" sourceType="Expression" name="subject" source="&quot;&lt;insert subject&gt;&quot;" old_temp_id="114"/>
					</LinkParameters>
				</Link>
				<Label id="232" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="233" fieldSourceType="DBColumn" dataType="Text" html="False" name="STATE" fieldSource="STATE" required="False" caption="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="234" fieldSourceType="DBColumn" dataType="Text" html="False" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="235" fieldSourceType="DBColumn" dataType="Text" html="False" name="COUNTRY" fieldSource="COUNTRY" required="True" caption="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="236" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_B" fieldSource="PHONE_B" required="False" caption="PHONE B" wizardCaption="PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="237" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS2LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="307" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_EditOrigSAC" PathID="ADDRESS2Link_EditOrigSAC" wizardUseTemplateBlock="False" hrefSource="Student_Address_panels_maintain.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="308" sourceType="Expression" name="editmode" source="&quot;original&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="345" fieldSourceType="DBColumn" dataType="Integer" html="False" name="lblAddressID" PathID="ADDRESS2lblAddressID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="465" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer1" PathID="ADDRESS2Link_carer1" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="238" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="Expression" orderNumber="1" old_temp_id="123" parameterSource="pageoriginal_address_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="321" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
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
		<Record id="241" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="EditAddress2" dataSource="ADDRESS" errorSummator="Error" wizardCaption="Add/Edit ADDRESS " wizardFormMethod="post" PathID="EditAddress2" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" visible="Dynamic" returnPage="Student_Address_panels_maintain.ccp" removeParameters="editmode" activeCollection="DSQLParameters" customInsertType="Procedure" parameterTypeListName="ParameterTypeList" customInsert="spu_UpdateStudentAddress_Originalpanel;1" customUpdateType="Procedure" customUpdate="spu_UpdateStudentAddress_Originalpanel;1" customDeleteType="SQL" customDelete="update STUDENT set orig_resid_address_id = NULL where STUDENT_ID = {urlSTUDENT_ID} and orig_resid_address_id = {hidADDRESS_ID}" activeTableType="customDelete" generateDiv="False">
			<Components>
				<Button id="242" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="EditAddress2Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="243" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="EditAddress2Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="245" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="EditAddress2Button_Cancel" removeParameters="editmode">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="246" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDRESSEE" fieldSource="ADDRESSEE" required="False" caption="ADDRESSEE" wizardCaption="EE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="247" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="AGENT" fieldSource="AGENT" required="False" caption="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="248" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR1" fieldSource="ADDR1" required="False" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="249" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="250" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="False" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="251" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="252" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_A" fieldSource="PHONE_A" required="False" caption="PHONE A" wizardCaption="PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="253" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="254" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="255" visible="No" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" required="False" caption="EMAIL ADDRESS2" wizardCaption="EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="256" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="257" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="258" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STATE" fieldSource="STATE" required="False" caption="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="259" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COUNTRY" fieldSource="COUNTRY" required="False" caption="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="260" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_B" fieldSource="PHONE_B" required="False" caption="PHONE B" wizardCaption="PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress2PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="346" fieldSourceType="DBColumn" dataType="Integer" html="False" name="lblAddressID" PathID="EditAddress2lblAddressID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="402" fieldSourceType="DBColumn" dataType="Text" name="hidden_ADDRESS_ID" PathID="EditAddress2hidden_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="466" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer1" PathID="EditAddress2Link_carer1" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="467" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer2" PathID="EditAddress2Link_carer2" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="244" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="EditAddress2Button_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="468" message="This will Remove this address from this Student.\n\n A New Address may be added if needed."/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="359"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="403" name="hidden_ADDRESS_ID" sourceType="Variable" sourceName="pageoriginal_address_id"/>
						<Action actionName="Custom Code" actionCategory="General" id="362"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="449"/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="450" name="ADDRESSEE" errorMessage="The value in field ADDRESSEE is required."/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="451" name="SUBURB_TOWN" errorMessage="The value in field EMAIL SUBURB / TOWN is required."/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="452" name="COUNTRY" errorMessage="The value in field COUNTRY is required"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="261" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="Expression" orderNumber="1" old_temp_id="102" parameterSource="pageoriginal_address_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="322" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key431" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key432" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key433" parameterName="@this_ADDRESS_ID" parameterSource="hidden_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key434" parameterName="@SCHOOL_ADDRESS_ID" dataType="Int" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="10" defaultValue="0" parameterSource="0"/>
				<SPParameter id="Key435" parameterName="@flag_same_as" parameterSource="0" dataType="Int" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="10" defaultValue="0"/>
				<SPParameter id="Key436" parameterName="@ADDRESSEE" parameterSource="ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key437" parameterName="@AGENT" parameterSource="AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key438" parameterName="@ADDR1" parameterSource="ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key439" parameterName="@ADDR2" parameterSource="ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key440" parameterName="@SUBURB_TOWN" parameterSource="SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key441" parameterName="@POSTCODE" parameterSource="POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key442" parameterName="@STATE" parameterSource="STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key443" parameterName="@COUNTRY" parameterSource="COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key444" parameterName="@PHONE_A" parameterSource="PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key445" parameterName="@PHONE_B" parameterSource="PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key446" parameterName="@FAX" parameterSource="FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key447" parameterName="@EMAIL_ADDRESS" parameterSource="EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key448" parameterName="@EMAIL_ADDRESS2" parameterSource="EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key449" parameterName="@LAST_ALTERED_BY" parameterSource="UserID" dataType="Char" parameterType="Session" dataSize="8" direction="Input" scale="0" precision="10" defaultValue="&quot;unknown&quot;"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="417" field="ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="ADDRESSEE"/>
				<CustomParameter id="418" field="AGENT" dataType="Text" parameterType="Control" parameterSource="AGENT"/>
				<CustomParameter id="419" field="ADDR1" dataType="Text" parameterType="Control" parameterSource="ADDR1"/>
				<CustomParameter id="420" field="ADDR2" dataType="Text" parameterType="Control" parameterSource="ADDR2"/>
				<CustomParameter id="421" field="SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="SUBURB_TOWN"/>
				<CustomParameter id="422" field="POSTCODE" dataType="Text" parameterType="Control" parameterSource="POSTCODE"/>
				<CustomParameter id="423" field="PHONE_A" dataType="Text" parameterType="Control" parameterSource="PHONE_A"/>
				<CustomParameter id="424" field="FAX" dataType="Text" parameterType="Control" parameterSource="FAX"/>
				<CustomParameter id="425" field="EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS"/>
				<CustomParameter id="426" field="EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS2"/>
				<CustomParameter id="427" field="STATE" dataType="Text" parameterType="Control" parameterSource="STATE"/>
				<CustomParameter id="428" field="COUNTRY" dataType="Text" parameterType="Control" parameterSource="COUNTRY"/>
				<CustomParameter id="429" field="PHONE_B" dataType="Text" parameterType="Control" parameterSource="PHONE_B"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key444" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key445" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key446" parameterName="@this_ADDRESS_ID" parameterSource="hidden_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key447" parameterName="@SCHOOL_ADDRESS_ID" dataType="Int" dataSize="0" direction="Input" scale="0" precision="10" parameterType="Expression" parameterSource="0"/>
				<SPParameter id="Key448" parameterName="@flag_same_as" parameterSource="0" dataType="Int" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="10" defaultValue="0"/>
				<SPParameter id="Key449" parameterName="@ADDRESSEE" parameterSource="ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key450" parameterName="@AGENT" parameterSource="AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key451" parameterName="@ADDR1" parameterSource="ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key452" parameterName="@ADDR2" parameterSource="ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key453" parameterName="@SUBURB_TOWN" parameterSource="SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key454" parameterName="@POSTCODE" parameterSource="POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key455" parameterName="@STATE" parameterSource="STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key456" parameterName="@COUNTRY" parameterSource="COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key457" parameterName="@PHONE_A" parameterSource="PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key458" parameterName="@PHONE_B" parameterSource="PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key459" parameterName="@FAX" parameterSource="FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key460" parameterName="@EMAIL_ADDRESS" parameterSource="EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key461" parameterName="@EMAIL_ADDRESS2" parameterSource="EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key462" parameterName="@LAST_ALTERED_BY" parameterSource="UserID" dataType="Char" parameterType="Session" dataSize="8" direction="Input" scale="0" precision="10" defaultValue="&quot;unknown&quot;"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="430" field="ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="ADDRESSEE"/>
				<CustomParameter id="431" field="AGENT" dataType="Text" parameterType="Control" parameterSource="AGENT"/>
				<CustomParameter id="432" field="ADDR1" dataType="Text" parameterType="Control" parameterSource="ADDR1"/>
				<CustomParameter id="433" field="ADDR2" dataType="Text" parameterType="Control" parameterSource="ADDR2"/>
				<CustomParameter id="434" field="SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="SUBURB_TOWN"/>
				<CustomParameter id="435" field="POSTCODE" dataType="Text" parameterType="Control" parameterSource="POSTCODE"/>
				<CustomParameter id="436" field="PHONE_A" dataType="Text" parameterType="Control" parameterSource="PHONE_A"/>
				<CustomParameter id="437" field="FAX" dataType="Text" parameterType="Control" parameterSource="FAX"/>
				<CustomParameter id="438" field="EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS"/>
				<CustomParameter id="439" field="EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS2"/>
				<CustomParameter id="440" field="STATE" dataType="Text" parameterType="Control" parameterSource="STATE"/>
				<CustomParameter id="441" field="COUNTRY" dataType="Text" parameterType="Control" parameterSource="COUNTRY"/>
				<CustomParameter id="442" field="PHONE_B" dataType="Text" parameterType="Control" parameterSource="PHONE_B"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters>
				<SQLParameter id="469" variable="urlSTUDENT_ID" parameterType="URL" dataType="Text" parameterSource="STUDENT_ID"/>
				<SQLParameter id="470" variable="hidADDRESS_ID" parameterType="Control" dataType="Text" parameterSource="hidden_ADDRESS_ID"/>
			</DSQLParameters>
			<DConditions>
				<TableParameter id="471" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>

			</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features>
			</Features>
			<PKFields/>
		</Record>
		<Record id="31" sourceType="Table" urlType="Relative" secured="False" allowInsert="No" allowUpdate="No" allowDelete="No" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="ADDRESS" dataSource="ADDRESS" errorSummator="Error" wizardCaption="View ADDRESS " wizardFormMethod="post" PathID="ADDRESS" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" returnPage="Student_Address_panels_maintain.ccp" removeParameters="editmode;flagattendingschool" activeCollection="TableParameters">
			<Components>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDRESSEE" fieldSource="ADDRESSEE" required="True" caption="EE" wizardCaption="EE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" name="AGENT" fieldSource="AGENT" required="False" caption="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSAGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR1" fieldSource="ADDR1" required="False" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="37" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="38" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="True" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSSUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="42" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_A" fieldSource="PHONE_A" required="False" caption="PHONE A" wizardCaption="PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSPHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSFAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="45" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSEMAIL_ADDRESS" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="EMAIL_ADDRESS">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="325"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="135" sourceType="Expression" name="subject" source="&quot;&lt;insert subject&gt;&quot;" old_temp_id="112"/>
					</LinkParameters>
				</Link>
				<Link id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" required="False" caption="EMAIL ADDRESS2" wizardCaption="EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSEMAIL_ADDRESS2" visible="No" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="137" sourceType="Expression" name="subject" source="&quot;&lt;insert subject&gt;&quot;" old_temp_id="114"/>
					</LinkParameters>
				</Link>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="STATE" fieldSource="STATE" required="False" caption="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSSTATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="False" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSPOSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" name="COUNTRY" fieldSource="COUNTRY" required="True" caption="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSCOUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_B" fieldSource="PHONE_B" required="False" caption="PHONE B" wizardCaption="PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSPHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="48" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESSLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="303" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_EditPostal" PathID="ADDRESSLink_EditPostal" wizardUseTemplateBlock="False" hrefSource="Student_Address_panels_maintain.ccp" removeParameters="editmode">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="304" sourceType="Expression" name="editmode" source="&quot;postal&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="315" fieldSourceType="DBColumn" dataType="Integer" html="False" name="lblAddressID" PathID="ADDRESSlblAddressID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="461" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer1" PathID="ADDRESSLink_carer1" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="476" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblEmailType" PathID="ADDRESSlblEmailType" defaultValue="&quot;STUDENT&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="477"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="309" action="Hide" conditionType="Parameter" dataType="Text" componentName="ADDRESS" condition="Equal" sourceType1="URL" name1="editmode" name2="&quot;postal&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="146" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="Expression" orderNumber="1" old_temp_id="123" parameterSource="pagepostal_address_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="313" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
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
		<Record id="10" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="EditAddress" dataSource="ADDRESS" errorSummator="Error" wizardCaption="Add/Edit ADDRESS " wizardFormMethod="post" PathID="EditAddress" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" visible="Dynamic" returnPage="Student_Address_panels_maintain.ccp" removeParameters="editmode;flagattendingschool" activeCollection="USPParameters" customInsertType="Procedure" customInsert="spu_UpdateStudentAddress_Postalpanel;1" customUpdateType="Procedure" customUpdate="spu_UpdateStudentAddress_Postalpanel;1" parameterTypeListName="ParameterTypeList" generateDiv="False">
			<Components>
				<Button id="11" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="EditAddressButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="12" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="EditAddressButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="13" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="EditAddressButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="14" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="EditAddressButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDRESSEE" fieldSource="ADDRESSEE" required="False" caption="ADDRESSEE" wizardCaption="EE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="AGENT" fieldSource="AGENT" required="False" caption="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressAGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR1" fieldSource="ADDR1" required="False" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="False" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressSUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressPOSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_A" fieldSource="PHONE_A" required="False" caption="PHONE A" wizardCaption="PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressPHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressFAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressEMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="28" visible="No" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" required="False" caption="EMAIL ADDRESS2" wizardCaption="EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressEMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STATE" fieldSource="STATE" required="False" caption="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressSTATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COUNTRY" fieldSource="COUNTRY" required="False" caption="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressCOUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_B" fieldSource="PHONE_B" required="False" caption="PHONE B" wizardCaption="PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddressPHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="316" fieldSourceType="DBColumn" dataType="Integer" html="False" name="lblAddressID" PathID="EditAddresslblAddressID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="323" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="cbox_same_as_school" PathID="EditAddresscbox_same_as_school" checkedValue="1" uncheckedValue="0" defaultValue="Unchecked">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="343"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Hidden id="327" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="hidden_SCHOOL_ADDRESS_ID" PathID="EditAddresshidden_SCHOOL_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="455" fieldSourceType="DBColumn" dataType="Integer" name="hidden_flag_same_as" PathID="EditAddresshidden_flag_same_as" defaultValue="0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="458" fieldSourceType="DBColumn" dataType="Text" name="Hidden_AddressHash" PathID="EditAddressHidden_AddressHash">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="459"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="462" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer1" PathID="EditAddressLink_carer1" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Hidden id="332" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="hidden_ADDRESS_ID" PathID="EditAddresshidden_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="478" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblChangeAttendingSchool" PathID="EditAddresslblChangeAttendingSchool" defaultValue="&quot;After Change to School:&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="481" action="Hide" conditionType="Parameter" dataType="Text" componentName="lblChangeAttendingSchool" condition="Equal" name1="flagattendingschool" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="482" fieldSourceType="DBColumn" dataType="Text" name="hidden_CURRENT_ADDRESS_ID" PathID="EditAddresshidden_CURRENT_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="342" name="hidden_ADDRESS_ID" sourceType="Variable" sourceName="pagepostal_address_id"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="483" name="hidden_CURRENT_ADDRESS_ID" sourceType="Variable" sourceName="pagecurrent_address_id"/>
						<Action actionName="Custom Code" actionCategory="General" id="328"/>
					</Actions>
				</Event>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="339"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="350"/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="347" name="ADDRESSEE" errorMessage="The value in field ADDRESSEE is required"/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="348" name="SUBURB_TOWN" errorMessage="The value in field SUBURB / TOWN is required"/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="349" name="COUNTRY" errorMessage="The value in field COUNTRY is required"/>
						<Action actionName="Custom Code" actionCategory="General" id="351"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="457"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="171" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="Expression" orderNumber="1" old_temp_id="102" parameterSource="pagepostal_address_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="314" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key377" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key378" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key379" parameterName="@this_ADDRESS_ID" parameterSource="hidden_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key380" parameterName="@SCHOOL_ADDRESS_ID" parameterSource="hidden_SCHOOL_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key381" parameterName="@flag_same_as" parameterSource="cbox_same_as_school" dataType="Int" parameterType="Control" dataSize="3" direction="Input" scale="0" precision="10" defaultValue="0"/>
				<SPParameter id="Key382" parameterName="@ADDRESSEE" parameterSource="ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key383" parameterName="@AGENT" parameterSource="AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key384" parameterName="@ADDR1" parameterSource="ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key385" parameterName="@ADDR2" parameterSource="ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key386" parameterName="@SUBURB_TOWN" parameterSource="SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key387" parameterName="@POSTCODE" parameterSource="POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key388" parameterName="@STATE" parameterSource="STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key389" parameterName="@COUNTRY" parameterSource="COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key390" parameterName="@PHONE_A" parameterSource="PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key391" parameterName="@PHONE_B" parameterSource="PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key392" parameterName="@FAX" parameterSource="FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key393" parameterName="@EMAIL_ADDRESS" parameterSource="EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key394" parameterName="@EMAIL_ADDRESS2" parameterSource="EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key395" parameterName="@LAST_ALTERED_BY" parameterSource="UserID" dataType="Char" parameterType="Session" dataSize="8" direction="Input" scale="0" precision="10" defaultValue="&quot;unknown&quot;"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="363" field="ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="ADDRESSEE"/>
				<CustomParameter id="364" field="AGENT" dataType="Text" parameterType="Control" parameterSource="AGENT"/>
				<CustomParameter id="365" field="ADDR1" dataType="Text" parameterType="Control" parameterSource="ADDR1"/>
				<CustomParameter id="366" field="ADDR2" dataType="Text" parameterType="Control" parameterSource="ADDR2"/>
				<CustomParameter id="367" field="SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="SUBURB_TOWN"/>
				<CustomParameter id="368" field="POSTCODE" dataType="Text" parameterType="Control" parameterSource="POSTCODE"/>
				<CustomParameter id="369" field="PHONE_A" dataType="Text" parameterType="Control" parameterSource="PHONE_A"/>
				<CustomParameter id="370" field="FAX" dataType="Text" parameterType="Control" parameterSource="FAX"/>
				<CustomParameter id="371" field="EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS"/>
				<CustomParameter id="372" field="EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS2"/>
				<CustomParameter id="373" field="STATE" dataType="Text" parameterType="Control" parameterSource="STATE"/>
				<CustomParameter id="374" field="COUNTRY" dataType="Text" parameterType="Control" parameterSource="COUNTRY"/>
				<CustomParameter id="375" field="PHONE_B" dataType="Text" parameterType="Control" parameterSource="PHONE_B"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key454" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key455" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key456" parameterName="@this_ADDRESS_ID" parameterSource="hidden_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key457" parameterName="@SCHOOL_ADDRESS_ID" parameterSource="hidden_SCHOOL_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key458" parameterName="@flag_same_as" parameterSource="hidden_flag_same_as" dataType="Int" parameterType="Control" dataSize="3" direction="Input" scale="0" precision="10" defaultValue="0"/>
				<SPParameter id="Key459" parameterName="@ADDRESSEE" parameterSource="ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key460" parameterName="@AGENT" parameterSource="AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key461" parameterName="@ADDR1" parameterSource="ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key462" parameterName="@ADDR2" parameterSource="ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key463" parameterName="@SUBURB_TOWN" parameterSource="SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key464" parameterName="@POSTCODE" parameterSource="POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key465" parameterName="@STATE" parameterSource="STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key466" parameterName="@COUNTRY" parameterSource="COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key467" parameterName="@PHONE_A" parameterSource="PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key468" parameterName="@PHONE_B" parameterSource="PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key469" parameterName="@FAX" parameterSource="FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key470" parameterName="@EMAIL_ADDRESS" parameterSource="EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key471" parameterName="@EMAIL_ADDRESS2" parameterSource="EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key472" parameterName="@LAST_ALTERED_BY" parameterSource="UserID" dataType="Char" parameterType="Session" dataSize="8" direction="Input" scale="0" precision="10" defaultValue="&quot;unknown&quot;"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="376" field="ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="ADDRESSEE"/>
				<CustomParameter id="377" field="AGENT" dataType="Text" parameterType="Control" parameterSource="AGENT"/>
				<CustomParameter id="378" field="ADDR1" dataType="Text" parameterType="Control" parameterSource="ADDR1"/>
				<CustomParameter id="379" field="ADDR2" dataType="Text" parameterType="Control" parameterSource="ADDR2"/>
				<CustomParameter id="380" field="SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="SUBURB_TOWN"/>
				<CustomParameter id="381" field="POSTCODE" dataType="Text" parameterType="Control" parameterSource="POSTCODE"/>
				<CustomParameter id="382" field="PHONE_A" dataType="Text" parameterType="Control" parameterSource="PHONE_A"/>
				<CustomParameter id="383" field="FAX" dataType="Text" parameterType="Control" parameterSource="FAX"/>
				<CustomParameter id="384" field="EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS"/>
				<CustomParameter id="385" field="EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS2"/>
				<CustomParameter id="386" field="STATE" dataType="Text" parameterType="Control" parameterSource="STATE"/>
				<CustomParameter id="387" field="COUNTRY" dataType="Text" parameterType="Control" parameterSource="COUNTRY"/>
				<CustomParameter id="388" field="PHONE_B" dataType="Text" parameterType="Control" parameterSource="PHONE_B"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features>
			</Features>
			<PKFields/>
		</Record>
		<Record id="195" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="EditAddress1" dataSource="ADDRESS" errorSummator="Error" wizardCaption="Add/Edit ADDRESS " wizardFormMethod="post" PathID="EditAddress1" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" visible="Dynamic" returnPage="Student_Address_panels_maintain.ccp" removeParameters="editmode" activeCollection="USPParameters" customInsertType="Procedure" customInsert="spu_UpdateStudentAddress_Currentpanel;1" parameterTypeListName="ParameterTypeList" customUpdateType="Procedure" customUpdate="spu_UpdateStudentAddress_Currentpanel;1" generateDiv="False">
			<Components>
				<Button id="196" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="EditAddress1Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="197" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="EditAddress1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="198" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="EditAddress1Button_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="199" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="EditAddress1Button_Cancel" removeParameters="editmode">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="200" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDRESSEE" fieldSource="ADDRESSEE" required="False" caption="ADDRESSEE" wizardCaption="EE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="201" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="AGENT" fieldSource="AGENT" required="False" caption="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="202" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR1" fieldSource="ADDR1" required="False" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="203" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="204" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="False" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="205" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="206" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_A" fieldSource="PHONE_A" required="False" caption="PHONE A" wizardCaption="PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="207" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="208" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="209" visible="No" fieldSourceType="DBColumn" dataType="Text" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" required="False" caption="EMAIL ADDRESS2" wizardCaption="EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="210" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="211" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="212" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STATE" fieldSource="STATE" required="False" caption="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="213" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COUNTRY" fieldSource="COUNTRY" required="False" caption="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="214" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PHONE_B" fieldSource="PHONE_B" required="False" caption="PHONE B" wizardCaption="PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="EditAddress1PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="318" fieldSourceType="DBColumn" dataType="Integer" html="False" name="lblAddressID" PathID="EditAddress1lblAddressID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="330" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="cbox_same_as_postal" PathID="EditAddress1cbox_same_as_postal" checkedValue="1" uncheckedValue="0" defaultValue="Unchecked">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="338" eventType="Client"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</CheckBox>
				<Hidden id="335" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="hidden_postal_ADDRESS_ID" PathID="EditAddress1hidden_postal_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="333" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="hidden_ADDRESS_ID" PathID="EditAddress1hidden_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="456" fieldSourceType="DBColumn" dataType="Integer" name="hidden_flag_same_as" PathID="EditAddress1hidden_flag_same_as" defaultValue="0" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="464" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer1" PathID="EditAddress1Link_carer1" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="475" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer2" PathID="EditAddress1Link_carer2" hrefSource="StudentDetails_maintain.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="344" name="hidden_ADDRESS_ID" sourceType="Variable" sourceName="pagecurrent_address_id"/>
						<Action actionName="Custom Code" actionCategory="General" id="331"/>
					</Actions>
				</Event>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="340"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="352"/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="353" name="ADDRESSEE" errorMessage="The value in field ADDRESSEE is required"/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="354" name="SUBURB_TOWN" errorMessage="The value in field SUBURB / TOWN is required"/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="355" name="COUNTRY" errorMessage="The value in field COUNTRY is required"/>
						<Action actionName="Custom Code" actionCategory="General" id="356"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="444"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="215" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="Expression" orderNumber="1" old_temp_id="102" parameterSource="pagecurrent_address_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="320" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key403" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key404" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key405" parameterName="@this_ADDRESS_ID" parameterSource="hidden_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key406" parameterName="@SCHOOL_ADDRESS_ID" parameterSource="hidden_postal_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key407" parameterName="@flag_same_as" parameterSource="cbox_same_as_postal" dataType="Int" parameterType="Control" dataSize="3" direction="Input" scale="0" precision="10" defaultValue="0"/>
				<SPParameter id="Key408" parameterName="@ADDRESSEE" parameterSource="ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key409" parameterName="@AGENT" parameterSource="AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key410" parameterName="@ADDR1" parameterSource="ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key411" parameterName="@ADDR2" parameterSource="ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key412" parameterName="@SUBURB_TOWN" parameterSource="SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key413" parameterName="@POSTCODE" parameterSource="POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key414" parameterName="@STATE" parameterSource="STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key415" parameterName="@COUNTRY" parameterSource="COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key416" parameterName="@PHONE_A" parameterSource="PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key417" parameterName="@PHONE_B" parameterSource="PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key418" parameterName="@FAX" parameterSource="FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key419" parameterName="@EMAIL_ADDRESS" parameterSource="EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key420" parameterName="@EMAIL_ADDRESS2" parameterSource="EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key421" parameterName="@LAST_ALTERED_BY" parameterSource="UserID" dataType="Char" parameterType="Session" dataSize="8" direction="Input" scale="0" precision="10" defaultValue="&quot;unknown&quot;"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="389" field="ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="ADDRESSEE"/>
				<CustomParameter id="390" field="AGENT" dataType="Text" parameterType="Control" parameterSource="AGENT"/>
				<CustomParameter id="391" field="ADDR1" dataType="Text" parameterType="Control" parameterSource="ADDR1"/>
				<CustomParameter id="392" field="ADDR2" dataType="Text" parameterType="Control" parameterSource="ADDR2"/>
				<CustomParameter id="393" field="SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="SUBURB_TOWN"/>
				<CustomParameter id="394" field="POSTCODE" dataType="Text" parameterType="Control" parameterSource="POSTCODE"/>
				<CustomParameter id="395" field="PHONE_A" dataType="Text" parameterType="Control" parameterSource="PHONE_A"/>
				<CustomParameter id="396" field="FAX" dataType="Text" parameterType="Control" parameterSource="FAX"/>
				<CustomParameter id="397" field="EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS"/>
				<CustomParameter id="398" field="EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS2"/>
				<CustomParameter id="399" field="STATE" dataType="Text" parameterType="Control" parameterSource="STATE"/>
				<CustomParameter id="400" field="COUNTRY" dataType="Text" parameterType="Control" parameterSource="COUNTRY"/>
				<CustomParameter id="401" field="PHONE_B" dataType="Text" parameterType="Control" parameterSource="PHONE_B"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key418" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key419" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key420" parameterName="@this_ADDRESS_ID" parameterSource="hidden_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key421" parameterName="@SCHOOL_ADDRESS_ID" parameterSource="hidden_postal_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key422" parameterName="@flag_same_as" parameterSource="hidden_flag_same_as" dataType="Int" parameterType="Control" dataSize="3" direction="Input" scale="0" precision="10" defaultValue="0"/>
				<SPParameter id="Key423" parameterName="@ADDRESSEE" parameterSource="ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key424" parameterName="@AGENT" parameterSource="AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key425" parameterName="@ADDR1" parameterSource="ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key426" parameterName="@ADDR2" parameterSource="ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key427" parameterName="@SUBURB_TOWN" parameterSource="SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key428" parameterName="@POSTCODE" parameterSource="POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key429" parameterName="@STATE" parameterSource="STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key430" parameterName="@COUNTRY" parameterSource="COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key431" parameterName="@PHONE_A" parameterSource="PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key432" parameterName="@PHONE_B" parameterSource="PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key433" parameterName="@FAX" parameterSource="FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key434" parameterName="@EMAIL_ADDRESS" parameterSource="EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key435" parameterName="@EMAIL_ADDRESS2" parameterSource="EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key436" parameterName="@LAST_ALTERED_BY" parameterSource="UserID" dataType="Char" parameterType="Session" dataSize="8" direction="Input" scale="0" precision="10" defaultValue="&quot;unknown&quot;"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="404" field="ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="ADDRESSEE"/>
				<CustomParameter id="405" field="AGENT" dataType="Text" parameterType="Control" parameterSource="AGENT"/>
				<CustomParameter id="406" field="ADDR1" dataType="Text" parameterType="Control" parameterSource="ADDR1"/>
				<CustomParameter id="407" field="ADDR2" dataType="Text" parameterType="Control" parameterSource="ADDR2"/>
				<CustomParameter id="408" field="SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="SUBURB_TOWN"/>
				<CustomParameter id="409" field="POSTCODE" dataType="Text" parameterType="Control" parameterSource="POSTCODE"/>
				<CustomParameter id="410" field="PHONE_A" dataType="Text" parameterType="Control" parameterSource="PHONE_A"/>
				<CustomParameter id="411" field="FAX" dataType="Text" parameterType="Control" parameterSource="FAX"/>
				<CustomParameter id="412" field="EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS"/>
				<CustomParameter id="413" field="EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="EMAIL_ADDRESS2"/>
				<CustomParameter id="414" field="STATE" dataType="Text" parameterType="Control" parameterSource="STATE"/>
				<CustomParameter id="415" field="COUNTRY" dataType="Text" parameterType="Control" parameterSource="COUNTRY"/>
				<CustomParameter id="416" field="PHONE_B" dataType="Text" parameterType="Control" parameterSource="PHONE_B"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features>
			</Features>
			<PKFields/>
		</Record>
		<Record id="174" sourceType="Table" urlType="Relative" secured="False" allowInsert="No" allowUpdate="No" allowDelete="No" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="ADDRESS1" dataSource="ADDRESS" errorSummator="Error" wizardCaption="View ADDRESS " wizardFormMethod="post" PathID="ADDRESS1" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" returnPage="Student_Address_panels_maintain.ccp" removeParameters="editmode" activeCollection="TableParameters">
			<Components>
				<Label id="175" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDRESSEE" fieldSource="ADDRESSEE" required="True" caption="EE" wizardCaption="EE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="176" fieldSourceType="DBColumn" dataType="Text" html="False" name="AGENT" fieldSource="AGENT" required="False" caption="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="177" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR1" fieldSource="ADDR1" required="False" caption="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="178" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR2" fieldSource="ADDR2" required="False" caption="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="179" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" required="True" caption="SUBURB TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="180" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_A" fieldSource="PHONE_A" required="False" caption="PHONE A" wizardCaption="PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="181" fieldSourceType="DBColumn" dataType="Text" html="False" name="FAX" fieldSource="FAX" required="False" caption="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="182" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" required="False" caption="EMAIL ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1EMAIL_ADDRESS" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="EMAIL_ADDRESS">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="326"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="183" sourceType="Expression" name="subject" source="&quot;&lt;insert subject&gt;&quot;" old_temp_id="112"/>
					</LinkParameters>
				</Link>
				<Link id="184" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" required="False" caption="EMAIL ADDRESS2" wizardCaption="EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1EMAIL_ADDRESS2" visible="No" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="185" sourceType="Expression" name="subject" source="&quot;&lt;insert subject&gt;&quot;" old_temp_id="114"/>
					</LinkParameters>
				</Link>
				<Label id="186" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="187" fieldSourceType="DBColumn" dataType="Text" html="False" name="STATE" fieldSource="STATE" required="False" caption="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="188" fieldSourceType="DBColumn" dataType="Text" html="False" name="POSTCODE" fieldSource="POSTCODE" required="False" caption="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="189" fieldSourceType="DBColumn" dataType="Text" html="False" name="COUNTRY" fieldSource="COUNTRY" required="True" caption="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="190" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_B" fieldSource="PHONE_B" required="False" caption="PHONE B" wizardCaption="PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="191" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ADDRESS1LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="305" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_EditCurrent" PathID="ADDRESS1Link_EditCurrent" wizardUseTemplateBlock="False" hrefSource="Student_Address_panels_maintain.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="306" sourceType="Expression" name="editmode" source="&quot;current&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="317" fieldSourceType="DBColumn" dataType="Integer" html="False" name="lblAddressID" PathID="ADDRESS1lblAddressID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="463" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer1" PathID="ADDRESS1Link_carer1" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="474" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_carer2" PathID="ADDRESS1Link_carer2" hrefSource="StudentDetails_maintain.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="192" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="Expression" orderNumber="1" old_temp_id="123" parameterSource="pagecurrent_address_id"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="319" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
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
		<CodeFile id="3" language="VB" name="Student_Address_panels_maintain.aspx" forShow="True" url="Student_Address_panels_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Address_panels_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Address_panels_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="310"/>
			</Actions>
		</Event>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="311"/>
			</Actions>
		</Event>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="460"/>
			</Actions>
		</Event>
	</Events>
</Page>
