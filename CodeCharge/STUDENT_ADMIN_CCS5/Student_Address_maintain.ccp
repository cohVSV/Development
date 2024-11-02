<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="4" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="5" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="viewStudentMaintain_Addre" dataSource="viewStudentMaintain_AddressList" errorSummator="Error" wizardCaption="Add/Edit View Student Maintain Address List " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" activeCollection="USPParameters" customUpdateType="Procedure" parameterTypeListName="ParameterTypeList" customUpdate="spu_UpdateStudentAddress;1" PathID="viewStudentMaintain_Addre" removeParameters="flagattendingschool" pasteActions="pasteActions" visible="Dynamic" features="(assigned)">
			<Components>
				<Label id="123" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblMessage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="62" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update1" operation="Update" wizardCaption="Submit" PathID="viewStudentMaintain_AddreButton_Update1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="63" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel1" operation="Cancel" wizardCaption="Cancel" PathID="viewStudentMaintain_AddreButton_Cancel1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="9" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="112" visible="Yes" fieldSourceType="CodeExpression" dataType="Integer" name="cbox_same_as_school" checkedValue="1" uncheckedValue="0" defaultValue="Unchecked" PathID="viewStudentMaintain_Addrecbox_same_as_school">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="133"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="PostAdd_ADDRESS_ID" fieldSource="PostAdd_ADDRESS_ID" required="False" caption="Post Add ADDRESS ID" wizardCaption="Post Add ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostAdd_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_ADDRESSEE" fieldSource="Postal_ADDRESSEE" required="False" caption="Postal Address ADDRESSEE" wizardCaption="Postal ADDRESSEE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="126" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="PostAdd_ADDRESS_ID_orig" fieldSource="PostAdd_ADDRESS_ID" required="False" caption="Post Add ADDRESS ID" wizardCaption="Post Add ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostAdd_ADDRESS_ID_orig">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_AGENT" fieldSource="Postal_AGENT" required="False" caption="Postal AGENT" wizardCaption="Postal AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_ADDR1" fieldSource="Postal_ADDR1" required="False" caption="Postal ADDR1" wizardCaption="Postal ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_ADDR2" fieldSource="Postal_ADDR2" required="False" caption="Postal ADDR2" wizardCaption="Postal ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_SUBURB_TOWN" fieldSource="Postal_SUBURB_TOWN" required="False" caption="Postal Address SUBURB TOWN" wizardCaption="Postal SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_STATE" fieldSource="Postal_STATE" required="False" caption="Postal STATE" wizardCaption="Postal STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_POSTCODE" fieldSource="Postal_POSTCODE" required="False" caption="Postal POSTCODE" wizardCaption="Postal POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_COUNTRY" fieldSource="Postal_COUNTRY" required="False" caption="Postal Address COUNTRY" wizardCaption="Postal COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_PHONE_A" fieldSource="Postal_PHONE_A" required="False" caption="Postal PHONE 1" wizardCaption="Postal PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_PHONE_B" fieldSource="Postal_PHONE_B" required="False" caption="Postal PHONE 2" wizardCaption="Postal PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_FAX" fieldSource="Postal_FAX" required="False" caption="Postal FAX" wizardCaption="Postal FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_EMAIL_ADDRESS" fieldSource="Postal_EMAIL_ADDRESS" required="False" caption="Postal EMAIL ADDRESS" wizardCaption="Postal EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Postal_EMAIL_ADDRESS2" fieldSource="Postal_EMAIL_ADDRESS2" required="False" caption="Postal EMAIL ADDRESS2" wizardCaption="Postal EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostal_EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_LAST_ALTERED_BY" fieldSource="Postal_LAST_ALTERED_BY" required="True" caption="Postal LAST ALTERED BY" wizardCaption="Postal LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Date" html="False" name="Postal_LAST_ALTERED_DATE" fieldSource="Postal_LAST_ALTERED_DATE" required="True" caption="Postal LAST ALTERED DATE" wizardCaption="Postal LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="113" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="cbox_same_as_postal" checkedValue="1" uncheckedValue="0" defaultValue="Unchecked" PathID="viewStudentMaintain_Addrecbox_same_as_postal">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="125"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Hidden id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="Curr_ADDRESS_ID" fieldSource="Curr_ADDRESS_ID" required="False" caption="Curr ADDRESS ID" wizardCaption="Curr ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_ADDRESSEE" fieldSource="Curr_ADDRESSEE" required="True" caption="Current Address ADDRESSEE" wizardCaption="Curr ADDRESSEE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="127" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="Curr_ADDRESS_ID_orig" fieldSource="Curr_ADDRESS_ID" required="False" caption="Curr ADDRESS ID" wizardCaption="Curr ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_ADDRESS_ID_orig">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_AGENT" fieldSource="Curr_AGENT" required="False" caption="Curr AGENT" wizardCaption="Curr AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_ADDR1" fieldSource="Curr_ADDR1" required="False" caption="Curr ADDR1" wizardCaption="Curr ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_ADDR2" fieldSource="Curr_ADDR2" required="False" caption="Curr ADDR2" wizardCaption="Curr ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_SUBURB_TOWN" fieldSource="Curr_SUBURB_TOWN" required="True" caption="Current Address SUBURB TOWN" wizardCaption="Curr SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_STATE" fieldSource="Curr_STATE" required="False" caption="Curr STATE" wizardCaption="Curr STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="36" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_POSTCODE" fieldSource="Curr_POSTCODE" required="False" caption="Curr POSTCODE" wizardCaption="Curr POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_COUNTRY" fieldSource="Curr_COUNTRY" required="True" caption="Current Address COUNTRY" wizardCaption="Curr COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_PHONE_A" fieldSource="Curr_PHONE_A" required="False" caption="Current Address PHONE 1" wizardCaption="Curr PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_PHONE_B" fieldSource="Curr_PHONE_B" required="False" caption="Curr PHONE 2" wizardCaption="Curr PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_FAX" fieldSource="Curr_FAX" required="False" caption="Curr FAX" wizardCaption="Curr FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_EMAIL_ADDRESS" fieldSource="Curr_EMAIL_ADDRESS" required="False" caption="Curr EMAIL ADDRESS" wizardCaption="Curr EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Curr_EMAIL_ADDRESS2" fieldSource="Curr_EMAIL_ADDRESS2" required="False" caption="Curr EMAIL ADDRESS2" wizardCaption="Curr EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCurr_EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_LAST_ALTERED_BY" fieldSource="Curr_LAST_ALTERED_BY" required="True" caption="Curr LAST ALTERED BY" wizardCaption="Curr LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Date" html="False" name="Curr_LAST_ALTERED_DATE" fieldSource="Curr_LAST_ALTERED_DATE" required="True" caption="Curr LAST ALTERED DATE" wizardCaption="Curr LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="Orig_ADDRESS_ID" fieldSource="Orig_ADDRESS_ID" required="False" caption="Orig ADDRESS ID" wizardCaption="Orig ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_ADDRESSEE" fieldSource="Orig_ADDRESSEE" required="False" caption="Original Address ADDRESSEE" wizardCaption="Orig ADDRESSEE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="128" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="Orig_ADDRESS_ID_orig" fieldSource="Orig_ADDRESS_ID" required="False" caption="Orig ADDRESS ID" wizardCaption="Orig ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_ADDRESS_ID_orig">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_AGENT" fieldSource="Orig_AGENT" required="False" caption="Original Address AGENT" wizardCaption="Orig AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_ADDR1" fieldSource="Orig_ADDR1" required="False" caption="Orig ADDR1" wizardCaption="Orig ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_ADDR2" fieldSource="Orig_ADDR2" required="False" caption="Orig ADDR2" wizardCaption="Orig ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_SUBURB_TOWN" fieldSource="Orig_SUBURB_TOWN" required="False" caption="Original Address SUBURB TOWN" wizardCaption="Orig SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_STATE" fieldSource="Orig_STATE" required="False" caption="Orig STATE" wizardCaption="Orig STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_POSTCODE" fieldSource="Orig_POSTCODE" required="False" caption="Orig POSTCODE" wizardCaption="Orig POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_COUNTRY" fieldSource="Orig_COUNTRY" required="False" caption="Original Address COUNTRY" wizardCaption="Orig COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_PHONE_A" fieldSource="Orig_PHONE_A" required="False" caption="Orig PHONE 1" wizardCaption="Orig PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_PHONE_B" fieldSource="Orig_PHONE_B" required="False" caption="Orig PHONE 2" wizardCaption="Orig PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_FAX" fieldSource="Orig_FAX" required="False" caption="Orig FAX" wizardCaption="Orig FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_EMAIL_ADDRESS" fieldSource="Orig_EMAIL_ADDRESS" required="False" caption="Orig EMAIL ADDRESS" wizardCaption="Orig EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Orig_EMAIL_ADDRESS2" fieldSource="Orig_EMAIL_ADDRESS2" required="False" caption="Orig EMAIL ADDRESS2" wizardCaption="Orig EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreOrig_EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="60" fieldSourceType="DBColumn" dataType="Text" html="False" name="Orig_LAST_ALTERED_BY" fieldSource="Orig_LAST_ALTERED_BY" required="True" caption="Orig LAST ALTERED BY" wizardCaption="Orig LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="61" fieldSourceType="DBColumn" dataType="Date" html="False" name="Orig_LAST_ALTERED_DATE" fieldSource="Orig_LAST_ALTERED_DATE" required="True" caption="Orig LAST ALTERED DATE" wizardCaption="Orig LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="viewStudentMaintain_AddreButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="viewStudentMaintain_AddreButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="10" fieldSourceType="DBColumn" dataType="Float" name="ATTENDING_SCHOOL_ID" fieldSource="ATTENDING_SCHOOL_ID" required="False" caption="ATTENDING SCHOOL ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreATTENDING_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="12" fieldSourceType="DBColumn" dataType="Float" name="CURR_RESID_ADDRESS_ID" fieldSource="CURR_RESID_ADDRESS_ID" required="False" caption="CURR RESID ADDRESS ID" wizardCaption="CURR RESID ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreCURR_RESID_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="13" fieldSourceType="DBColumn" dataType="Float" name="ORIG_RESID_ADDRESS_ID" fieldSource="ORIG_RESID_ADDRESS_ID" required="False" caption="ORIG RESID ADDRESS ID" wizardCaption="ORIG RESID ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddreORIG_RESID_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="132" visible="Dynamic" fieldSourceType="CodeExpression" dataType="Float" name="PostAdd_SCHOOL_ADDRESS_ID_ifknown" required="False" caption="Post Add ADDRESS ID" wizardCaption="Post Add ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePostAdd_SCHOOL_ADDRESS_ID_ifknown" features="(assigned)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<PTAutoFill id="136" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill1" servicePage="services/Student_Address_maintain_viewStudentMaintain_Addre_PostAdd_SCHOOL_ADDRESS_ID_ifknown_PTAutoFill1.ccp" searchField="ADDRESS_ID" connection="connDECVPRODSQL2005" featureNameChanged="No" dataSource="ADDRESS" category="Prototype" ccsIdsOnly="False" start="viewStudentMaintain_Addrecbox_same_as_school.onclick;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Controls>
								<Control id="137" name="Postal_ADDRESSEE" source="ADDRESSEE" propertyValue="value" sourceId="15"/>
								<Control id="138" name="Postal_AGENT" source="AGENT" propertyValue="value" sourceId="16"/>
								<Control id="139" name="Postal_ADDR1" source="ADDR1" propertyValue="value" sourceId="17"/>
								<Control id="140" name="Postal_ADDR2" source="ADDR2" propertyValue="value" sourceId="18"/>
								<Control id="141" name="Postal_SUBURB_TOWN" source="SUBURB_TOWN" propertyValue="value" sourceId="19"/>
								<Control id="142" name="Postal_STATE" source="STATE" propertyValue="value" sourceId="21"/>
								<Control id="143" name="Postal_POSTCODE" source="POSTCODE" propertyValue="value" sourceId="20"/>
								<Control id="144" name="Postal_COUNTRY" source="COUNTRY" propertyValue="value" sourceId="22"/>
								<Control id="145" name="Postal_PHONE_A" source="PHONE_A" propertyValue="value" sourceId="23"/>
								<Control id="146" name="Postal_PHONE_B" source="PHONE_B" propertyValue="value" sourceId="24"/>
								<Control id="147" name="Postal_FAX" source="FAX" propertyValue="value" sourceId="25"/>
								<Control id="148" name="Postal_EMAIL_ADDRESS" source="EMAIL_ADDRESS" propertyValue="value" sourceId="26"/>
								<Control id="149" name="Postal_EMAIL_ADDRESS2" source="EMAIL_ADDRESS2" propertyValue="value" sourceId="27"/>
							</Controls>
							<ControlPoints>
								<ControlPoint id="150" name="viewStudentMaintain_Addrecbox_same_as_school.onclick" relProperty="start">
									<Items>
										<ControlPointItem id="151" name="Student_Address_maintain" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="152" name="viewStudentMaintain_Addre" ccpId="5" type="Record" isFeature="False" PathID="viewStudentMaintain_Addre"/>
										<ControlPointItem id="153" name="cbox_same_as_school" ccpId="112" type="CheckBox" isFeature="False" PathID="viewStudentMaintain_Addrecbox_same_as_school"/>
									</Items>
								</ControlPoint>
							</ControlPoints>
							<Features/>
						</PTAutoFill>
					</Features>
				</TextBox>
				<TextBox id="11" fieldSourceType="DBColumn" dataType="Float" name="POSTAL_ADDRESS_ID" fieldSource="POSTAL_ADDRESS_ID" required="False" caption="POSTAL ADDRESS ID" wizardCaption="POSTAL ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="viewStudentMaintain_AddrePOSTAL_ADDRESS_ID" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="158" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="flag_same_as_school_old" PathID="viewStudentMaintain_Addreflag_same_as_school_old" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="160" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="flag_same_as_school" PathID="viewStudentMaintain_Addreflag_same_as_school" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="161" fieldSourceType="CodeExpression" dataType="Text" html="False" name="this_LAST_ALTERED_BY" fieldSource="session(&quot;UserID&quot;)" required="True" caption="Orig LAST ALTERED BY" wizardCaption="Orig LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="162" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ajaxBusy" PathID="viewStudentMaintain_AddreajaxBusy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="120"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="124"/>
					</Actions>
				</Event>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="134"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="157"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="159"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="8" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" parameterSource="STUDENT_ID"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="64" tableName="viewStudentMaintain_AddressList" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters>
				<SPParameter id="Key122" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10" defaultValue="0" designDefaultValue="0"/>
				<SPParameter id="Key123" parameterName="@STUDENT_ID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key124" parameterName="@ATTENDING_SCHOOL_ID" parameterSource="ATTENDING_SCHOOL_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key125" parameterName="@POSTAL_ADDRESS_ID" parameterSource="POSTAL_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key126" parameterName="@CURR_RESID_ADDRESS_ID" parameterSource="CURR_RESID_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key127" parameterName="@ORIG_RESID_ADDRESS_ID" parameterSource="ORIG_RESID_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key128" parameterName="@flag_same_as_school" parameterSource="flag_same_as_school" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key129" parameterName="@flag_same_as_school_old" parameterSource="flag_same_as_school_old" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key130" parameterName="@PostAdd_ADDRESS_ID" parameterSource="PostAdd_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key131" parameterName="@Postal_ADDRESSEE" parameterSource="Postal_ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key132" parameterName="@Postal_AGENT" parameterSource="Postal_AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key133" parameterName="@Postal_ADDR1" parameterSource="Postal_ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key134" parameterName="@Postal_ADDR2" parameterSource="Postal_ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key135" parameterName="@Postal_SUBURB_TOWN" parameterSource="Postal_SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key136" parameterName="@Postal_POSTCODE" parameterSource="Postal_POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key137" parameterName="@Postal_STATE" parameterSource="Postal_STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key138" parameterName="@Postal_COUNTRY" parameterSource="Postal_COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key139" parameterName="@Postal_PHONE_A" parameterSource="Postal_PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key140" parameterName="@Postal_PHONE_B" parameterSource="Postal_PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key141" parameterName="@Postal_FAX" parameterSource="Postal_FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key142" parameterName="@Postal_EMAIL_ADDRESS" parameterSource="Postal_EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key143" parameterName="@Postal_EMAIL_ADDRESS2" parameterSource="Postal_EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key144" parameterName="@flag_same_as_postal" parameterSource="cbox_same_as_postal" dataType="Int" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key145" parameterName="@flag_same_as_postal_old" parameterSource="flag_same_as_postal_old" dataType="Int" parameterType="Session" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key146" parameterName="@Curr_ADDRESS_ID" parameterSource="Curr_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key147" parameterName="@Curr_ADDRESSEE" parameterSource="Curr_ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key148" parameterName="@Curr_AGENT" parameterSource="Curr_AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key149" parameterName="@Curr_ADDR1" parameterSource="Curr_ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key150" parameterName="@Curr_ADDR2" parameterSource="Curr_ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key151" parameterName="@Curr_SUBURB_TOWN" parameterSource="Curr_SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key152" parameterName="@Curr_POSTCODE" parameterSource="Curr_POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key153" parameterName="@Curr_STATE" parameterSource="Curr_STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key154" parameterName="@Curr_COUNTRY" parameterSource="Curr_COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key155" parameterName="@Curr_PHONE_A" parameterSource="Curr_PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key156" parameterName="@Curr_PHONE_B" parameterSource="Curr_PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key157" parameterName="@Curr_FAX" parameterSource="Curr_FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key158" parameterName="@Curr_EMAIL_ADDRESS" parameterSource="Curr_EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key159" parameterName="@Curr_EMAIL_ADDRESS2" parameterSource="Curr_EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key160" parameterName="@Orig_ADDRESS_ID" parameterSource="Orig_ADDRESS_ID" dataType="Int" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key161" parameterName="@Orig_ADDRESSEE" parameterSource="Orig_ADDRESSEE" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key162" parameterName="@Orig_AGENT" parameterSource="Orig_AGENT" dataType="Char" parameterType="Control" dataSize="60" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key163" parameterName="@Orig_ADDR1" parameterSource="Orig_ADDR1" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key164" parameterName="@Orig_ADDR2" parameterSource="Orig_ADDR2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key165" parameterName="@Orig_SUBURB_TOWN" parameterSource="Orig_SUBURB_TOWN" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key166" parameterName="@Orig_POSTCODE" parameterSource="Orig_POSTCODE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key167" parameterName="@Orig_STATE" parameterSource="Orig_STATE" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key168" parameterName="@Orig_COUNTRY" parameterSource="Orig_COUNTRY" dataType="Char" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key169" parameterName="@Orig_PHONE_A" parameterSource="Orig_PHONE_A" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key170" parameterName="@Orig_PHONE_B" parameterSource="Orig_PHONE_B" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key171" parameterName="@Orig_FAX" parameterSource="Orig_FAX" dataType="Char" parameterType="Control" dataSize="15" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key172" parameterName="@Orig_EMAIL_ADDRESS" parameterSource="Orig_EMAIL_ADDRESS" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key173" parameterName="@Orig_EMAIL_ADDRESS2" parameterSource="Orig_EMAIL_ADDRESS2" dataType="Char" parameterType="Control" dataSize="50" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key174" parameterName="@LAST_ALTERED_BY" parameterSource="UserID" dataType="Char" dataSize="8" direction="Input" scale="0" precision="10" parameterType="Session"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="111" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" parameterType="URL" parameterSource="STUDENT_ID" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="65" field="PostAdd_ADDRESS_ID" dataType="Float" parameterType="Control" parameterSource="PostAdd_ADDRESS_ID"/>
				<CustomParameter id="66" field="Postal_ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="Postal_ADDRESSEE"/>
				<CustomParameter id="67" field="Postal_AGENT" dataType="Text" parameterType="Control" parameterSource="Postal_AGENT"/>
				<CustomParameter id="68" field="Postal_ADDR1" dataType="Text" parameterType="Control" parameterSource="Postal_ADDR1"/>
				<CustomParameter id="69" field="Postal_ADDR2" dataType="Text" parameterType="Control" parameterSource="Postal_ADDR2"/>
				<CustomParameter id="70" field="Postal_SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="Postal_SUBURB_TOWN"/>
				<CustomParameter id="71" field="Postal_STATE" dataType="Text" parameterType="Control" parameterSource="Postal_STATE"/>
				<CustomParameter id="72" field="Postal_POSTCODE" dataType="Text" parameterType="Control" parameterSource="Postal_POSTCODE"/>
				<CustomParameter id="73" field="Postal_COUNTRY" dataType="Text" parameterType="Control" parameterSource="Postal_COUNTRY"/>
				<CustomParameter id="74" field="Postal_PHONE_A" dataType="Text" parameterType="Control" parameterSource="Postal_PHONE_A"/>
				<CustomParameter id="75" field="Postal_PHONE_B" dataType="Text" parameterType="Control" parameterSource="Postal_PHONE_B"/>
				<CustomParameter id="76" field="Postal_FAX" dataType="Text" parameterType="Control" parameterSource="Postal_FAX"/>
				<CustomParameter id="77" field="Postal_EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="Postal_EMAIL_ADDRESS"/>
				<CustomParameter id="78" field="Postal_EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="Postal_EMAIL_ADDRESS2"/>
				<CustomParameter id="79" field="Curr_ADDRESS_ID" dataType="Float" parameterType="Control" parameterSource="Curr_ADDRESS_ID"/>
				<CustomParameter id="80" field="Curr_ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="Curr_ADDRESSEE"/>
				<CustomParameter id="81" field="Curr_AGENT" dataType="Text" parameterType="Control" parameterSource="Curr_AGENT"/>
				<CustomParameter id="82" field="Curr_ADDR1" dataType="Text" parameterType="Control" parameterSource="Curr_ADDR1"/>
				<CustomParameter id="83" field="Curr_ADDR2" dataType="Text" parameterType="Control" parameterSource="Curr_ADDR2"/>
				<CustomParameter id="84" field="Curr_SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="Curr_SUBURB_TOWN"/>
				<CustomParameter id="85" field="Curr_STATE" dataType="Text" parameterType="Control" parameterSource="Curr_STATE"/>
				<CustomParameter id="86" field="Curr_POSTCODE" dataType="Text" parameterType="Control" parameterSource="Curr_POSTCODE"/>
				<CustomParameter id="87" field="Curr_COUNTRY" dataType="Text" parameterType="Control" parameterSource="Curr_COUNTRY"/>
				<CustomParameter id="88" field="Curr_PHONE_A" dataType="Text" parameterType="Control" parameterSource="Curr_PHONE_A"/>
				<CustomParameter id="89" field="Curr_PHONE_B" dataType="Text" parameterType="Control" parameterSource="Curr_PHONE_B"/>
				<CustomParameter id="90" field="Curr_FAX" dataType="Text" parameterType="Control" parameterSource="Curr_FAX"/>
				<CustomParameter id="91" field="Curr_EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="Curr_EMAIL_ADDRESS"/>
				<CustomParameter id="92" field="Curr_EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="Curr_EMAIL_ADDRESS2"/>
				<CustomParameter id="93" field="Orig_ADDRESS_ID" dataType="Float" parameterType="Control" parameterSource="Orig_ADDRESS_ID"/>
				<CustomParameter id="94" field="Orig_ADDRESSEE" dataType="Text" parameterType="Control" parameterSource="Orig_ADDRESSEE"/>
				<CustomParameter id="95" field="Orig_AGENT" dataType="Text" parameterType="Control" parameterSource="Orig_AGENT"/>
				<CustomParameter id="96" field="Orig_ADDR1" dataType="Text" parameterType="Control" parameterSource="Orig_ADDR1"/>
				<CustomParameter id="97" field="Orig_ADDR2" dataType="Text" parameterType="Control" parameterSource="Orig_ADDR2"/>
				<CustomParameter id="98" field="Orig_SUBURB_TOWN" dataType="Text" parameterType="Control" parameterSource="Orig_SUBURB_TOWN"/>
				<CustomParameter id="99" field="Orig_STATE" dataType="Text" parameterType="Control" parameterSource="Orig_STATE"/>
				<CustomParameter id="100" field="Orig_POSTCODE" dataType="Text" parameterType="Control" parameterSource="Orig_POSTCODE"/>
				<CustomParameter id="101" field="Orig_COUNTRY" dataType="Text" parameterType="Control" parameterSource="Orig_COUNTRY"/>
				<CustomParameter id="102" field="Orig_PHONE_B" dataType="Text" parameterType="Control" parameterSource="Orig_PHONE_B"/>
				<CustomParameter id="103" field="Orig_FAX" dataType="Text" parameterType="Control" parameterSource="Orig_FAX"/>
				<CustomParameter id="104" field="Orig_EMAIL_ADDRESS" dataType="Text" parameterType="Control" parameterSource="Orig_EMAIL_ADDRESS"/>
				<CustomParameter id="105" field="Orig_EMAIL_ADDRESS2" dataType="Text" parameterType="Control" parameterSource="Orig_EMAIL_ADDRESS2"/>
				<CustomParameter id="106" field="ATTENDING_SCHOOL_ID" dataType="Float" parameterType="Control" parameterSource="ATTENDING_SCHOOL_ID"/>
				<CustomParameter id="107" field="POSTAL_ADDRESS_ID" dataType="Float" parameterType="Control" parameterSource="POSTAL_ADDRESS_ID"/>
				<CustomParameter id="108" field="CURR_RESID_ADDRESS_ID" dataType="Float" parameterType="Control" parameterSource="CURR_RESID_ADDRESS_ID"/>
				<CustomParameter id="109" field="ORIG_RESID_ADDRESS_ID" dataType="Float" parameterType="Control" parameterSource="ORIG_RESID_ADDRESS_ID"/>
				<CustomParameter id="110" field="Orig_PHONE_A" dataType="Text" parameterType="Control" parameterSource="Orig_PHONE_A"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features>
				<HideShow id="163" enabled="True" name="HideShow_ajaxBusy" category="Ajax" featureNameChanged="No" controlId="Student_Address_maintainajaxBusy" ccsIdsOnly="False" show="viewStudentMaintain_AddreButton_Update1.onclick;viewStudentMaintain_AddreButton_Update.onclick;" hide="viewStudentMaintain_Addre.onload;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="164" name="viewStudentMaintain_AddreButton_Update1.onclick" relProperty="show">
							<Items>
								<ControlPointItem id="165" name="Student_Address_maintain" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="166" name="viewStudentMaintain_Addre" ccpId="5" type="Record" isFeature="False" PathID="viewStudentMaintain_Addre"/>
								<ControlPointItem id="167" name="Button_Update1" ccpId="62" type="Button" isFeature="False" PathID="viewStudentMaintain_AddreButton_Update1"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="168" name="viewStudentMaintain_AddreButton_Update.onclick" relProperty="show">
							<Items>
								<ControlPointItem id="169" name="Student_Address_maintain" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="170" name="viewStudentMaintain_Addre" ccpId="5" type="Record" isFeature="False" PathID="viewStudentMaintain_Addre"/>
								<ControlPointItem id="171" name="Button_Update" ccpId="6" type="Button" isFeature="False" PathID="viewStudentMaintain_AddreButton_Update"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="172" name="viewStudentMaintain_Addre.onload" relProperty="hide">
							<Items>
								<ControlPointItem id="173" name="Student_Address_maintain" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="174" name="viewStudentMaintain_Addre" ccpId="5" type="Record" isFeature="False" PathID="viewStudentMaintain_Addre"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Features/>
				</HideShow>
			</Features>
			<PKFields/>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Address_maintain.aspx" forShow="True" url="Student_Address_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Address_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Address_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="130"/>
			</Actions>
		</Event>
	</Events>
</Page>
