<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewSearchVSNHistory" wizardCaption="Search View Maintain Search Request " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Student_VSN_History.ccp" pasteAsReplace="pasteAsReplace" PathID="viewSearchVSNHistory" pasteActions="pasteActions">
			<Components>
				<TextBox id="3" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" caption="SURNAME" PathID="viewSearchVSNHistorys_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" caption="STUDENT ID" PathID="viewSearchVSNHistorys_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" defaultValue="year(now())" PathID="viewSearchVSNHistorys_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="MaintainSearchRequest.ccp" removeParameters="s_SURNAME;s_STUDENT_ID;s_RECEIPT_NO;s_ENROLMENT_YEAR" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="viewSearchVSNHistoryClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="7" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="viewSearchVSNHistoryButton_DoSearch">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="8"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_STUDENT_VSN" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" caption="STUDENT VSN" PathID="viewSearchVSNHistorys_STUDENT_VSN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Set Focus" actionCategory="General" id="10" name="s_SURNAME" eventType="Client"/>
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
		<Grid id="11" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="25" connection="connDECVPRODSQL2005" name="viewVSNTransactions" pageSizeLimit="100" wizardCaption="List of View Maintain Search Request " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No records - try changing the search criteria" activeCollection="TableParameters" PathID="viewVSNTransactions" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" wizardAllowSorting="True" dataSource="view_StudentVSNHistory">
			<Components>
				<Sorter id="12" visible="True" name="Sorter_STUDENT_ID" column="Student_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewVSNTransactionsSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ID" fieldSource="Student_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" removeParameters="s_SURNAME;s_ENROLMENT_YEAR" PathID="viewVSNTransactionsSTUDENT_ID" hrefSource="StudentSummary.ccp">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="14"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="15" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="16" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Navigator id="17" size="10" type="Centered" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="viewVSNTransactionsNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Sorter id="18" visible="True" name="Sorter_LastName" column="LastName" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewVSNTransactionsSorter_LastName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="LastName" fieldSource="LastName" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="20" visible="True" name="Sorter_FIRSTNAME" column="FirstName" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewVSNTransactionsSorter_FIRSTNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRSTNAME" fieldSource="FirstName" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="22" visible="True" name="Sorter_MiddleName" column="MiddleName" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="viewVSNTransactionsSorter_MiddleName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="MiddleName" fieldSource="MiddleName" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="24" visible="True" name="Sorter_BirthDate" column="DOB" wizardCaption="ENROLMENT STATUS" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_STATUS" wizardAddNbsp="False" PathID="viewVSNTransactionsSorter_BirthDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="BirthDate" fieldSource="DOB" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="26" visible="True" name="Sorter_Gender" column="Gender" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="viewVSNTransactionsSorter_Gender">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_VSN1" column="VSN" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="viewVSNTransactionsSorter_VSN1" connection="connDECVPRODSQL2005">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="VSN" fieldSource="VSN" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" defaultValue="Unknown">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="30" visible="True" name="Sorter_BatchID" wizardSortingType="SimpleDir" PathID="viewVSNTransactionsSorter_BatchID" wizardCaption="VSR Enrolled" column="BatchID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" name="BatchID" PathID="viewVSNTransactionsBatchID" fieldSource="BatchID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" name="SeqNum" PathID="viewVSNTransactionsSeqNum" fieldSource="SequenceNumber">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="32" visible="True" name="Sorter_SequenceNo" wizardSortingType="SimpleDir" PathID="viewVSNTransactionsSorter_SequenceNo" wizardCaption="VSR Verified" column="SequenceNumber">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="36" visible="True" name="Sorter_Type" wizardSortingType="SimpleDir" PathID="viewVSNTransactionsSorter_Type" wizardCaption="VSR Verified" column="Type">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="37" visible="True" name="Sorter_Message" wizardSortingType="SimpleDir" PathID="viewVSNTransactionsSorter_Message" wizardCaption="VSR Verified" column="Message">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="38" visible="True" name="Sorter_ExceptionID" wizardSortingType="SimpleDir" PathID="viewVSNTransactionsSorter_ExceptionID" wizardCaption="VSR Verified" column="ExceptionID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="False" name="Type" PathID="viewVSNTransactionsType" fieldSource="Type">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="Message" PathID="viewVSNTransactionsMessage" fieldSource="Message">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" name="VSRRegisterrationDate" PathID="viewVSNTransactionsVSRRegisterrationDate" fieldSource="VSRRegisterrationDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="42" visible="True" name="Sorter_VSRRegisterrationDate" wizardSortingType="SimpleDir" PathID="viewVSNTransactionsSorter_VSRRegisterrationDate" wizardCaption="VSR Verified" column="VSRRegisterrationDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="ExceptionID" PathID="viewVSNTransactionsExceptionID" fieldSource="ExceptionID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="Sex" fieldSource="Gender" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="34"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="51" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="s_ENROLMENT_YEAR"/>
				<TableParameter id="52" conditionType="Parameter" useIsNull="False" field="Student_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="Or" leftBrackets="1" parameterSource="s_STUDENT_ID"/>
				<TableParameter id="53" conditionType="Parameter" useIsNull="False" field="LastName" dataType="Text" searchConditionType="BeginsWith" parameterType="URL" logicOperator="Or" parameterSource="s_SURNAME"/>
				<TableParameter id="54" conditionType="Parameter" useIsNull="False" field="VSN" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="s_STUDENT_VSN" rightBrackets="1"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="50" tableName="view_StudentVSNHistory" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
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
		<IncludePage id="48" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_VSN_History.aspx" forShow="True" url="Student_VSN_History.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_VSN_History.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_VSN_HistoryDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
