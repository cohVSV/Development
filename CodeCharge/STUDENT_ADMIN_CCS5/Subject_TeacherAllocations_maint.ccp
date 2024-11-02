<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="20" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_TEACHER_SUBJECT_S" connection="connDECVPRODSQL2005" dataSource="SUBJECT_TEACHER, SUBJECT, STAFF" pageSizeLimit="100" wizardGridPageSize="True" wizardUseSearch="True" allowCancel="True" wizardSubmitConfirmation="False" wizardCaption="Manage Course Developer Staff" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Staff or Subjects Found!" wizardGridKey=" " wizardGridPaging="Simple" wizardAddNbsp="False" wizardTotalRecords="True" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="SUBJECT_TEACHER_SUBJECT_S" composition="6" isParent="True" wizardUsePageScroller="True" editableComponentTypeString="EditableGrid" childId="40" customUpdateType="Table" activeCollection="DConditions" activeTableType="customDelete" customUpdate="SUBJECT_TEACHER" orderBy="SUBJECT_ABBREV" deleteControl="checkDelete" customDeleteType="Table" customDelete="SUBJECT_TEACHER">
			<Components>
				<Sorter id="25" visible="True" name="Sorter_SUBJECT_ABBREV" column="SUBJECT_ABBREV" wizardCaption="SUBJECT ABBREV" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ABBREV" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_SUBJECT_TITLE" column="SUBJECT_TITLE" wizardCaption="SUBJECT TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_SCAFFOLD_COURSEDEV_FLAG" column="SCAFFOLD_COURSEDEV_FLAG" wizardCaption="SCAFFOLD COURSEDEV FLAG" wizardSortingType="SimpleDir" wizardControl="SCAFFOLD_COURSEDEV_FLAG" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SCAFFOLD_COURSEDEV_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_SCAFFOLD_COURSEDEV_UPDATED" column="SCAFFOLD_COURSEDEV_UPDATED" wizardCaption="SCAFFOLD COURSEDEV UPDATED" wizardSortingType="SimpleDir" wizardControl="SCAFFOLD_COURSEDEV_UPDATED" wizardAddNbsp="False" PathID="SUBJECT_TEACHER_SUBJECT_SSorter_SCAFFOLD_COURSEDEV_UPDATED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT ABBREV" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT TITLE" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Memo" html="False" generateSpan="False" name="FIRSTNAME" fieldSource="FIRSTNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="FIRSTNAME" PathID="SUBJECT_TEACHER_SUBJECT_SFIRSTNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="SCAFFOLD_COURSEDEV_FLAG" fieldSource="SCAFFOLD_COURSEDEV_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SCAFFOLD COURSEDEV FLAG" caption="SCAFFOLD COURSE DEV?" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_FLAG" dataSource="0;No;1;Yes">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="36" fieldSourceType="DBColumn" dataType="Date" name="LAST_UPDATED" fieldSource="SUBJECT_TEACHER_LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" wizardCaption="SCAFFOLD COURSEDEV UPDATED" caption="Last Updated" required="False" unique="False" PathID="SUBJECT_TEACHER_SUBJECT_SLAST_UPDATED" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="44" name="LAST_UPDATED" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="30" fieldSourceType="DBColumn" dataType="Text" name="SUBJECT_TEACHER_STAFF_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" wizardCaption="SUBJECT TEACHER STAFF ID" caption="SUBJECT TEACHER STAFF ID" required="True" unique="False" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_TEACHER_STAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="29" fieldSourceType="DBColumn" dataType="Integer" name="SUBJECT_TEACHER_SUBJECT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" wizardCaption="SUBJECT TEACHER SUBJECT ID" caption="SUBJECT TEACHER SUBJECT ID" required="True" unique="False" PathID="SUBJECT_TEACHER_SUBJECT_SSUBJECT_TEACHER_SUBJECT_ID" fieldSource="SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="34" fieldSourceType="DBColumn" dataType="Memo" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SURNAME" PathID="SUBJECT_TEACHER_SUBJECT_SSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="lblLastUpdated" PathID="SUBJECT_TEACHER_SUBJECT_SlblLastUpdated" fieldSource="SUBJECT_TEACHER_LAST_ALTERED_DATE" format="d mmm yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="113" size="10" type="Simple" pageSizes="20;80;250;500" name="Navigator1" PathID="SUBJECT_TEACHER_SUBJECT_SNavigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="Images" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardPageSize="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="114" urlType="Relative" enableValidation="True" isDefault="False" name="ButtonUpdate" PathID="SUBJECT_TEACHER_SUBJECT_SButtonUpdate" operation="Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="115" urlType="Relative" enableValidation="False" isDefault="False" name="ButtonCancel" PathID="SUBJECT_TEACHER_SUBJECT_SButtonCancel" operation="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="198" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="TotalRecords" PathID="SUBJECT_TEACHER_SUBJECT_STotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="199"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="343" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="rbAllocatable" PathID="SUBJECT_TEACHER_SUBJECT_SrbAllocatable" caption="Allocatable" dataSource="1;Yes!;0;NOT to this Teacher" fieldSource="ALLOCATABLE_FLAG">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="391"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
				<TextBox id="344" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="TIME_FRACTION" PathID="SUBJECT_TEACHER_SUBJECT_STIME_FRACTION" caption="Time Fraction" fieldSource="SUBJECT_TIMEFRACTION" format="0.00" defaultValue="0.0" required="True">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Minimum Value" actionCategory="Validation" id="345" minimumValue="0.00" errorMessage="Time Fraction must be 0.0 or greater" eventType="Server"/>
								<Action actionName="Validate Maximum Value" actionCategory="Validation" id="346" maximumValue="1.1" errorMessage="Time Fraction must not exceed 1.1 EFT" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="386" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_UPDATED" fieldSource="SCAFFOLD_COURSEDEV_UPDATED" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="SCAFFOLD COURSEDEV UPDATED" caption="SCAFFOLD COURSEDEV UPDATED" required="False" unique="False" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_UPDATED" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="387" sourceType="Expression" sourceName="Now()" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="388" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="SCAFFOLD_COURSEDEV_FLAG1" fieldSource="SCAFFOLD_COURSEDEV_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SCAFFOLD COURSEDEV FLAG" caption="SCAFFOLD COURSEDEV FLAG" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="SUBJECT_TEACHER_SUBJECT_SSCAFFOLD_COURSEDEV_FLAG1" dataSource="0;No;1;Yes" defaultValue="0">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</Hidden>
				<CheckBox id="429" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" defaultValue="Unchecked" name="checkDelete" PathID="SUBJECT_TEACHER_SUBJECT_ScheckDelete" checkedValue="True" uncheckedValue="False" caption="Delete tickbox">
