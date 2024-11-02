<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="LANGUAGE" connection="connDECVPRODSQL2005" pageSizeLimit="250" wizardCaption="List of LANGUAGE " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="[LANGUAGE]" PathID="LANGUAGE" orderBy="LANG_CODE">
			<Components>
				<Sorter id="5" visible="True" name="Sorter_LANG_CODE" column="LANG_CODE" wizardCaption="LANG CODE" wizardSortingType="SimpleDir" wizardControl="LANG_CODE" wizardAddNbsp="False" PathID="LANGUAGESorter_LANG_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_LANG_DESCRIPTION" column="LANG_DESCRIPTION" wizardCaption="LANG DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="LANG_DESCRIPTION" wizardAddNbsp="False" PathID="LANGUAGESorter_LANG_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="LANGUAGESorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="LANGUAGESorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="LANG_CODE" fieldSource="LANG_CODE" wizardCaption="LANG CODE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="LANGUAGE_maint.ccp" PathID="LANGUAGELANG_CODE">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="11" sourceType="DataField" format="yyyy-mm-dd" name="LANG_CODE" source="LANG_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="LANG_DESCRIPTION" fieldSource="LANG_DESCRIPTION" wizardCaption="LANG DESCRIPTION" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_LANG_CODE" fieldSource="LANG_CODE" wizardCaption="LANG CODE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="LANGUAGE_maint.ccp" PathID="LANGUAGEAlt_LANG_CODE">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="19" sourceType="DataField" format="yyyy-mm-dd" name="LANG_CODE" source="LANG_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LANG_DESCRIPTION" fieldSource="LANG_DESCRIPTION" wizardCaption="LANG DESCRIPTION" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Date" html="False" name="Alt_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="LANGUAGE_Insert" hrefSource="LANGUAGE_maint.ccp" removeParameters="LANG_CODE" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="LANGUAGELANGUAGE_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
<Navigator id="26" size="8" type="Centered" pageSizes="50;100;250;500" name="Navigator1" PathID="LANGUAGENavigator1" wizardPagingType="Custom" wizardPageNumbers="Centered" wizardTotalPages="True" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardPageSize="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Navigator>
</Components>
			<Events>
<Event name="BeforeBuildSelect" type="Server">
<Actions>
<Action actionName="Advanced Search" actionCategory="General" id="32" searchForm="LANGUAGE1" searchConditions="searchConditions" searchControl="s_keyword" searchDBFields="LANG_CODE,LANG_DESCRIPTION"/>
</Actions>
</Event>
</Events>
			<TableParameters>
<TableParameter id="35" conditionType="Parameter" useIsNull="False" dataType="Text" field="LANG_DESCRIPTION" logicOperator="And" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
</TableParameters>
			<JoinTables>
				<JoinTable id="34" posHeight="120" posLeft="10" posTop="10" posWidth="146" schemaName="dbo" tableName="LANGUAGE"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="36" fieldName="*"/>
</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
<PKField id="37" dataType="Integer" fieldName="LANG_CODE" tableName="LANGUAGE"/>
</PKFields>
		</Grid>
		<IncludePage id="24" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="25" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="27" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="LANGUAGE1" searchIds="27" fictitiousConnection="connDECVPRODSQL2005" fictitiousDataSource="LANGUAGE" wizardCaption="Search  " changedCaptionSearch="False" wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="Advanced" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardSpecifyResultsForm="True" wizardResultsForm="LANGUAGE" returnPage="LANGUAGE_list.ccp" PathID="LANGUAGE1">
<Components>
<Link id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="LANGUAGE_list.ccp" removeParameters="s_keyword" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="LANGUAGE1ClearParameters">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
<Button id="29" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="LANGUAGE1Button_DoSearch">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Button>
<TextBox id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" fieldSource="LANG_CODE,LANG_DESCRIPTION" wizardIsPassword="False" wizardCaption="Keyword" caption="Keyword" required="False" unique="False" wizardSize="5" wizardMaxLength="5" PathID="LANGUAGE1s_keyword">
<Components/>
<Events/>
<Attributes/>
<Features/>
</TextBox>
</Components>
<Events/>
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
		<CodeFile id="3" language="VB" name="LANGUAGE_list.aspx" forShow="True" url="LANGUAGE_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="LANGUAGE_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="LANGUAGE_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
