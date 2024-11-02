<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="GOVERNMENT_ALLOWANCE" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of GOVERNMENT ALLOWANCE " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="GOVERNMENT_ALLOWANCE" PathID="GOVERNMENT_ALLOWANCE">
			<Components>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="GOVERNMENT_ALLOWANCE_Insert" hrefSource="GOVERNMENT_ALLO_maint.ccp" removeParameters="ALLOWANCE_CODE" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="GOVERNMENT_ALLOWANCEGOVERNMENT_ALLOWANCE_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="5" visible="True" name="Sorter_ALLOWANCE_CODE" column="ALLOWANCE_CODE" wizardCaption="ALLOWANCE CODE" wizardSortingType="SimpleDir" wizardControl="ALLOWANCE_CODE" wizardAddNbsp="False" PathID="GOVERNMENT_ALLOWANCESorter_ALLOWANCE_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_ALLOWANCE_TITLE" column="ALLOWANCE_TITLE" wizardCaption="ALLOWANCE TITLE" wizardSortingType="SimpleDir" wizardControl="ALLOWANCE_TITLE" wizardAddNbsp="False" PathID="GOVERNMENT_ALLOWANCESorter_ALLOWANCE_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_ALLOWANCE_DESCRIPTION" column="ALLOWANCE_DESCRIPTION" wizardCaption="ALLOWANCE DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="ALLOWANCE_DESCRIPTION" wizardAddNbsp="False" PathID="GOVERNMENT_ALLOWANCESorter_ALLOWANCE_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="GOVERNMENT_ALLOWANCESorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="GOVERNMENT_ALLOWANCESorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ALLOWANCE_CODE" fieldSource="ALLOWANCE_CODE" wizardCaption="ALLOWANCE CODE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="GOVERNMENT_ALLO_maint.ccp" PathID="GOVERNMENT_ALLOWANCEALLOWANCE_CODE">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="12" sourceType="DataField" format="yyyy-mm-dd" name="ALLOWANCE_CODE" source="ALLOWANCE_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="ALLOWANCE_TITLE" fieldSource="ALLOWANCE_TITLE" wizardCaption="ALLOWANCE TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" name="ALLOWANCE_DESCRIPTION" fieldSource="ALLOWANCE_DESCRIPTION" wizardCaption="ALLOWANCE DESCRIPTION" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_ALLOWANCE_CODE" fieldSource="ALLOWANCE_CODE" wizardCaption="ALLOWANCE CODE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="GOVERNMENT_ALLO_maint.ccp" PathID="GOVERNMENT_ALLOWANCEAlt_ALLOWANCE_CODE">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="22" sourceType="DataField" format="yyyy-mm-dd" name="ALLOWANCE_CODE" source="ALLOWANCE_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_ALLOWANCE_TITLE" fieldSource="ALLOWANCE_TITLE" wizardCaption="ALLOWANCE TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_ALLOWANCE_DESCRIPTION" fieldSource="ALLOWANCE_DESCRIPTION" wizardCaption="ALLOWANCE DESCRIPTION" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Date" html="False" name="Alt_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="27" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="GOVERNMENT_ALLOWANCENavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="3" tableName="GOVERNMENT_ALLOWANCE" posWidth="-1" posHeight="-1" posLeft="-1" posRight="-1"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="10" tableName="GOVERNMENT_ALLOWANCE" fieldName="ALLOWANCE_CODE"/>
				<Field id="13" tableName="GOVERNMENT_ALLOWANCE" fieldName="ALLOWANCE_TITLE"/>
				<Field id="15" tableName="GOVERNMENT_ALLOWANCE" fieldName="ALLOWANCE_DESCRIPTION"/>
				<Field id="17" tableName="GOVERNMENT_ALLOWANCE" fieldName="LAST_ALTERED_BY"/>
				<Field id="19" tableName="GOVERNMENT_ALLOWANCE" fieldName="LAST_ALTERED_DATE"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<IncludePage id="28" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="29" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="GOVERNMENT_ALLO_list.aspx" forShow="True" url="GOVERNMENT_ALLO_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="GOVERNMENT_ALLO_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="GOVERNMENT_ALLO_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