<Components/>
<Events/>
<Attributes/>
<Features/>
</CheckBox>
</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="406" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT_TEACHER.STAFF_ID" leftBrackets="2" logicOperator="Or" orderNumber="2" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains" searchFormParameter="True"/>
<TableParameter id="407" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT.SUBJECT_ABBREV" logicOperator="Or" orderNumber="3" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains" searchFormParameter="True"/>
<TableParameter id="408" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT.SUBJECT_TITLE" logicOperator="Or" orderNumber="4" parameterSource="s_keyword" parameterType="URL" rightBrackets="0" searchConditionType="Contains" searchFormParameter="True"/>
<TableParameter id="409" conditionType="Parameter" useIsNull="False" dataType="Text" field="SURNAME" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
<TableParameter id="410" conditionType="Parameter" useIsNull="False" dataType="Text" field="FIRSTNAME" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
<TableParameter id="411" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_TEACHER.SUBJECT_ID" logicOperator="And" parameterSource="s_SUBJECT_ID" parameterType="URL" rightBrackets="1" searchConditionType="Equal"/>
<TableParameter id="412" conditionType="Parameter" useIsNull="False" dataType="Float" defaultValue="0" field="SUBJECT_TIMEFRACTION" logicOperator="And" parameterSource="rbShow" parameterType="URL" searchConditionType="GreaterThan"/>
</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="401" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="SUBJECT_TEACHER"/>
<JoinTable id="402" posHeight="180" posLeft="191" posTop="10" posWidth="160" tableName="SUBJECT"/>
<JoinTable id="403" posHeight="180" posLeft="372" posTop="10" posWidth="160" tableName="STAFF"/>
</JoinTables>
			<JoinLinks>
				<JoinTable2 id="404" fieldLeft="SUBJECT_TEACHER.SUBJECT_ID" fieldRight="SUBJECT.SUBJECT_ID" joinType="inner" tableLeft="SUBJECT_TEACHER" tableRight="SUBJECT"/>
