<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="50" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" dataSource="ASSIGNMENT_SUBMISSION, STUDENT_SUBJECT" activeCollection="UFormElements" orderBy="ASSIGNMENT_SUBMISSION.SUBJECT_ID, ASSIGNMENT_SUBMISSION.STUDENT_ID, ASSIGNMENT_ID, SUBMISSION_ID" name="ASSIGNMENT_SUBMISSION_STU1" pageSizeLimit="100" wizardCaption="List of ASSIGNMENT SUBMISSION, STUDENT SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Assignment Details found" PathID="ASSIGNMENT_SUBMISSION_STU1" deleteControl="checkboxDelete" customDeleteType="Table" customDelete="ASSIGNMENT_SUBMISSION" activeTableType="ASSIGNMENT_SUBMISSION" customUpdateType="Table" customUpdate="ASSIGNMENT_SUBMISSION">
			<Components>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" name="ASSIGNMENT_SUBMISSION_STU1_TotalRecords" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSION_STU1ASSIGNMENT_SUBMISSION_STU1_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="48"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="52" visible="True" name="Sorter_ASSIGNMENT_SUBMISSION_SUBJECT_ID" column="ASSIGNMENT_SUBMISSION.SUBJECT_ID" wizardCaption="ASSIGNMENT SUBMISSION SUBJECT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_SUBMISSION_SUBJECT_ID" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_ASSIGNMENT_SUBMISSION_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="53" visible="True" name="Sorter_ASSIGNMENT_SUBMISSION_STUDENT_ID" column="ASSIGNMENT_SUBMISSION.STUDENT_ID" wizardCaption="ASSIGNMENT SUBMISSION STUDENT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_SUBMISSION_STUDENT_ID" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_ASSIGNMENT_SUBMISSION_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="54" visible="True" name="Sorter_ASSIGNMENT_ID" column="ASSIGNMENT_ID" wizardCaption="ASSIGNMENT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_ID" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="55" visible="True" name="Sorter_SUBMISSION_ID" column="SUBMISSION_ID" wizardCaption="SUBMISSION ID" wizardSortingType="SimpleDir" wizardControl="SUBMISSION_ID" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_SUBMISSION_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="56" visible="True" name="Sorter_RECEIVED_DATE" column="RECEIVED_DATE" wizardCaption="RECEIVED DATE" wizardSortingType="SimpleDir" wizardControl="RECEIVED_DATE" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_RECEIVED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="57" visible="True" name="Sorter_RETURNED_DATE" column="RETURNED_DATE" wizardCaption="RETURNED DATE" wizardSortingType="SimpleDir" wizardControl="RETURNED_DATE" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_RETURNED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="58" visible="True" name="Sorter_ASSIGNMENT_SUBMISSION_STAFF_ID" column="ASSIGNMENT_SUBMISSION.STAFF_ID" wizardCaption="ASSIGNMENT SUBMISSION STAFF ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_SUBMISSION_STAFF_ID" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_ASSIGNMENT_SUBMISSION_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="59" visible="True" name="Sorter_COMMENTS" column="COMMENTS" wizardCaption="COMMENTS" wizardSortingType="SimpleDir" wizardControl="COMMENTS" PathID="ASSIGNMENT_SUBMISSION_STU1Sorter_COMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="60" fieldSourceType="DBColumn" dataType="Integer" html="False" name="ASSIGNMENT_SUBMISSION_SUBJECT_ID" fieldSource="ASSIGNMENT_SUBMISSION_SUBJECT_ID" required="True" caption="ASSIGNMENT SUBMISSION SUBJECT ID" wizardCaption="ASSIGNMENT SUBMISSION SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ASSIGNMENT_SUBMISSION_STU1ASSIGNMENT_SUBMISSION_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="61" fieldSourceType="DBColumn" dataType="Float" html="False" name="ASSIGNMENT_SUBMISSION_STUDENT_ID" fieldSource="ASSIGNMENT_SUBMISSION_STUDENT_ID" required="True" caption="ASSIGNMENT SUBMISSION STUDENT ID" wizardCaption="ASSIGNMENT SUBMISSION STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ASSIGNMENT_SUBMISSION_STU1ASSIGNMENT_SUBMISSION_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="62" fieldSourceType="DBColumn" dataType="Integer" html="False" name="ASSIGNMENT_ID" fieldSource="ASSIGNMENT_ID" required="True" caption="ASSIGNMENT ID" wizardCaption="ASSIGNMENT ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ASSIGNMENT_SUBMISSION_STU1ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="63" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBMISSION_ID" fieldSource="SUBMISSION_ID" required="True" caption="SUBMISSION ID" wizardCaption="SUBMISSION ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="ASSIGNMENT_SUBMISSION_STU1SUBMISSION_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="RECEIVED_DATE" fieldSource="RECEIVED_DATE" required="True" caption="RECEIVED DATE" wizardCaption="RECEIVED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSION_STU1RECEIVED_DATE" format="dd/mm/yy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="66" name="DatePicker_RECEIVED_DATE" control="RECEIVED_DATE" wizardSatellite="True" wizardControl="RECEIVED_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="ASSIGNMENT_SUBMISSION_STU1DatePicker_RECEIVED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<TextBox id="68" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="RETURNED_DATE" fieldSource="RETURNED_DATE" required="False" caption="RETURNED DATE" wizardCaption="RETURNED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="ASSIGNMENT_SUBMISSION_STU1RETURNED_DATE" format="dd/mm/yy" validationRule="RETURNED_DATE.Value &lt;= Now()" validationText="Returned Date must be On or Before Today">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="69" name="DatePicker_RETURNED_DATE" control="RETURNED_DATE" wizardSatellite="True" wizardControl="RETURNED_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="ASSIGNMENT_SUBMISSION_STU1DatePicker_RETURNED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<ListBox id="70" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="ASSIGNMENT_SUBMISSION_STAFF_ID" fieldSource="MARKERID" required="False" caption="MARKER ID" wizardCaption="ASSIGNMENT SUBMISSION STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="ASSIGNMENT_SUBMISSION_STU1ASSIGNMENT_SUBMISSION_STAFF_ID" connection="connDECVPRODSQL2005" dataSource="STAFF" orderBy="STAFF_ID" boundColumn="STAFF_ID" textColumn="STAFF_ID">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="80" tableName="STAFF" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="81" tableName="STAFF" fieldName="STAFF_ID"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Navigator id="72" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="True" wizardImagesScheme="Blueprint" PathID="ASSIGNMENT_SUBMISSION_STU1Navigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="73" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="ASSIGNMENT_SUBMISSION_STU1Button_Submit">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="74" message="Submit records?" eventType="Client"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="75" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ASSIGNMENT_SUBMISSION_STU1Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="71" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENTS" caption="COMMENTS" fieldSource="COMMENTS" required="False" PathID="ASSIGNMENT_SUBMISSION_STU1COMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="95" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" defaultValue="Unchecked" name="checkboxDelete" PathID="ASSIGNMENT_SUBMISSION_STU1checkboxDelete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="107" message="You Really Want to Delete this Assignment? \nIt cannot come back if you change your mind."/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</CheckBox>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="91"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="19" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STUDENT_SUBJECT.ENROLMENT_YEAR=year(getdate())"/>
				<TableParameter id="49" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.STUDENT_ID" parameterSource="s_STUDENT_SUBJECT_STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="50" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.SUBJECT_ID" parameterSource="s_STUDENT_SUBJECT_SUBJECT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="2"/>
				<TableParameter id="51" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.STAFF_ID" parameterSource="s_STUDENT_SUBJECT_STAFF_ID" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="3"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="124" tableName="ASSIGNMENT_SUBMISSION"/>
