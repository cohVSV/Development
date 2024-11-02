<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="SCHOOL_TYPE" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of SCHOOL TYPE " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="SCHOOL_TYPE" PathID="SCHOOL_TYPE">
			<Components>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="SCHOOL_TYPE_Insert" hrefSource="SCHOOL_TYPE_maint.ccp" removeParameters="SCHOOL_TYPE_CODE" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="SCHOOL_TYPESCHOOL_TYPE_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="5" visible="True" name="Sorter_SCHOOL_TYPE_CODE" column="SCHOOL_TYPE_CODE" wizardCaption="CODE" wizardSortingType="SimpleDir" wizardControl="SCHOOL_TYPE_CODE" wizardAddNbsp="False" PathID="SCHOOL_TYPESorter_SCHOOL_TYPE_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_SCHOOL_TYPE_DESCRIPTION" column="SCHOOL_TYPE_DESCRIPTION" wizardCaption="DESCRIPTION" wizardSortingType="SimpleDir" wizardControl="SCHOOL_TYPE_DESCRIPTION" wizardAddNbsp="False" PathID="SCHOOL_TYPESorter_SCHOOL_TYPE_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="SCHOOL_TYPESorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="SCHOOL_TYPESorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="SCHOOL_TYPE_CODE" fieldSource="SCHOOL_TYPE_CODE" wizardCaption="CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="SCHOOL_TYPE_maint.ccp" PathID="SCHOOL_TYPESCHOOL_TYPE_CODE">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="11" sourceType="DataField" format="yyyy-mm-dd" name="SCHOOL_TYPE_CODE" source="SCHOOL_TYPE_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_TYPE_DESCRIPTION" fieldSource="SCHOOL_TYPE_DESCRIPTION" wizardCaption="DESCRIPTION" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True">
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
				<Link id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_SCHOOL_TYPE_CODE" fieldSource="SCHOOL_TYPE_CODE" wizardCaption="CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="SCHOOL_TYPE_maint.ccp" PathID="SCHOOL_TYPEAlt_SCHOOL_TYPE_CODE">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="19" sourceType="DataField" format="yyyy-mm-dd" name="SCHOOL_TYPE_CODE" source="SCHOOL_TYPE_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SCHOOL_TYPE_DESCRIPTION" fieldSource="SCHOOL_TYPE_DESCRIPTION" wizardCaption="DESCRIPTION" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True">
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
				<Navigator id="23" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="SCHOOL_TYPENavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="3" tableName="SCHOOL_TYPE" posWidth="-1" posHeight="-1" posLeft="-1" posRight="-1"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="9" tableName="SCHOOL_TYPE" fieldName="SCHOOL_TYPE_CODE"/>
				<Field id="12" tableName="SCHOOL_TYPE" fieldName="SCHOOL_TYPE_DESCRIPTION"/>
				<Field id="14" tableName="SCHOOL_TYPE" fieldName="LAST_ALTERED_BY"/>
				<Field id="16" tableName="SCHOOL_TYPE" fieldName="LAST_ALTERED_DATE"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SCHOOL_TYPE_list.aspx" forShow="True" url="SCHOOL_TYPE_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SCHOOL_TYPE_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SCHOOL_TYPE_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
