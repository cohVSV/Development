<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" wizardSortingType="SimpleDir" needGeneration="0">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewVSNSearch" wizardCaption="Search View Maintain Search Request " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="VSN_Search.ccp" pasteAsReplace="pasteAsReplace" PathID="viewVSNSearch" pasteActions="pasteActions">
			<Components>
				<TextBox id="3" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" caption="SURNAME" PathID="viewVSNSearchs_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" caption="STUDENT ID" PathID="viewVSNSearchs_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" defaultValue="year(now())" PathID="viewVSNSearchs_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="VSREnrolment.ccp" removeParameters="s_SURNAME;s_STUDENT_ID;s_RECEIPT_NO;s_ENROLMENT_YEAR" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="viewVSNSearchClearParameters" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="11" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="viewVSNSearchButton_DoSearch">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="12" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_STUDENT_VSN" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" caption="STUDENT VSN" PathID="viewVSNSearchs_STUDENT_VSN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Set Focus" actionCategory="General" id="13" name="s_SURNAME" eventType="Client"/>
					</Actions>
				</Event>
			</Events>
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
		<Grid id="14" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="25" connection="connDECVPRODSQL2005" name="viewVSN" pageSizeLimit="100" wizardCaption="List of View Maintain Search Request " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No records - try changing the search criteria" activeCollection="TableParameters" PathID="viewVSN" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" wizardAllowSorting="True" dataSource="viewVSNSearch">
			<Components>
				<Sorter id="15" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewVSNSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="22" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="StudentSummary.ccp" removeParameters="s_SURNAME;s_ENROLMENT_YEAR" PathID="viewVSNSTUDENT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="23" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="24" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="25" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Navigator id="32" size="10" type="Centered" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="viewVSNNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Sorter id="17" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewVSNSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="18" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewVSNSorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="19" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="viewVSNSorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="29" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="20" visible="True" name="Sorter_ENROLMENT_STATUS" column="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_STATUS" wizardAddNbsp="False" PathID="viewVSNSorter_ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="21" visible="True" name="Sorter_ENROLMENT_YEAR" column="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="viewVSNSorter_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="31" fieldSourceType="DBColumn" dataType="Float" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="48" visible="True" name="Sorter_VSN1" column="VSN" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="viewVSNSorter_VSN1" connection="connDECVPRODSQL2005">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="VSN" fieldSource="VSN" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" defaultValue="Unknown">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="50" visible="True" name="Sorter_VSREnrolled" wizardSortingType="SimpleDir" PathID="viewVSNSorter_VSREnrolled" wizardCaption="VSR Enrolled" column="VSREnrolled">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="51" fieldSourceType="DBColumn" dataType="Text" html="False" name="VSREnrolled" PathID="viewVSNVSREnrolled" fieldSource="VSREnrolled">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="52" visible="True" name="Sorter_VSRVerified" wizardSortingType="SimpleDir" PathID="viewVSNSorter_VSRVerified" wizardCaption="VSR Verified" column="Verify">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" name="VSRVerified" PathID="viewVSNVSRVerified" fieldSource="Verify">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="33" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="55" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="Or" parameterSource="s_Student_ID" leftBrackets="1"/>
				<TableParameter id="56" conditionType="Parameter" useIsNull="False" field="SURNAME" dataType="Text" searchConditionType="BeginsWith" parameterType="URL" logicOperator="Or" parameterSource="s_SURNAME"/>
				<TableParameter id="57" conditionType="Parameter" useIsNull="False" field="VSN" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="s_STUDENT_VSN" leftBrackets="0" rightBrackets="1"/>
				<TableParameter id="58" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="s_ENROLMENT_YEAR"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="54" tableName="viewVSNSearch" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
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
		<IncludePage id="40" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="VSREnrolment.aspx" forShow="True" url="VSREnrolment.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="VSREnrolment.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="VSREnrolmentDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
