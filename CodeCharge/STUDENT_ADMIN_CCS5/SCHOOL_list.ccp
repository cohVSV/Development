<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="64" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="67" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SCHOOLSearch" wizardCaption="Search SCHOOL " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="SCHOOL_list.ccp" PathID="SCHOOLSearch">
			<Components>
				<TextBox id="69" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardCaption="Keyword" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="SCHOOLSearchs_keyword">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="68" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SCHOOLSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="91" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="lbSCHOOL_TYPE" wizardEmptyCaption="Select Value" PathID="SCHOOLSearchlbSCHOOL_TYPE" connection="connDECVPRODSQL2005" dataSource="SCHOOL_TYPE" orderBy="SCHOOL_TYPE_CODE" boundColumn="SCHOOL_TYPE_CODE" textColumn="SCHOOL_TYPE_DESCRIPTION" caption="School Type" defaultValue="&quot;&quot;" required="False">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="92" posHeight="120" posLeft="10" posTop="10" posWidth="160" schemaName="dbo" tableName="SCHOOL_TYPE"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="93" fieldName="SCHOOL_TYPE_CODE" tableName="SCHOOL_TYPE"/>
						<Field id="94" fieldName="SCHOOL_TYPE_DESCRIPTION" tableName="SCHOOL_TYPE"/>
					</Fields>
					<PKFields>
						<PKField id="95" dataType="Text" fieldName="SCHOOL_TYPE_CODE" tableName="SCHOOL_TYPE"/>
					</PKFields>
					<Attributes/>
					<Features/>
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
		<Grid id="66" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" connection="connDECVPRODSQL2005" dataSource="SCHOOL" name="SCHOOL" orderBy="SCHOOL_NAME" pageSizeLimit="100" wizardCaption="List of SCHOOL " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No records found." PathID="SCHOOL" pasteActions="pasteActions">
			<Components>
				<Sorter id="73" visible="True" name="Sorter_SCHOOL_ID" column="SCHOOL_ID" wizardCaption="ID" wizardSortingType="SimpleDir" wizardControl="SCHOOL_ID" wizardAddNbsp="False" PathID="SCHOOLSorter_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="74" visible="True" name="Sorter_SCHOOL_NAME" column="SCHOOL_NAME" wizardCaption="NAME" wizardSortingType="SimpleDir" wizardControl="SCHOOL_NAME" wizardAddNbsp="False" PathID="SCHOOLSorter_SCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="75" visible="True" name="Sorter_REGION_ID" column="REGION_ID" wizardCaption="REGION ID" wizardSortingType="SimpleDir" wizardControl="REGION_ID" wizardAddNbsp="False" PathID="SCHOOLSorter_REGION_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="76" visible="True" name="Sorter_METRO_CATEGORY" column="METRO_CATEGORY" wizardCaption="METRO CATEGORY" wizardSortingType="SimpleDir" wizardControl="METRO_CATEGORY" wizardAddNbsp="False" PathID="SCHOOLSorter_METRO_CATEGORY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="77" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="SCHOOLSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="78" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="SCHOOLSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="79" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="SCHOOLSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="80" fieldSourceType="DBColumn" dataType="Float" html="False" name="SCHOOL_ID" fieldSource="SCHOOL_ID" wizardCaption="ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="SCHOOL_maint.ccp" PathID="SCHOOLSCHOOL_ID" format="0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="88" sourceType="DataField" name="SCHOOL_ID" source="SCHOOL_ID"/>
					</LinkParameters>
				</Link>
				<Label id="81" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_NAME" fieldSource="SCHOOL_NAME" wizardCaption="NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="82" fieldSourceType="DBColumn" dataType="Float" html="False" name="REGION_ID" fieldSource="REGION_ID" wizardCaption="REGION ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="83" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="METRO_CATEGORY" fieldSource="METRO_CATEGORY" wizardCaption="METRO CATEGORY" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="84" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="85" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="86" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="87" size="10" type="Centered" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="SCHOOLNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Link id="90" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_AnotherNewSchool" PathID="SCHOOLlink_AnotherNewSchool" hrefSource="SCHOOL_maint.ccp" wizardUseTemplateBlock="False" removeParameters="SCHOOL_ID">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="89" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_NewSchool" PathID="SCHOOLlink_NewSchool" hrefSource="SCHOOL_maint.ccp" wizardUseTemplateBlock="False" removeParameters="SCHOOL_ID">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="110" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_TYPE_CODE" fieldSource="SCHOOL_TYPE_CODE" wizardCaption="REGION ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="104" conditionType="Parameter" useIsNull="False" dataType="Float" field="SCHOOL_ID" leftBrackets="1" logicOperator="Or" orderNumber="1" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="105" conditionType="Parameter" useIsNull="False" dataType="Float" field="REGION_ID" logicOperator="Or" orderNumber="2" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="106" conditionType="Parameter" useIsNull="False" dataType="Text" field="SCHOOL_NAME" logicOperator="And" orderNumber="3" parameterSource="s_keyword" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
				<TableParameter id="107" conditionType="Parameter" useIsNull="False" dataType="Text" expression="SCHOOL_TYPE_CODE = {lbSCHOOL_TYPE} or {lbSCHOOL_TYPE}=&quot;ALL&quot;" field="SCHOOL_TYPE_CODE" logicOperator="And" parameterSource="lbSCHOOL_TYPE" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="103" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="SCHOOL"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="108" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="109" dataType="Float" fieldName="SCHOOL_ID" tableName="SCHOOL"/>
			</PKFields>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SCHOOL_list.aspx" forShow="True" url="SCHOOL_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SCHOOL_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SCHOOL_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