<JoinTable2 id="405" fieldLeft="SUBJECT_TEACHER.STAFF_ID" fieldRight="STAFF.STAFF_ID" joinType="inner" tableLeft="SUBJECT_TEACHER" tableRight="STAFF"/>
</JoinLinks>
			<Fields>
				<Field id="413" fieldName="SUBJECT_ABBREV" tableName="SUBJECT"/>
<Field id="414" fieldName="SUBJECT_TITLE" tableName="SUBJECT"/>
<Field id="415" alias="FIRSTNAME" fieldName="rtrim(FIRSTNAME)" isExpression="True"/>
<Field id="416" alias="SURNAME" fieldName="rtrim(SURNAME)" isExpression="True"/>
<Field id="417" alias="SUBJECT_ID" fieldName="SUBJECT_TEACHER.SUBJECT_ID" tableName="SUBJECT_TEACHER"/>
<Field id="418" alias="STAFF_ID" fieldName="SUBJECT_TEACHER.STAFF_ID" tableName="SUBJECT_TEACHER"/>
<Field id="419" fieldName="SUBJECT_TIMEFRACTION" tableName="SUBJECT_TEACHER"/>
<Field id="420" fieldName="ALLOCATABLE_FLAG" tableName="SUBJECT_TEACHER"/>
<Field id="421" alias="SUBJECT_TEACHER_LAST_ALTERED_BY" fieldName="SUBJECT_TEACHER.LAST_ALTERED_BY" tableName="SUBJECT_TEACHER"/>
<Field id="422" alias="SUBJECT_TEACHER_LAST_ALTERED_DATE" fieldName="SUBJECT_TEACHER.LAST_ALTERED_DATE" tableName="SUBJECT_TEACHER"/>
<Field id="423" alias="display_coursedev_flag" fieldName="(case when SCAFFOLD_COURSEDEV_FLAG = 1 then 'Yes' else 'No' end)" isExpression="True"/>
<Field id="424" fieldName="SCAFFOLD_COURSEDEV_FLAG" tableName="SUBJECT_TEACHER"/>
<Field id="425" fieldName="SCAFFOLD_COURSEDEV_UPDATED" tableName="SUBJECT_TEACHER"/>
</Fields>
			<PKFields>
				<PKField id="426" alias="STAFF_ID" dataType="Text" fieldName="STAFF_ID" tableName="SUBJECT_TEACHER"/>
<PKField id="427" dataType="Integer" fieldName="SUBJECT_ID" tableName="SUBJECT"/>
<PKField id="428" dataType="Text" fieldName="STAFF_ID" tableName="STAFF"/>
</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="116" field="SCAFFOLD_COURSEDEV_FLAG" dataType="Integer" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_FLAG"/>
				<CustomParameter id="117" field="SCAFFOLD_COURSEDEV_UPDATED" dataType="Date" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_UPDATED"/>
				<CustomParameter id="118" field="SUBJECT_TEACHER.STAFF_ID" dataType="Text" parameterType="Control" parameterSource="SUBJECT_TEACHER_STAFF_ID"/>
				<CustomParameter id="119" field="SUBJECT_TEACHER.SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="SUBJECT_TEACHER_SUBJECT_ID"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="204" conditionType="Parameter" useIsNull="False" field="STAFF_ID" dataType="Text" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="STAFF_ID"/>
				<TableParameter id="205" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="SUBJECT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="213" field="SCAFFOLD_COURSEDEV_FLAG" dataType="Integer" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_FLAG1" omitIfEmpty="True"/>
				<CustomParameter id="214" field="SCAFFOLD_COURSEDEV_UPDATED" dataType="Date" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_UPDATED"/>
				<CustomParameter id="215" field="SUBJECT_TIMEFRACTION" dataType="Float" parameterType="Control" parameterSource="TIME_FRACTION" omitIfEmpty="False" defaultValue="0.0"/>
				<CustomParameter id="216" field="ALLOCATABLE_FLAG" dataType="Integer" parameterType="Control" parameterSource="rbAllocatable" omitIfEmpty="False" defaultValue="0"/>
				<CustomParameter id="398" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Control" defaultValue="NOW()" omitIfEmpty="False" parameterSource="LAST_UPDATED"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions>