<JoinTable id="125" tableName="STUDENT_SUBJECT"/>
</JoinTables>
			<JoinLinks>
				<JoinTable2 id="6" tableLeft="ASSIGNMENT_SUBMISSION" tableRight="STUDENT_SUBJECT" fieldLeft="ASSIGNMENT_SUBMISSION.STUDENT_ID" fieldRight="STUDENT_SUBJECT.STUDENT_ID" joinType="inner" conditionType="Equal"/>
				<JoinTable2 id="7" tableLeft="ASSIGNMENT_SUBMISSION" tableRight="STUDENT_SUBJECT" fieldLeft="ASSIGNMENT_SUBMISSION.ENROLMENT_YEAR" fieldRight="STUDENT_SUBJECT.ENROLMENT_YEAR" joinType="inner" conditionType="Equal"/>
				<JoinTable2 id="8" tableLeft="ASSIGNMENT_SUBMISSION" tableRight="STUDENT_SUBJECT" fieldLeft="ASSIGNMENT_SUBMISSION.SUBJECT_ID" fieldRight="STUDENT_SUBJECT.SUBJECT_ID" joinType="inner" conditionType="Equal"/>
			</JoinLinks>
			<Fields>
				<Field id="9" tableName="ASSIGNMENT_SUBMISSION" fieldName="ASSIGNMENT_SUBMISSION.SUBJECT_ID" alias="ASSIGNMENT_SUBMISSION_SUBJECT_ID"/>
				<Field id="11" tableName="ASSIGNMENT_SUBMISSION" fieldName="ASSIGNMENT_ID"/>
				<Field id="12" tableName="ASSIGNMENT_SUBMISSION" fieldName="SUBMISSION_ID"/>
				<Field id="13" fieldName="RECEIVED_DATE" isExpression="False" alias="received_date" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="14" fieldName="RETURNED_DATE" isExpression="False" alias="returned_date" tableName="ASSIGNMENT_SUBMISSION"/>
				<Field id="16" tableName="ASSIGNMENT_SUBMISSION" fieldName="COMMENTS"/>
				<Field id="17" tableName="STUDENT_SUBJECT" fieldName="STUDENT_SUBJECT.STAFF_ID" alias="STUDENT_SUBJECT_STAFF_ID"/>
				<Field id="18" tableName="ASSIGNMENT_SUBMISSION" fieldName="ASSIGNMENT_SUBMISSION.STAFF_ID" alias="MARKERID"/>
				<Field id="31" tableName="ASSIGNMENT_SUBMISSION" fieldName="ASSIGNMENT_SUBMISSION.STUDENT_ID" alias="ASSIGNMENT_SUBMISSION_STUDENT_ID"/>
				<Field id="32" tableName="ASSIGNMENT_SUBMISSION" fieldName="ASSIGNMENT_SUBMISSION.ENROLMENT_YEAR" alias="ASSIGNMENT_SUBMISSION_ENROLMENT_YEAR"/>
				<Field id="64" tableName="ASSIGNMENT_SUBMISSION" fieldName="RECEIVED_DATE"/>
				<Field id="67" tableName="ASSIGNMENT_SUBMISSION" fieldName="RETURNED_DATE"/>
			</Fields>
			<PKFields>
				<PKField id="83" tableName="ASSIGNMENT_SUBMISSION" fieldName="STUDENT_ID" dataType="Float" alias="ASSIGNMENT_SUBMISSION_STUDENT_ID"/>
				<PKField id="84" tableName="ASSIGNMENT_SUBMISSION" fieldName="ENROLMENT_YEAR" dataType="Float" alias="ASSIGNMENT_SUBMISSION_ENROLMENT_YEAR"/>
				<PKField id="85" tableName="ASSIGNMENT_SUBMISSION" fieldName="SUBJECT_ID" dataType="Integer" alias="ASSIGNMENT_SUBMISSION_SUBJECT_ID"/>
				<PKField id="86" tableName="ASSIGNMENT_SUBMISSION" fieldName="ASSIGNMENT_ID" dataType="Integer"/>
				<PKField id="87" tableName="ASSIGNMENT_SUBMISSION" fieldName="SUBMISSION_ID" dataType="Integer"/>
				<PKField id="88" tableName="STUDENT_SUBJECT" fieldName="STUDENT_ID" dataType="Float"/>
				<PKField id="89" tableName="STUDENT_SUBJECT" fieldName="ENROLMENT_YEAR" dataType="Float"/>
				<PKField id="90" tableName="STUDENT_SUBJECT" fieldName="SUBJECT_ID" dataType="Integer"/>
			</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
