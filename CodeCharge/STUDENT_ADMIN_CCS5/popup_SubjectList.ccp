<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="10" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECTSearch" wizardCaption="Search SUBJECT " wizardOrientation="Horizontal" wizardFormMethod="get" returnPage="popup_SubjectList.ccp" activeCollection="TableParameters" orderBy="YEAR_LEVEL" groupBy="YEAR_LEVEL" PathID="SUBJECTSearch">
			<Components>
				<ListBox id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="s_YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardEmptyCaption="Select Value" caption="Year Level" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled" orderBy="YEAR_LEVEL" groupBy="YEAR_LEVEL" activeCollection="TableParameters" required="True" PathID="SUBJECTSearchs_YEAR_LEVEL" connection="connDECVPRODSQL2005" _valueOfList="30" _nameOfList="Home Schooled">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="28" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CAMPUS_CODE = 'D'"/><TableParameter id="29" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Button id="11" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SUBJECTSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="24" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CAMPUS_CODE = 'D'"/><TableParameter id="25" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="22" tableName="SUBJECT" schemaName="dbo" posLeft="10" posTop="10" posWidth="217" posHeight="297"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="23" tableName="SUBJECT" fieldName="YEAR_LEVEL"/>
			</Fields>
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
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" connection="connDECVPRODSQL2005" dataSource="SUBJECT" activeCollection="TableParameters" orderBy="SUBJECT_ID" name="SUBJECT" pageSizeLimit="100" wizardCaption="List of SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Subjects found" PathID="SUBJECT">
			<Components>
				<Sorter id="14" visible="True" name="Sorter_SUBJECT_ID" column="SUBJECT_ID" wizardCaption="ID" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ID" wizardAddNbsp="False" PathID="SUBJECTSorter_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_SUBJECT_TITLE" column="SUBJECT_TITLE" wizardCaption="TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" wizardAddNbsp="False" PathID="SUBJECTSorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="17" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" PathID="SUBJECTSUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="20" size="10" type="Centered" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="SUBJECTNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="21" action="Hide" conditionType="Parameter" dataType="Text" componentName="SUBJECT" sourceType1="URL" sourceType2="Expression" name1="s_YEAR_LEVEL" condition="Equal" name2="&quot;&quot;"/>
						<Action actionName="Custom Code" actionCategory="General" id="30"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
				<TableParameter id="7" conditionType="Expression" useIsNull="False" field="CAMPUS_CODE" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CAMPUS_CODE = 'D'" parameterSource="DESCRIPTION_LINE1"/>
				<TableParameter id="8" conditionType="Parameter" useIsNull="False" field="YEAR_LEVEL" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="YEAR_LEVEL"/>
				<TableParameter id="13" conditionType="Parameter" useIsNull="False" field="YEAR_LEVEL" parameterSource="s_YEAR_LEVEL" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="SUBJECT" schemaName="dbo" posLeft="10" posTop="10" posWidth="209" posHeight="253"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="4" tableName="SUBJECT" fieldName="SUBJECT_ID"/>
				<Field id="5" tableName="SUBJECT" fieldName="SUBJECT_TITLE"/>
				<Field id="9" tableName="SUBJECT" fieldName="YEAR_LEVEL"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="popup_SubjectList.aspx" forShow="True" url="popup_SubjectList.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="popup_SubjectList.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="popup_SubjectListDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
