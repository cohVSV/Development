<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="10" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECTSearch" wizardCaption="Search SUBJECT " wizardOrientation="Horizontal" wizardFormMethod="get" returnPage="popup_SchoolList.ccp" activeCollection="TableParameters" orderBy="YEAR_LEVEL" groupBy="YEAR_LEVEL" PathID="SUBJECTSearch">
			<Components>
				<ListBox id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="s_SEARCH_ALPHA" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardEmptyCaption="Select Value" caption="Filter School Name" dataSource="A;A;B;B;C;C;D;D;E;E;F;F;G;G;H;H;I;I;J;J;K;K;L;L;M;M;N;N;O;O;P;P;Q;Q;R;R;S;S;T;T;U;U;V;V;W;W;X;X;Y;Y;Z;Z" orderBy="YEAR_LEVEL" groupBy="YEAR_LEVEL" activeCollection="TableParameters" required="True" connection="connDECVPRODSQL2005" _valueOfList="Z" _nameOfList="Z" PathID="SUBJECTSearchs_SEARCH_ALPHA">
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
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" dataSource="SCHOOL" activeCollection="TableParameters" orderBy="SCHOOL_NAME" name="SCHOOL" pageSizeLimit="100" wizardCaption="List of SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Subjects found" PathID="SCHOOL">
			<Components>
				<Sorter id="14" visible="True" name="Sorter_SUBJECT_ID" column="SCHOOL_ID" wizardCaption="ID" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ID" wizardAddNbsp="False" PathID="SCHOOLSorter_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_SUBJECT_TITLE" column="SCHOOL_NAME" wizardCaption="TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" wizardAddNbsp="False" PathID="SCHOOLSorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="17" fieldSourceType="DBColumn" dataType="Float" html="False" name="SCHOOL_ID" fieldSource="SCHOOL_ID" wizardCaption="ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" PathID="SCHOOLSCHOOL_ID" format="0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_TITLE" fieldSource="SCHOOL_NAME" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="20" size="10" type="Centered" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="SCHOOLNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="21" action="Hide" conditionType="Parameter" dataType="Text" componentName="SCHOOL" sourceType1="URL" sourceType2="Expression" name1="s_SEARCH_ALPHA" condition="Equal" name2="&quot;&quot;"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="36" conditionType="Expression" useIsNull="False" expression="STATUS = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="37" conditionType="Parameter" useIsNull="True" dataType="Text" field="SCHOOL_NAME" logicOperator="And" parameterSource="s_SEARCH_ALPHA" parameterType="URL" searchConditionType="BeginsWith"/>
<TableParameter id="38" conditionType="Expression" useIsNull="False" dataType="Text" expression="SCHOOL_TYPE_CODE NOT IN ('X')" field="SCHOOL_TYPE_CODE" logicOperator="And" parameterSource="SCHOOL_TYPE_CODE" parameterType="URL" searchConditionType="Equal"/>
</TableParameters>
			<JoinTables>
				<JoinTable id="35" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="SCHOOL"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="39" fieldName="SCHOOL_ID" tableName="SCHOOL"/>
<Field id="40" alias="SCHOOL_NAME" fieldName="rtrim(SCHOOL_NAME)" isExpression="True"/>
</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
<PKField id="41" dataType="Float" fieldName="SCHOOL_ID" tableName="SCHOOL"/>
</PKFields>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="popup_SchoolList.aspx" forShow="True" url="popup_SchoolList.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="popup_SchoolList.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="popup_SchoolListDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