<TableParameter id="430" conditionType="Parameter" useIsNull="False" field="STAFF_ID" dataType="Text" parameterType="DataSourceColumn" parameterSource="STAFF_ID" searchConditionType="Equal" logicOperator="And"/>
<TableParameter id="431" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" parameterType="DataSourceColumn" parameterSource="SUBJECT_ID" searchConditionType="Equal" logicOperator="And"/>
</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="40" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_SUBJECT_TEACHER" searchIds="40" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="Or" wizardInteractiveSearch="True" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="EditableGrid" returnPage="Subject_TeacherAllocations_maint.ccp" PathID="SUBJECT_SUBJECT_TEACHER" composition="6" connection="connDECVPRODSQL2005" dataSource="SUBJECT_TEACHER" customDeleteType="SQL" customDelete="UPDATE SUBJECT_TEACHER 
SET ALLOCATABLE_FLAG = 0 
WHERE ALLOCATABLE_FLAG = 1 ">
			<Components>
				<Link id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Subject_TeacherAllocations_maint.ccp" removeParameters="s_keyword;s_SUBJECT_ID;rbShow" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="SUBJECT_SUBJECT_TEACHERClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="42" urlType="Relative" enableValidation="False" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SUBJECT_SUBJECT_TEACHERButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardIsPassword="False" wizardCaption="Keyword" caption="Search for..." required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="SUBJECT_SUBJECT_TEACHERs_keyword">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="69" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="s_SUBJECT_ID" wizardEmptyCaption="Select Value" PathID="SUBJECT_SUBJECT_TEACHERs_SUBJECT_ID" caption="Subject" connection="connDECVPRODSQL2005" dataSource="select * from view_ReportParams_Subjects
ORDER BY SUBJECT_TITLE" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<Button id="120" urlType="Relative" enableValidation="True" isDefault="False" name="ButtonResetDevToNo" PathID="SUBJECT_SUBJECT_TEACHERButtonResetDevToNo" operation="Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="122" message="This will reset ALL Teachers in ALL Subjects to [Allocatable] of NO?\n(you must also select 'Yes' on Confirm Reset first)"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="392" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="rbConfirm" PathID="SUBJECT_SUBJECT_TEACHERrbConfirm" dataSource="0;&lt;font color=#00FF00&gt;No reset&lt;/font&gt;;1;&lt;font color=#FF0000&gt;Yes (Reset)&lt;/font&gt;" defaultValue="0" required="True" caption="Confirm Reset" errorControl="lblConfirmError">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Minimum Value" actionCategory="Validation" id="393" name="rbConfirm" minimumValue="1" errorMessage="Must select 'Yes' to confirm Reset"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
				<Label id="394" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblConfirmError" PathID="SUBJECT_SUBJECT_TEACHERlblConfirmError">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="400" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="rbShow" PathID="SUBJECT_SUBJECT_TEACHERrbShow" dataSource="0;Active only (TF &gt; 0);-1;All Teachers" defaultValue="0" caption="Search Show...">
<Components/>
<Events/>
<TableParameters/>
<SPParameters/>
<SQLParameters/>
<JoinTables/>
<JoinLinks/>
<Fields/>
<PKFields/>
<Attributes/>
<Features/>
</RadioButton>
</Components>
			<Events/>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="217" tableName="SUBJECT_TEACHER"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="124" field="SUBJECT_TEACHER_SUBJECT_ID,SUBJECT_TEACHER_STAFF_ID,SUBJECT_ABBREV,SUBJECT_TITLE" dataType="Text" parameterType="Control" parameterSource="s_keyword"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="125" field="SUBJECT_TEACHER_SUBJECT_ID,SUBJECT_TEACHER_STAFF_ID,SUBJECT_ABBREV,SUBJECT_TITLE" dataType="Text" parameterType="Control" parameterSource="s_keyword"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Record>
		<Record id="93" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_TEACHER" connection="connDECVPRODSQL2005" dataSource="SUBJECT_TEACHER" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="SUBJECT_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="False" wizardCaption="Add Subject Course Developer" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Horizontal" templatePageRecord="C:\Program Files (x86)\CodeChargeStudio5//Templates//Record//Horizontal.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="SUBJECT_TEACHER" customInsertType="Table" activeCollection="IFormElements" activeTableType="SUBJECT_TEACHER" customInsert="SUBJECT_TEACHER">
			<Components>
				<ListBox id="94" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SUBJECT ID" caption="SUBJECT ID" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" dataSource="select * from view_ReportParams_Subjects
