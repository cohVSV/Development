<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="40" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ManageLADs" connection="connDECVPRODSQL2005" dataSource="STAFF, STAFF_LAD_ALLOCATION" pageSizeLimit="100" wizardGridPageSize="True" wizardUseSearch="True" allowCancel="True" wizardSubmitConfirmation="False" wizardCaption="Manage Course Developer Staff" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Staff or Subjects Found!" wizardGridKey=" " wizardGridPaging="Simple" wizardAddNbsp="False" wizardTotalRecords="True" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="ManageLADs" composition="6" isParent="True" wizardUsePageScroller="True" editableComponentTypeString="EditableGrid" childId="40" customUpdateType="Table" activeCollection="DConditions" activeTableType="customDelete" customUpdate="STAFF_LAD_ALLOCATION" orderBy="SURNAME" deleteControl="checkDelete" returnPage="Staff_LAdAllocation_maint.ccp" parameterTypeListName="CustomTableParameterTypeList" customDeleteType="Table" customDelete="STAFF_LAD_ALLOCATION">
			<Components>
				<Sorter id="28" visible="True" name="Sorter_SCAFFOLD_COURSEDEV_UPDATED" column="STAFF_LAD_ALLOCATION.LAST_ALTERED_DATE" wizardCaption="SCAFFOLD COURSEDEV UPDATED" wizardSortingType="SimpleDir" wizardControl="SCAFFOLD_COURSEDEV_UPDATED" wizardAddNbsp="False" PathID="ManageLADsSorter_SCAFFOLD_COURSEDEV_UPDATED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRSTNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="FIRSTNAME" PathID="ManageLADsFIRSTNAME" fieldSource="STAFF_FIRSTNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="STAFF_SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SURNAME" PathID="ManageLADsSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="lblLastUpdated" PathID="ManageLADslblLastUpdated" fieldSource="STAFF_LAD_ALLOCATION_LAST_ALTERED_DATE" format="d mmm yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="344" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="LAD_MAX_ALLOC" PathID="ManageLADsLAD_MAX_ALLOC" caption="Max. Students" fieldSource="LAD_MAX_ALLOC" format="0;(0)" defaultValue="12" required="True">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Minimum Value" actionCategory="Validation" id="345" minimumValue="0" errorMessage="Maximum Students must be 0 or greater" eventType="Server"/>
								<Action actionName="Validate Maximum Value" actionCategory="Validation" id="346" maximumValue="28" errorMessage="Maximum Students must not exceed 28" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="429" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" defaultValue="Unchecked" name="checkDelete" PathID="ManageLADscheckDelete" checkedValue="True" uncheckedValue="False" caption="Delete tickbox">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="496" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblStaffID" PathID="ManageLADslblStaffID" fieldSource="STAFF_ID" defaultValue="&quot;unknown&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="553" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="TotalRecords" PathID="ManageLADsTotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="554"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="557" urlType="Relative" enableValidation="True" isDefault="False" name="buttonUpdate" PathID="ManageLADsbuttonUpdate" operation="Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="558" urlType="Relative" enableValidation="False" isDefault="False" name="buttonCancel" PathID="ManageLADsbuttonCancel" operation="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="562" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="radioYEAR_LEVEL" PathID="ManageLADsradioYEAR_LEVEL" fieldSource="YEAR_LEVEL" caption="Year Level" dataSource="11;Yr 11;12;Yr 12" defaultValue="0" required="True">
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
			<Events>
				<Event name="AfterSubmit" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="555" sourceType="Session" sourceName="notifymessage" name="&quot;Items have been Updated&quot;"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="617" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF.SURNAME" leftBrackets="2" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
<TableParameter id="618" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF_LAD_ALLOCATION.STAFF_ID" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" searchConditionType="BeginsWith"/>
<TableParameter id="619" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF.FIRSTNAME" leftBrackets="0" logicOperator="And" parameterSource="s_keyword" parameterType="URL" rightBrackets="2" searchConditionType="Contains"/>
<TableParameter id="620" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="0" field="LAD_MAX_ALLOC" logicOperator="And" parameterSource="rbShow" parameterType="URL" searchConditionType="GreaterThan"/>
</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="614" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STAFF"/>
<JoinTable id="615" posHeight="152" posLeft="191" posTop="10" posWidth="160" tableName="STAFF_LAD_ALLOCATION"/>
</JoinTables>
			<JoinLinks>
				<JoinTable2 id="616" fieldLeft="STAFF.STAFF_ID" fieldRight="STAFF_LAD_ALLOCATION.STAFF_ID" joinType="inner" tableLeft="STAFF" tableRight="STAFF_LAD_ALLOCATION"/>
