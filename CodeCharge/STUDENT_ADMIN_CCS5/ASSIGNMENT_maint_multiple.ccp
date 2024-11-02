<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="Table" defaultPageSize="50" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ASSIGNMENT" connection="connDECVPRODSQL2005" dataSource="ASSIGNMENT" orderBy="ASSIGNMENT_ID" pageSizeLimit="100" wizardGridPageSize="True" wizardUseSearch="True" allowCancel="True" wizardSubmitConfirmation="True" wizardCaption="Edit Assignments" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Assignments found for this Subject!" wizardGridKey=" " wizardGridPaging="Centered" wizardAddNbsp="False" wizardTotalRecords="True" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="ASSIGNMENT" composition="3" isParent="True" customUpdateType="Table" activeCollection="UFormElements" activeTableType="ASSIGNMENT" customUpdate="ASSIGNMENT" wizardAllowSorting="True">
			<Components>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ASSIGNMENT_TotalRecords" wizardUseTemplateBlock="False" PathID="ASSIGNMENTASSIGNMENT_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="15"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="19" visible="True" name="Sorter_SUBJECT_ID" column="SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ID" wizardAddNbsp="False" PathID="ASSIGNMENTSorter_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_ASSIGNMENT_ID" column="ASSIGNMENT_ID" wizardCaption="ASSIGNMENT ID" wizardSortingType="SimpleDir" wizardControl="ASSIGNMENT_ID" wizardAddNbsp="False" PathID="ASSIGNMENTSorter_ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="21" visible="True" name="Sorter_DESCRIPTION" column="DESCRIPTION" wizardCaption="DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="DESCRIPTION" wizardAddNbsp="False" PathID="ASSIGNMENTSorter_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="22" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="ASSIGNMENTSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="24" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="ASSIGNMENTSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT ID" PathID="ASSIGNMENTSUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="ASSIGNMENT_ID" fieldSource="ASSIGNMENT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="ASSIGNMENT ID" PathID="ASSIGNMENTASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="DESCRIPTION" fieldSource="DESCRIPTION" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="DESCRIPTION" caption="DESCRIPTION" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="ASSIGNMENTDESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="29" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="False" returnValueType="Number" name="STATUS" fieldSource="STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="STATUS" caption="STATUS" required="True" unique="False" connection="connDECVPRODSQL2005" PathID="ASSIGNMENTSTATUS" dataSource="Yes;Active;No;Inactive" defaultValue="&quot;Yes&quot;">
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
				<Label id="31" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="LAST ALTERED DATE" format="dd/mm/yyyy" PathID="ASSIGNMENTLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="33" size="10" type="Centered" pageSizes="50;100;250" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="True" wizardImagesScheme="Blueprint">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="34" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="ASSIGNMENTButton_Submit">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="36" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel" PathID="ASSIGNMENTCancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="LAST ALTERED BY" PathID="ASSIGNMENTLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="61" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_BY" PathID="ASSIGNMENTHidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="62" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_DATE" PathID="ASSIGNMENTHidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Sorter id="123" visible="True" name="Sorter_SpecialType" wizardSortingType="SimpleDir" PathID="ASSIGNMENTSorter_SpecialType" wizardCaption="SPECIAL TYPE" column="SPECIAL_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<RadioButton id="124" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="RadioButtonSpecialType" PathID="ASSIGNMENTRadioButtonSpecialType" fieldSource="SPECIAL_TYPE" defaultValue="&quot;&quot;" dataSource=";No;Y;Yes" connection="connDECVPRODSQL2005">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="125"/>
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
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="107" action="Hide" conditionType="Expression" dataType="Integer" componentName="ASSIGNMENT" condition="true"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="105" action="Show" conditionType="Parameter" dataType="Text" componentName="ASSIGNMENT" condition="NotEqual" name1="s_SUBJECT_ID" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="108" action="Show" conditionType="Parameter" dataType="Text" componentName="ASSIGNMENT" condition="NotEqual" sourceType1="URL" name1="s_DESCRIPTION" name2="&quot;&quot;" sourceType2="Expression"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="140" action="Show" conditionType="Parameter" dataType="Text" componentName="ASSIGNMENT" condition="NotEqual" name1="s_SUBJECT_ID_list" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="128" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_ID" leftBrackets="1" logicOperator="Or" orderNumber="1" parameterSource="s_SUBJECT_ID" parameterType="URL" searchConditionType="Equal" searchFormParameter="True"/>
				<TableParameter id="129" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_ID" logicOperator="And" parameterSource="s_SUBJECT_ID_list" parameterType="URL" rightBrackets="1" searchConditionType="Equal"/>
				<TableParameter id="130" conditionType="Parameter" useIsNull="False" dataType="Text" field="DESCRIPTION" logicOperator="And" orderNumber="3" parameterSource="s_DESCRIPTION" parameterType="URL" searchConditionType="Contains" searchFormParameter="True"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="141" tableName="ASSIGNMENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="131" fieldName="SUBJECT_ID" tableName="ASSIGNMENT"/>
				<Field id="132" fieldName="ASSIGNMENT_ID" tableName="ASSIGNMENT"/>
				<Field id="133" alias="DESCRIPTION" fieldName="RTRIM(DESCRIPTION)" isExpression="True"/>
				<Field id="134" fieldName="STATUS" tableName="ASSIGNMENT"/>
				<Field id="135" fieldName="LAST_ALTERED_BY" tableName="ASSIGNMENT"/>
				<Field id="136" fieldName="LAST_ALTERED_DATE" tableName="ASSIGNMENT"/>
				<Field id="137" fieldName="ARCHIVE" tableName="ASSIGNMENT"/>
				<Field id="138" fieldName="SPECIAL_TYPE" tableName="ASSIGNMENT"/>
			</Fields>
			<PKFields>
				<PKField id="139" dataType="Integer" fieldName="ASSIGNMENT_ID" tableName="ASSIGNMENT"/>
			</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="55" conditionType="Parameter" useIsNull="False" field="ASSIGNMENT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" parameterSource="ASSIGNMENT_ID"/>
				<TableParameter id="56" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" parameterType="DataSourceColumn" searchConditionType="Equal" logicOperator="And" orderNumber="1" parameterSource="SUBJECT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="59" field="DESCRIPTION" dataType="Text" parameterType="Control" parameterSource="DESCRIPTION" omitIfEmpty="False"/>
				<CustomParameter id="60" field="STATUS" dataType="Boolean" parameterType="Control" parameterSource="STATUS"/>
				<CustomParameter id="65" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" parameterSource="DBUtility.UserID.ToUpper" omitIfEmpty="True"/>
				<CustomParameter id="66" field="LAST_ALTERED_DATE" dataType="Text" parameterType="Expression" parameterSource="Now()" omitIfEmpty="True"/>
				<CustomParameter id="126" field="SPECIAL_TYPE" dataType="Text" parameterType="Control" defaultValue="&quot;&quot;" omitIfEmpty="False" parameterSource="RadioButtonSpecialType"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="37" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ASSIGNMENTSearch" searchIds="37" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="True" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="EditableGrid" returnPage="ASSIGNMENT_maint_multiple.ccp" PathID="ASSIGNMENTSearch" composition="3">
			<Components>
				<Button id="38" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="ASSIGNMENTSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="39" visible="Dynamic" fieldSourceType="DBColumn" dataType="Integer" name="s_SUBJECT_ID" fieldSource="SUBJECT_ID" wizardIsPassword="False" wizardCaption="SUBJECT ID" caption="SUBJECT ID" required="False" unique="False" wizardSize="10" wizardMaxLength="10" PathID="ASSIGNMENTSearchs_SUBJECT_ID" features="(assigned)" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<JAutocomplete id="42" enabled="False" istemplate="Text" template="{@text}" advanced="This is parent control, all controls below is children" height="default" width="default" hscrollbar="default" vscrollbar="default" name="Autocomplete1" servicePage="services/ASSIGNMENT_maint_multiple_s_SUBJECT_ID_Autocomplete1.ccp" category="jQuery" searchField="SUBJECT_ID" connection="connDECVPRODSQL2005" featureNameChanged="No" dataSource="ASSIGNMENT">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
						</JAutocomplete>
					</Features>
				</TextBox>
				<TextBox id="41" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="s_DESCRIPTION" fieldSource="DESCRIPTION" wizardIsPassword="False" wizardCaption="DESCRIPTION" caption="DESCRIPTION" required="False" unique="False" wizardSize="50" wizardMaxLength="60" PathID="ASSIGNMENTSearchs_DESCRIPTION" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="69" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="s_SUBJECT_ID_list" wizardEmptyCaption="Select Value" PathID="ASSIGNMENTSearchs_SUBJECT_ID_list" caption="Subject" connection="connDECVPRODSQL2005" dataSource="select * from view_ReportParams_Subjects
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
			</Components>
			<Events>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Set Focus" actionCategory="General" id="109" name="s_SUBJECT_ID"/>
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
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="ASSIGNMENT_maint_multiple.aspx" forShow="True" url="ASSIGNMENT_maint_multiple.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="ASSIGNMENT_maint_multiple.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="ASSIGNMENT_maint_multipleDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="142" groupID="4"/>
		<Group id="143" groupID="6"/>
		<Group id="144" groupID="7"/>
		<Group id="145" groupID="9"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