ORDER BY SUBJECT_TITLE" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel" PathID="SUBJECT_TEACHERSUBJECT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="95" name="SUBJECT_ID" sourceType="URL" sourceName="s_SUBJECT_ID"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="96" conditionType="Expression" useIsNull="False" expression="STATUS = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<ListBox id="101" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STAFF ID" caption="STAFF ID" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" dataSource="View_StaffList_Active_Inactive" boundColumn="staff_ID" textColumn="staffname" PathID="SUBJECT_TEACHERSTAFF_ID">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="219" conditionType="Expression" useIsNull="False" expression="status = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="218" posHeight="152" posLeft="10" posTop="10" posWidth="125" tableName="View_StaffList_Active_Inactive"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="220" fieldName="*"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<Hidden id="104" fieldSourceType="DBColumn" dataType="Date" name="SCAFFOLD_COURSEDEV_UPDATED" fieldSource="SCAFFOLD_COURSEDEV_UPDATED" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="SCAFFOLD COURSEDEV UPDATED" caption="SCAFFOLD COURSEDEV UPDATED" required="False" unique="False" PathID="SUBJECT_TEACHERSCAFFOLD_COURSEDEV_UPDATED" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="221" sourceType="Expression" sourceName="Now()" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Button id="111" urlType="Relative" enableValidation="True" isDefault="False" name="ButtonInsert" PathID="SUBJECT_TEACHERButtonInsert" operation="Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="112" urlType="Relative" enableValidation="False" isDefault="False" name="ButtonCancel" PathID="SUBJECT_TEACHERButtonCancel" operation="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="103" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="False" returnValueType="Number" name="SCAFFOLD_COURSEDEV_FLAG" fieldSource="SCAFFOLD_COURSEDEV_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SCAFFOLD COURSEDEV FLAG" caption="SCAFFOLD COURSEDEV FLAG" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="SUBJECT_TEACHERSCAFFOLD_COURSEDEV_FLAG" dataSource="0;No;1;Yes" defaultValue="0">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="347" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="TIME_FRACTION" PathID="SUBJECT_TEACHERTIME_FRACTION" caption="Time Fraction" fieldSource="SUBJECT_TIMEFRACTION" format="0.00" defaultValue="0.0" required="True">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Minimum Value" actionCategory="Validation" id="348" minimumValue="0.00" errorMessage="Time Fraction must be 0.0 or greater"/>
								<Action actionName="Validate Maximum Value" actionCategory="Validation" id="349" maximumValue="1.1" errorMessage="Time Fraction must not exceed 1.1 EFT"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="389" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="rbAllocatable" PathID="SUBJECT_TEACHERrbAllocatable" caption="Allocatable" dataSource="1;Yes!;0;NOT to this Teacher" fieldSource="ALLOCATABLE_FLAG">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="390"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
			</Components>
			<Events>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="399"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="356" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT_ID" logicOperator="And" orderNumber="1" parameterSource="SUBJECT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="355" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="SUBJECT_TEACHER"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="357" fieldName="*"/>
			</Fields>
			<PKFields>
				<PKField id="358" dataType="Text" fieldName="STAFF_ID" tableName="SUBJECT_TEACHER"/>
			</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="107" field="SUBJECT_ID" dataType="Integer" parameterType="Control" parameterSource="SUBJECT_ID" omitIfEmpty="True"/>
				<CustomParameter id="108" field="STAFF_ID" dataType="Text" parameterType="Control" parameterSource="STAFF_ID" omitIfEmpty="True"/>
				<CustomParameter id="109" field="SCAFFOLD_COURSEDEV_FLAG" dataType="Integer" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_FLAG" omitIfEmpty="True"/>
				<CustomParameter id="110" field="SCAFFOLD_COURSEDEV_UPDATED" dataType="Date" parameterType="Control" parameterSource="SCAFFOLD_COURSEDEV_UPDATED" omitIfEmpty="True"/>
				<CustomParameter id="200" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" defaultValue="&quot;unknown&quot;" omitIfEmpty="False" parameterSource="dbutility.userid.tostring.toupper"/>
				<CustomParameter id="201" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="Now()"/>
				<CustomParameter id="202" field="SUBJECT_TIMEFRACTION" dataType="Float" parameterType="Control" omitIfEmpty="False" parameterSource="TIME_FRACTION" defaultValue="0.0"/>
				<CustomParameter id="203" field="ALLOCATABLE_FLAG" dataType="Integer" parameterType="Control" omitIfEmpty="False" parameterSource="rbAllocatable" defaultValue="0"/>
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
			<Features/>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Subject_TeacherAllocations_maint.aspx" forShow="True" url="Subject_TeacherAllocations_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Subject_TeacherAllocations_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Subject_TeacherAllocations_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