<TableParameter id="108" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_SUBMISSION_STUDENT_ID"/>
<TableParameter id="109" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_SUBMISSION_ENROLMENT_YEAR"/>
<TableParameter id="110" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_SUBMISSION_SUBJECT_ID"/>
<TableParameter id="111" conditionType="Parameter" useIsNull="False" field="ASSIGNMENT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_ID"/>
<TableParameter id="112" conditionType="Parameter" useIsNull="False" field="SUBMISSION_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="SUBMISSION_ID"/>
<TableParameter id="116" conditionType="Expression" useIsNull="False" parameterType="URL" searchConditionType="Equal" logicOperator="And" expression="ENROLMENT_YEAR=year(getdate())"/>
</UConditions>
			<UFormElements>
<CustomParameter id="120" field="RECEIVED_DATE" dataType="Date" parameterType="Control" parameterSource="RECEIVED_DATE" format="dd/mm/yy"/>
<CustomParameter id="121" field="RETURNED_DATE" dataType="Date" parameterType="Control" parameterSource="RETURNED_DATE" format="dd/mm/yy"/>
<CustomParameter id="122" field="ASSIGNMENT_SUBMISSION.STAFF_ID" dataType="Text" parameterType="Control" parameterSource="ASSIGNMENT_SUBMISSION_STAFF_ID" defaultValue="&quot;        &quot;" omitIfEmpty="False"/>
<CustomParameter id="123" field="COMMENTS" dataType="Text" parameterType="Control" parameterSource="COMMENTS"/>
</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions>
				<TableParameter id="96" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_SUBMISSION_STUDENT_ID"/>
				<TableParameter id="97" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_SUBMISSION_ENROLMENT_YEAR"/>
				<TableParameter id="98" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_SUBMISSION_SUBJECT_ID"/>
				<TableParameter id="99" conditionType="Parameter" useIsNull="False" field="ASSIGNMENT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_ID"/>
				<TableParameter id="100" conditionType="Parameter" useIsNull="False" field="SUBMISSION_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="SUBMISSION_ID"/>
			</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="33" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ASSIGNMENT_SUBMISSION_STU" wizardCaption="Search ASSIGNMENT SUBMISSION STU " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Despatch_AssignmentMaintain.ccp" PathID="ASSIGNMENT_SUBMISSION_STU">
			<Components>
				<Link id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Despatch_AssignmentMaintain.ccp" removeParameters="s_STUDENT_SUBJECT_STUDENT_ID;s_STUDENT_SUBJECT_SUBJECT_ID;s_STUDENT_SUBJECT_STAFF_ID" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="ASSIGNMENT_SUBMISSION_STUClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="35" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="ASSIGNMENT_SUBMISSION_STUButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="36" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_STUDENT_SUBJECT_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="ASSIGNMENT_SUBMISSION_STUs_STUDENT_SUBJECT_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_STUDENT_SUBJECT_SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="ASSIGNMENT_SUBMISSION_STUs_STUDENT_SUBJECT_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_STUDENT_SUBJECT_STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="ASSIGNMENT_SUBMISSION_STUs_STUDENT_SUBJECT_STAFF_ID" sourceType="Table" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" activeCollection="TableParameters" orderBy="STAFF_ID" boundColumn="STAFF_ID" textColumn="staffname" defaultValue="&quot;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters>
						<TableParameter id="78" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS=1"/>
						<TableParameter id="79" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="TEACHER_FLAG=1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="92" tableName="View_StaffList_Active_Inactive" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="93" tableName="View_StaffList_Active_Inactive" fieldName="staff_ID"/>
						<Field id="94" tableName="View_StaffList_Active_Inactive" fieldName="staffname"/>
					</Fields>
					<PKFields/>
				</ListBox>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Despatch_AssignmentMaintain.aspx" forShow="True" url="Despatch_AssignmentMaintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Despatch_AssignmentMaintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Despatch_AssignmentMaintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="82" form="ASSIGNMENT_SUBMISSION_STU" name="s_STUDENT_SUBJECT_STUDENT_ID"/>
			</Actions>
		</Event>
	</Events>
</Page>
