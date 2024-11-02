<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False" pasteActions="pasteActions">
	<Components>
		<IncludePage id="17" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="SCHOOL" dataSource="SCHOOL" errorSummator="Error" wizardCaption="Add/Edit SCHOOL " wizardFormMethod="post" PathID="SCHOOL" customDeleteType="SQL" customDelete="UPDATE SCHOOL set status=0 where status=1 and SCHOOL_ID='{school_id}'" activeCollection="DSQLParameters" activeTableType="customDelete" parameterTypeListName="ParameterTypeList">
			<Components>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCHOOL_NAME" fieldSource="SCHOOL_NAME" required="True" caption="SCHOOL NAME" wizardCaption="NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" PathID="SCHOOLSCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="7" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="REGION_ID" fieldSource="REGION_ID" required="False" caption="REGION ID" wizardCaption="REGION ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="REGION" boundColumn="REGION_ID" textColumn="REGION_NAME" PathID="SCHOOLREGION_ID">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
<JoinTable id="69" tableName="REGION"/>
</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="SCHOOL_TYPE_CODE" fieldSource="SCHOOL_TYPE_CODE" required="True" caption="SCHOOL TYPE" wizardCaption="TYPE CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="SCHOOL_TYPE" boundColumn="SCHOOL_TYPE_CODE" textColumn="SCHOOL_TYPE_DESCRIPTION" html="True" PathID="SCHOOLSCHOOL_TYPE_CODE">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="67"/>
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
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PRINCIPAL" fieldSource="PRINCIPAL" required="False" caption="PRINCIPAL" wizardCaption="PRINCIPAL" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="SCHOOLPRINCIPAL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="VBOSNUMBER" fieldSource="VBOSNUMBER" required="False" caption="VBOS NUMBER" wizardCaption="VBOSNUMBER" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="SCHOOLVBOSNUMBER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="METRO_CATEGORY" fieldSource="METRO_CATEGORY" required="True" caption="METRO CATEGORY" wizardCaption="METRO CATEGORY" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" sourceType="ListOfValues" html="True" PathID="SCHOOLMETRO_CATEGORY" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="Country" dataSource="1;Metro;0;Country" defaultValue="1">
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
				<CheckBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="STATUS" fieldSource="STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" PathID="SCHOOLSTATUS" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Link id="9" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="ADDRESS_ID" required="False" caption="ADDRESS ID" wizardCaption="ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="ADDRESS" boundColumn="ADDRESS_ID" textColumn="ADDRESSEE" PathID="SCHOOLADDRESS_ID" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="SCHOOL_ADDRESS_maint.ccp" wizardUseTemplateBlock="False">
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
					<LinkParameters>
						<LinkParameter id="21" sourceType="DataField" name="ADDRESS_ID" source="ADDRESS_ID"/>
						<LinkParameter id="22" sourceType="DataField" name="SCHOOL_ID" source="SCHOOL_ID"/>
					</LinkParameters>
				</Link>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="SCHOOLButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="SCHOOLButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="SCHOOLButton_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="23" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCHOOL_ID" PathID="SCHOOLSCHOOL_ID" fieldSource="SCHOOL_ID" caption="SCHOOL ID" required="True" unique="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="True" name="lbl_SaveBeforeAddress" PathID="SCHOOLlbl_SaveBeforeAddress" defaultValue="&quot;&lt;em&gt;Add the School first, then Edit to add address.&lt;/em&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="SCHOOLLAST_ALTERED_BY" defaultValue="DBUtility.UserLogin">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" PathID="SCHOOLLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbl_LAST_ALTERED_BY" PathID="SCHOOLlbl_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="ucase(DBUtility.UserLogin)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Date" html="False" name="lbl_LAST_ALTERED_DATE" PathID="SCHOOLlbl_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Float" html="False" name="SchoolID_view" PathID="SCHOOLSchoolID_view" fieldSource="SCHOOL_ID" format="0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="56" fieldSourceType="DBColumn" dataType="Text" name="Hidden_address_id" PathID="SCHOOLHidden_address_id" fieldSource="ADDRESS_ID" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="60" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblAddressID" PathID="SCHOOLlblAddressID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="61" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblDebug" PathID="SCHOOLlblDebug">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="62" name="lblDebug" sourceType="Session" sourceName="debugmsg" eventType="Server"/>
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
						<Action actionName="Custom Code" actionCategory="General" id="24"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="57" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="58" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="63" name="&quot;School has been Added&quot;" sourceType="Session" sourceName="notifymessage"/>
						<Action actionName="Custom Code" actionCategory="General" id="68"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="64" name="&quot;School has been Updated&quot;" sourceType="Session" sourceName="notifymessage"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="SCHOOL_ID" parameterSource="SCHOOL_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
			<DSQLParameters>
				<SQLParameter id="66" variable="school_id" parameterType="Control" dataType="Text" parameterSource="SCHOOL_ID" defaultValue="0"/>
			</DSQLParameters>
			<DConditions>
				<TableParameter id="65" conditionType="Parameter" useIsNull="False" field="SCHOOL_ID" dataType="Float" parameterType="URL" parameterSource="SCHOOL_ID" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
			</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<Link id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkSchoolList" PathID="linkSchoolList" hrefSource="SCHOOL_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Report id="29" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="ADDRESS" name="ADDRESS_Postal" pageSizeLimit="100" wizardCaption=" ADDRESS " wizardLayoutType="Form" activeCollection="TableParameters" PathID="ADDRESS_Postal">
			<Components>
				<Section id="30" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="ADDRESS_PostalReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="31" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="ADDRESS_PostalPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="32" visible="True" lines="16" name="Detail" PathID="ADDRESS_PostalDetail" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
					<Components>
						<ReportLabel id="33" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESSEE" fieldSource="ADDRESSEE" wizardCaption="ADDRESSEE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="34" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="AGENT" fieldSource="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="35" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR1" fieldSource="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="36" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR2" fieldSource="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="37" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" wizardCaption="SUBURB_TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="38" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="STATE" fieldSource="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="39" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="POSTCODE" fieldSource="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="40" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="COUNTRY" fieldSource="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="41" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_A" fieldSource="PHONE_A" wizardCaption="PHONE_A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="42" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_B" fieldSource="PHONE_B" wizardCaption="PHONE_B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="43" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FAX" fieldSource="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<Link id="44" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" wizardCaption="EMAIL_ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" PathID="ADDRESS_PostalDetailEMAIL_ADDRESS" hrefSource="EMAIL_ADDRESS">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="45"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
							<LinkParameters/>
						</Link>
						<Link id="46" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" wizardCaption="EMAIL_ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" PathID="ADDRESS_PostalDetailEMAIL_ADDRESS2" hrefSource="EMAIL_ADDRESS2">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="47"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
							<LinkParameters/>
						</Link>
						<ReportLabel id="48" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST_ALTERED_BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="49" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST_ALTERED_DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="50" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESS_ID" fieldSource="ADDRESS_ID" wizardCaption="ADDRESS_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="51" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="ADDRESS_PostalReport_Footer">
					<Components>
						<Panel id="52" visible="True" name="NoRecords" wizardNoRecords="No Address Record" PathID="ADDRESS_PostalReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="53" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="ADDRESS_PostalPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="54" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" searchConditionType="Equal" parameterType="Expression" logicOperator="And" leftBrackets="1" rightBrackets="1" defaultValue="0" parameterSource="SCHOOLHidden_address_id.value"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="59" tableName="ADDRESS"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SCHOOL_maint.aspx" forShow="True" url="SCHOOL_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SCHOOL_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SCHOOL_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
