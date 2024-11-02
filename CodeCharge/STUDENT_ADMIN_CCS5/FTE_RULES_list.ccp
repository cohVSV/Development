<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="FTE_RULES" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of FTE RULES " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="FTE_RULES" PathID="FTE_RULES">
			<Components>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="FTE_RULES_Insert" hrefSource="FTE_RULES_maint.ccp" removeParameters="UNIT" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="FTE_RULESFTE_RULES_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="5" visible="True" name="Sorter_FROM_YEAR_LEVEL" column="FROM_YEAR_LEVEL" wizardCaption="FROM YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="FROM_YEAR_LEVEL" wizardAddNbsp="False" PathID="FTE_RULESSorter_FROM_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_TO_YEAR_LEVEL" column="TO_YEAR_LEVEL" wizardCaption="TO YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="TO_YEAR_LEVEL" wizardAddNbsp="False" PathID="FTE_RULESSorter_TO_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_UNIT" column="UNIT" wizardCaption="UNIT" wizardSortingType="SimpleDir" wizardControl="UNIT" wizardAddNbsp="False" PathID="FTE_RULESSorter_UNIT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_FTE" column="FTE" wizardCaption="FTE" wizardSortingType="SimpleDir" wizardControl="FTE" wizardAddNbsp="False" PathID="FTE_RULESSorter_FTE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_FULLTIME_FLAG" column="FULLTIME_FLAG" wizardCaption="FULLTIME FLAG" wizardSortingType="SimpleDir" wizardControl="FULLTIME_FLAG" wizardAddNbsp="False" PathID="FTE_RULESSorter_FULLTIME_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="FTE_RULESSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="FTE_RULESSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="FROM_YEAR_LEVEL" fieldSource="FROM_YEAR_LEVEL" wizardCaption="FROM YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="FTE_RULES_maint.ccp" PathID="FTE_RULESFROM_YEAR_LEVEL">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="14" sourceType="DataField" format="yyyy-mm-dd" name="UNIT" source="UNIT"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="16" fieldSourceType="DBColumn" dataType="Integer" html="False" name="TO_YEAR_LEVEL" fieldSource="TO_YEAR_LEVEL" wizardCaption="TO YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Integer" html="False" name="UNIT" fieldSource="UNIT" wizardCaption="UNIT" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Float" html="False" name="FTE" fieldSource="FTE" wizardCaption="FTE" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="FULLTIME_FLAG" fieldSource="FULLTIME_FLAG" wizardCaption="FULLTIME FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="27" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_FROM_YEAR_LEVEL" fieldSource="FROM_YEAR_LEVEL" wizardCaption="FROM YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="FTE_RULES_maint.ccp" PathID="FTE_RULESAlt_FROM_YEAR_LEVEL">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="28" sourceType="DataField" format="yyyy-mm-dd" name="UNIT" source="UNIT"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="29" fieldSourceType="DBColumn" dataType="Integer" html="False" name="Alt_TO_YEAR_LEVEL" fieldSource="TO_YEAR_LEVEL" wizardCaption="TO YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Integer" html="False" name="Alt_UNIT" fieldSource="UNIT" wizardCaption="UNIT" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="31" fieldSourceType="DBColumn" dataType="Float" html="False" name="Alt_FTE" fieldSource="FTE" wizardCaption="FTE" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="Alt_FULLTIME_FLAG" fieldSource="FULLTIME_FLAG" wizardCaption="FULLTIME FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Date" html="False" name="Alt_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="35" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="FTE_RULESNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="3" tableName="FTE_RULES" posWidth="-1" posHeight="-1" posLeft="-1" posRight="-1"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="12" tableName="FTE_RULES" fieldName="FROM_YEAR_LEVEL"/>
				<Field id="15" tableName="FTE_RULES" fieldName="TO_YEAR_LEVEL"/>
				<Field id="17" tableName="FTE_RULES" fieldName="UNIT"/>
				<Field id="19" tableName="FTE_RULES" fieldName="FTE"/>
				<Field id="21" tableName="FTE_RULES" fieldName="FULLTIME_FLAG"/>
				<Field id="23" tableName="FTE_RULES" fieldName="LAST_ALTERED_BY"/>
				<Field id="25" tableName="FTE_RULES" fieldName="LAST_ALTERED_DATE"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<IncludePage id="36" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="37" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="FTE_RULES_list.aspx" forShow="True" url="FTE_RULES_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="FTE_RULES_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="FTE_RULES_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