</JoinLinks>
			<Fields>
				<Field id="621" fieldName="LAD_MAX_ALLOC" tableName="STAFF_LAD_ALLOCATION"/>
<Field id="622" alias="STAFF_LAD_ALLOCATION_LAST_ALTERED_DATE" fieldName="STAFF_LAD_ALLOCATION.LAST_ALTERED_DATE" tableName="STAFF_LAD_ALLOCATION"/>
<Field id="623" alias="STAFF_SURNAME" fieldName="rtrim(SURNAME)" isExpression="True"/>
<Field id="624" alias="STAFF_FIRSTNAME" fieldName="rtrim(FIRSTNAME)" isExpression="True"/>
<Field id="625" fieldName="STAFF_LAD_ALLOCATION.STAFF_ID" tableName="STAFF_LAD_ALLOCATION"/>
<Field id="626" fieldName="YEAR_LEVEL" tableName="STAFF_LAD_ALLOCATION"/>
<Field id="627" fieldName="id" isExpression="False" tableName="STAFF_LAD_ALLOCATION"/>
</Fields>
			<PKFields>
				<PKField id="628" dataType="Text" fieldName="STAFF_ID" tableName="STAFF"/>
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
				<TableParameter id="613" conditionType="Parameter" useIsNull="False" field="id" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="id"/>
</UConditions>
			<UFormElements>
				<CustomParameter id="398" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" defaultValue="NOW()" omitIfEmpty="False" parameterSource="NOW()" DBFormat="yyyy-mm-dd HH:nn:ss"/>
				<CustomParameter id="470" field="LAD_MAX_ALLOC" dataType="Integer" parameterType="Control" parameterSource="LAD_MAX_ALLOC" format="0;(0)" defaultValue="0" omitIfEmpty="False"/>
				<CustomParameter id="497" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" defaultValue="&quot;unknown&quot;" omitIfEmpty="False" parameterSource="dbutility.userid.tostring.toupper"/>
				<CustomParameter id="564" field="YEAR_LEVEL" dataType="Integer" parameterType="Control" omitIfEmpty="True" parameterSource="radioYEAR_LEVEL"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters>
				<SQLParameter id="560" variable="STAFF_ID" parameterType="DataSourceColumn" dataType="Text" parameterSource="STAFF_ID"/>
				<SQLParameter id="612" variable="STAFF_LAD_ID" parameterType="DataSourceColumn" defaultValue="0" dataType="Integer" parameterSource="STAFF_LAD_ALLOCATION.id"/>
</DSQLParameters>
			<DConditions>
				<TableParameter id="430" conditionType="Parameter" useIsNull="False" field="STAFF_ID" dataType="Text" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="STAFF_ID"/>
				<TableParameter id="629" conditionType="Parameter" useIsNull="False" field="id" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="id"/>
