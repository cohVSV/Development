<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" dataSource="viewMaintainSearchRequest_Reception" name="viewMaintainSearchRequest1" pageSizeLimit="100" wizardCaption="List of View Maintain Search Request Reception " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No results found" activeCollection="TableParameters" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" PathID="viewMaintainSearchRequest1">
			<Components>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="viewMaintainSearchRequest1_TotalRecords" wizardUseTemplateBlock="False" PathID="viewMaintainSearchRequest1viewMaintainSearchRequest1_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="12"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="17" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="18" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="19" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_Postal_ADDR1" column="Postal_ADDR1" wizardCaption="Postal ADDR1" wizardSortingType="SimpleDir" wizardControl="Postal_ADDR1" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Postal_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="22" visible="True" name="Sorter_Postal_SUBURB_TOWN" column="Postal_SUBURB_TOWN" wizardCaption="Postal SUBURB TOWN" wizardSortingType="SimpleDir" wizardControl="Postal_SUBURB_TOWN" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Postal_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="24" visible="True" name="Sorter_Postal_PHONE_A" column="Postal_PHONE_A" wizardCaption="Postal PHONE A" wizardSortingType="SimpleDir" wizardControl="Postal_PHONE_A" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Postal_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_Postal_EMAIL_ADDRESS" column="Postal_EMAIL_ADDRESS" wizardCaption="Postal EMAIL ADDRESS" wizardSortingType="SimpleDir" wizardControl="Postal_EMAIL_ADDRESS" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Postal_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_Curr_ADDR1" column="Curr_ADDR1" wizardCaption="Curr ADDR1" wizardSortingType="SimpleDir" wizardControl="Curr_ADDR1" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Curr_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="30" visible="True" name="Sorter_Curr_SUBURB_TOWN" column="Curr_SUBURB_TOWN" wizardCaption="Curr SUBURB TOWN" wizardSortingType="SimpleDir" wizardControl="Curr_SUBURB_TOWN" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Curr_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="32" visible="True" name="Sorter_Curr_PHONE_A" column="Curr_PHONE_A" wizardCaption="Curr PHONE A" wizardSortingType="SimpleDir" wizardControl="Curr_PHONE_A" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Curr_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="34" visible="True" name="Sorter_Curr_EMAIL_ADDRESS" column="Curr_EMAIL_ADDRESS" wizardCaption="Curr EMAIL ADDRESS" wizardSortingType="SimpleDir" wizardControl="Curr_EMAIL_ADDRESS" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_Curr_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="36" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1STUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="StudentSummary.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="56" sourceType="Expression" name="ENROLMENT_YEAR" source="Now.Year()"/>
						<LinkParameter id="69" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
					</LinkParameters>
				</Link>
				<Label id="37" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="38" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_ADDR1" fieldSource="Postal_ADDR1" wizardCaption="Postal ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_SUBURB_TOWN" fieldSource="Postal_SUBURB_TOWN" wizardCaption="Postal SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_PHONE_A" fieldSource="Postal_PHONE_A" wizardCaption="Postal PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_EMAIL_ADDRESS" fieldSource="Postal_EMAIL_ADDRESS" wizardCaption="Postal EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_ADDR1" fieldSource="Curr_ADDR1" wizardCaption="Curr ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_SUBURB_TOWN" fieldSource="Curr_SUBURB_TOWN" wizardCaption="Curr SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="51" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_PHONE_A" fieldSource="Curr_PHONE_A" wizardCaption="Curr PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_EMAIL_ADDRESS" fieldSource="Curr_EMAIL_ADDRESS" wizardCaption="Curr EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="55" size="10" type="Centered" pageSizes="10;50;100;250;500" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Blueprint" PathID="viewMaintainSearchRequest1Navigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_ADDR2" fieldSource="Postal_ADDR2" wizardCaption="Postal ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_PHONE_B" fieldSource="Postal_PHONE_B" wizardCaption="Postal PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_EMAIL_ADDRESS2" fieldSource="Postal_EMAIL_ADDRESS2" wizardCaption="Postal EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_ADDR2" fieldSource="Curr_ADDR2" wizardCaption="Curr ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_PHONE_B" fieldSource="Curr_PHONE_B" wizardCaption="Curr PHONE B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="54" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_EMAIL_ADDRESS2" fieldSource="Curr_EMAIL_ADDRESS2" wizardCaption="Curr EMAIL ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="72" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_STATUS" PathID="viewMaintainSearchRequest1ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="73" fieldSourceType="DBColumn" dataType="Text" html="False" name="YEAR_LEVEL" PathID="viewMaintainSearchRequest1YEAR_LEVEL" fieldSource="YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="42" fieldSourceType="DBColumn" dataType="Text" html="False" name="Postal_POSTCODE" fieldSource="Postal_POSTCODE" wizardCaption="Postal POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Postal_POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="Curr_POSTCODE" fieldSource="Curr_POSTCODE" wizardCaption="Curr POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1Curr_POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="114" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="STUDENT_MOBILE" PathID="viewMaintainSearchRequest1STUDENT_MOBILE" fieldSource="STUDENT_MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="115" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="STUDENT_EMAIL" PathID="viewMaintainSearchRequest1STUDENT_EMAIL" fieldSource="STUDENT_EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="70"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="117" conditionType="Parameter" useIsNull="False" dataType="Text" field="FIRST_NAME" logicOperator="And" orderNumber="1" parameterSource="s_FIRST_NAME" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="118" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_ADDR1" leftBrackets="1" logicOperator="Or" orderNumber="2" parameterSource="s_Postal_ADDR1" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
				<TableParameter id="119" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_ADDR2" logicOperator="Or" parameterSource="s_Postal_ADDR1" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
				<TableParameter id="120" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_SUBURB_TOWN" logicOperator="Or" parameterSource="s_Postal_ADDR1" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="121" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_COUNTRY" logicOperator="Or" parameterSource="s_Postal_ADDR1" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="122" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_ADDR1" logicOperator="Or" parameterSource="s_Postal_ADDR1" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="123" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_ADDR2" logicOperator="Or" parameterSource="s_Postal_ADDR1" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="124" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_COUNTRY" logicOperator="Or" parameterSource="s_Postal_ADDR1" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="125" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_SUBURB_TOWN" logicOperator="And" parameterSource="s_Postal_ADDR1" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
				<TableParameter id="126" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_PHONE_A" leftBrackets="1" logicOperator="Or" orderNumber="3" parameterSource="s_Postal_PHONE_A" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="127" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_PHONE_B" logicOperator="Or" parameterSource="s_Postal_PHONE_A" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="128" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_PHONE_A" logicOperator="Or" parameterSource="s_Postal_PHONE_A" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="129" conditionType="Parameter" useIsNull="False" dataType="Text" field="STUDENT_MOBILE" logicOperator="Or" parameterSource="s_Postal_PHONE_A" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="130" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_PHONE_B" logicOperator="And" parameterSource="s_Postal_PHONE_A" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
				<TableParameter id="131" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_EMAIL_ADDRESS" leftBrackets="1" logicOperator="Or" orderNumber="4" parameterSource="s_Postal_EMAIL_ADDRESS" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="132" conditionType="Parameter" useIsNull="False" dataType="Text" field="Postal_EMAIL_ADDRESS2" logicOperator="Or" parameterSource="s_Postal_EMAIL_ADDRESS" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="133" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_EMAIL_ADDRESS" logicOperator="Or" parameterSource="s_Postal_EMAIL_ADDRESS" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="134" conditionType="Parameter" useIsNull="False" dataType="Text" field="STUDENT_EMAIL" logicOperator="Or" parameterSource="s_Postal_EMAIL_ADDRESS" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="135" conditionType="Parameter" useIsNull="False" dataType="Text" field="Curr_EMAIL_ADDRESS2" logicOperator="And" parameterSource="s_Postal_EMAIL_ADDRESS" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="116" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="viewMaintainSearchRequest_Reception"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="136" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewMaintainSearchRequest" wizardCaption="Search View Maintain Search Request " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="MaintainSearchRequest_Reception.ccp" PathID="viewMaintainSearchRequest" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="viewMaintainSearchRequestButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="viewMaintainSearchRequests_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_Postal_ADDR1" wizardCaption="Postal ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="viewMaintainSearchRequests_Postal_ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_Postal_PHONE_A" wizardCaption="Postal PHONE A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" PathID="viewMaintainSearchRequests_Postal_PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_Postal_EMAIL_ADDRESS" wizardCaption="Postal EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="viewMaintainSearchRequests_Postal_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="MaintainSearchRequest_Reception.ccp" removeParameters="s_FIRST_NAME;s_Postal_ADDR1;s_Postal_PHONE_A;s_Postal_EMAIL_ADDRESS" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="viewMaintainSearchRequestClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="74" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link1" PathID="viewMaintainSearchRequestLink1" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<TableParameters/>
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
		<Grid id="86" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" dataSource="viewMaintainSearchRequest_Carers" name="viewMaintainSearchRequest2" pageSizeLimit="100" wizardCaption="List of View Maintain Search Request Carers " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Carer/Supervisor Details found!" activeCollection="TableParameters" PathID="viewMaintainSearchRequest2">
			<Components>
				<Sorter id="87" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="88" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="89" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="90" visible="True" name="Sorter_RELATIONSHIP" column="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSortingType="SimpleDir" wizardControl="RELATIONSHIP" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_RELATIONSHIP">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="91" visible="True" name="Sorter_HOME_PHONE" column="HOME_PHONE" wizardCaption="HOME PHONE" wizardSortingType="SimpleDir" wizardControl="HOME_PHONE" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="92" visible="True" name="Sorter_WORK_PHONE" column="WORK_PHONE" wizardCaption="WORK PHONE" wizardSortingType="SimpleDir" wizardControl="WORK_PHONE" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="93" visible="True" name="Sorter_MOBILE" column="MOBILE" wizardCaption="MOBILE" wizardSortingType="SimpleDir" wizardControl="MOBILE" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="94" visible="True" name="Sorter_EMAIL" column="EMAIL" wizardCaption="EMAIL" wizardSortingType="SimpleDir" wizardControl="EMAIL" wizardAddNbsp="False" PathID="viewMaintainSearchRequest2Sorter_EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="95" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2STUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="StudentSummary.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="104" sourceType="Expression" name="ENROLMENT_YEAR" source="Now.Year()"/>
						<LinkParameter id="105" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
					</LinkParameters>
				</Link>
				<Label id="96" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="97" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="98" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2RELATIONSHIP">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="99" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="100" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="101" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="102" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="103" size="10" type="Centered" pageSizes="10;50;100;250;500" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Blueprint" PathID="viewMaintainSearchRequest2Navigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="112"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="107" conditionType="Parameter" useIsNull="False" field="FIRST_NAME" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="And" parameterSource="s_FIRST_NAME"/>
				<TableParameter id="108" conditionType="Parameter" useIsNull="False" field="HOME_PHONE" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="Or" leftBrackets="1" parameterSource="s_POSTAL_PHONE_A"/>
				<TableParameter id="109" conditionType="Parameter" useIsNull="False" field="WORK_PHONE" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="Or" parameterSource="s_POSTAL_PHONE_A"/>
				<TableParameter id="110" conditionType="Parameter" useIsNull="False" field="MOBILE" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="And" rightBrackets="1" parameterSource="s_POSTAL_PHONE_A"/>
				<TableParameter id="111" conditionType="Parameter" useIsNull="False" field="EMAIL" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="And" parameterSource="s_POSTAL_EMAIL_ADDRESS"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="106" tableName="viewMaintainSearchRequest_Carers" posLeft="10" posTop="10" posWidth="119" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="MaintainSearchRequest_Reception.aspx" forShow="True" url="MaintainSearchRequest_Reception.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="MaintainSearchRequest_Reception.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="MaintainSearchRequest_ReceptionDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="137" groupID="2"/>
<Group id="138" groupID="3"/>
<Group id="139" groupID="4"/>
<Group id="140" groupID="5"/>
<Group id="141" groupID="6"/>
<Group id="142" groupID="7"/>
<Group id="143" groupID="8"/>
<Group id="144" groupID="9"/>
<Group id="145" groupID="11"/>
<Group id="146" groupID="12"/>
</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="71" form="viewMaintainSearchRequest" name="s_FIRST_NAME"/>
			</Actions>
		</Event>
	</Events>
</Page>
