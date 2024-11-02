<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" connection="connDECVPRODSQL2005" dataSource="STAFF_INDUCTIONS_COURSES" name="STAFF_INDUCTIONS_COURSES" pageSizeLimit="100" wizardCaption="List of STAFF INDUCTIONS COURSES " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Inductions found." activeCollection="TableParameters" PathID="STAFF_INDUCTIONS_COURSES">
			<Components>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_INDUCTIONS_COURSES_TotalRecords" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSESSTAFF_INDUCTIONS_COURSES_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="10"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="14" visible="True" name="Sorter_INDUCTION_TITLE" column="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSortingType="SimpleDir" wizardControl="INDUCTION_TITLE" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_INDUCTION_DESCRIPTION" column="INDUCTION_DESCRIPTION" wizardCaption="INDUCTION DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="INDUCTION_DESCRIPTION" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_INDUCTION_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="16" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="17" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="18" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSESSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="19" fieldSourceType="DBColumn" dataType="Integer" html="False" name="id" fieldSource="id" wizardCaption="Id" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESid" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="Staff_Inductions_ByCourse_maint.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="29" sourceType="DataField" name="id" source="id"/>
					</LinkParameters>
				</Link>
				<Link id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="INDUCTION_TITLE" fieldSource="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESINDUCTION_TITLE" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="Staff_Inductions_ByCourse_maint.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="30" sourceType="DataField" name="id" source="id"/>
					</LinkParameters>
				</Link>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="INDUCTION_DESCRIPTION" fieldSource="INDUCTION_DESCRIPTION" wizardCaption="INDUCTION DESCRIPTION" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESINDUCTION_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Integer" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESSTATUS">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="28"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSESLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="25" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Universal" PathID="STAFF_INDUCTIONS_COURSESNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="11" conditionType="Parameter" useIsNull="False" field="INDUCTION_TITLE" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="1" parameterSource="s_INDUCTION_TITLE" leftBrackets="1"/>
				<TableParameter id="27" conditionType="Parameter" useIsNull="False" field="INDUCTION_DESCRIPTION" dataType="Text" searchConditionType="Contains" parameterType="URL" logicOperator="And" parameterSource="s_INDUCTION_TITLE" rightBrackets="1"/>
				<TableParameter id="12" conditionType="Parameter" useIsNull="False" field="STATUS" parameterSource="s_STATUS" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="2"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="26" tableName="STAFF_INDUCTIONS_COURSES" posLeft="10" posTop="10" posWidth="160" posHeight="152"/>
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
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STAFF_INDUCTIONS_COURSESSearch" wizardCaption="Search STAFF INDUCTIONS COURSES " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Staff_Inductions_ByCourse_list.ccp" PathID="STAFF_INDUCTIONS_COURSESSearch">
			<Components>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Staff_Inductions_ByCourse_list.ccp" removeParameters="s_INDUCTION_TITLE;s_STATUS" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="STAFF_INDUCTIONS_COURSESSearchClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STAFF_INDUCTIONS_COURSESSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" PathID="STAFF_INDUCTIONS_COURSESSearchs_INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="s_STATUS" wizardCaption="STATUS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" PathID="STAFF_INDUCTIONS_COURSESSearchs_STATUS" _valueOfList="0" _nameOfList="Inactive" dataSource="1;Active;0;Inactive" defaultValue="1">
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
					<PKFields/>
				</RadioButton>
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
		<Link id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_AddNEw" PathID="Link_AddNEw" hrefSource="Staff_Inductions_ByCourse_maint.ccp" wizardUseTemplateBlock="False" removeParameters="id">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Staff_Inductions_ByCourse_list.aspx" forShow="True" url="Staff_Inductions_ByCourse_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Staff_Inductions_ByCourse_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Staff_Inductions_ByCourse_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