</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="40" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="True" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_SUBJECT_TEACHER" searchIds="40" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="Or" wizardInteractiveSearch="True" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="EditableGrid" returnPage="Staff_LAdAllocation_maint.ccp" PathID="SUBJECT_SUBJECT_TEACHER" composition="6" connection="connDECVPRODSQL2005" dataSource="STAFF_LAD_ALLOCATION" customDeleteType="SQL" customDelete="UPDATE STAFF_LAD_ALLOCATION 
SET LAD_MAX_ALLOC = {maxstudents}" parameterTypeListName="ParameterTypeList" activeCollection="DSQLParameters">
			<Components>
				<Link id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Staff_LAdAllocation_maint.ccp" removeParameters="s_keyword;rbShow" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="SUBJECT_SUBJECT_TEACHERClearParameters">
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
				<Button id="120" urlType="Relative" enableValidation="True" isDefault="False" name="ButtonResetLAdsMax" PathID="SUBJECT_SUBJECT_TEACHERButtonResetLAdsMax" operation="Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="122" message="This will reset ALL LAds in the table to the entered Max Students?\n(you must also select 'Yes' on Confirm Reset first)"/>
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
				<RadioButton id="400" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="rbShow" PathID="SUBJECT_SUBJECT_TEACHERrbShow" defaultValue="0" caption="Search Show..." dataSource="0;Active LAds (Max &gt; 0);-1;All LADs">
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
				<TextBox id="432" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="maxstudents" PathID="SUBJECT_SUBJECT_TEACHERmaxstudents" defaultValue="12" required="True" caption="Reset Max Students">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="AfterDelete" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="559" sourceName="notifymessage" sourceType="Session" name="&quot;Boom! LAds reset!&quot;"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="433" posHeight="136" posLeft="191" posTop="10" posWidth="146" schemaName="dbo" tableName="STAFF_LAD_ALLOCATION"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="434" fieldName="*"/>
			</Fields>
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
			<DSQLParameters>
				<SQLParameter id="435" variable="maxstudents" parameterType="Control" defaultValue="14" dataType="Integer" parameterSource="maxstudents"/>
			</DSQLParameters>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Record>
		<Record id="93" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT_TEACHER" connection="connDECVPRODSQL2005" dataSource="STAFF_LAD_ALLOCATION" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="SUBJECT_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="False" wizardCaption="Add Subject Course Developer" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Horizontal" templatePageRecord="C:\Program Files (x86)\CodeChargeStudio5//Templates//Record//Horizontal.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="SUBJECT_TEACHER" customInsertType="Table" activeCollection="IFormElements" activeTableType="STAFF_LAD_ALLOCATION" customInsert="STAFF_LAD_ALLOCATION" returnPage="Staff_LAdAllocation_maint.ccp">
			<Components>
				<ListBox id="101" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STAFF ID" caption="Learning Advisor Name" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" dataSource="View_StaffList_Active_Inactive" boundColumn="staff_ID" textColumn="staffname" PathID="SUBJECT_TEACHERSTAFF_ID">
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
				<TextBox id="347" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="LAD_MAX_ALLOC" PathID="SUBJECT_TEACHERLAD_MAX_ALLOC" caption="Max. Students" fieldSource="LAD_MAX_ALLOC" format="0;(0)" defaultValue="12" required="True">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Validate Minimum Value" actionCategory="Validation" id="348" minimumValue="0" errorMessage="Maximum Students must be 0 or greater"/>
								<Action actionName="Validate Maximum Value" actionCategory="Validation" id="349" maximumValue="28" errorMessage="Maximum Students must not exceed 28"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="500" urlType="Relative" enableValidation="True" isDefault="False" name="buttonAdd" PathID="SUBJECT_TEACHERbuttonAdd" operation="Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="561" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="radioYEAR_LEVEL" PathID="SUBJECT_TEACHERradioYEAR_LEVEL" fieldSource="YEAR_LEVEL" caption="Year Level" dataSource="11;Yr 11;12;Yr 12" defaultValue="0" required="True">
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
			<Events>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="556" name="&quot;Item has been Added&quot;" sourceType="Session" sourceName="notifymessage"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="566" tableName="STAFF_LAD_ALLOCATION"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="499" fieldName="*"/>
			</Fields>
			<PKFields>
			</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="108" field="STAFF_ID" dataType="Text" parameterType="Control" parameterSource="STAFF_ID" omitIfEmpty="True"/>
				<CustomParameter id="200" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" defaultValue="&quot;unknown&quot;" omitIfEmpty="False" parameterSource="dbutility.userid.tostring.toupper"/>
				<CustomParameter id="201" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="Now()"/>
				<CustomParameter id="203" field="LAD_MAX_ALLOC" dataType="Integer" parameterType="Control" omitIfEmpty="False" parameterSource="LAD_MAX_ALLOC" defaultValue="12"/>
				<CustomParameter id="563" field="YEAR_LEVEL" dataType="Integer" parameterType="Control" omitIfEmpty="True" parameterSource="radioYEAR_LEVEL"/>
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
		<CodeFile id="3" language="VB" name="Staff_LAdAllocation_maint.aspx" forShow="True" url="Staff_LAdAllocation_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Staff_LAdAllocation_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Staff_LAdAllocation_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
