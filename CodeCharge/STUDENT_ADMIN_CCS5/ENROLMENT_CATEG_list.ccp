<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="40" name="ENROLMENT_CATEGORY" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of ENROLMENT CATEGORY " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="ENROLMENT_CATEGORY" PathID="ENROLMENT_CATEGORY">
			<Components>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ENROLMENT_CATEGORY_Insert" hrefSource="ENROLMENT_CATEG_maint.ccp" removeParameters="SUBCATEGORY_CODE;CATEGORY_CODE" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="ENROLMENT_CATEGORYENROLMENT_CATEGORY_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="5" visible="True" name="Sorter_CATEGORY_CODE" column="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSortingType="SimpleDir" wizardControl="CATEGORY_CODE" wizardAddNbsp="False" PathID="ENROLMENT_CATEGORYSorter_CATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_SUBCATEGORY_CODE" column="SUBCATEGORY_CODE" wizardCaption="SUBCATEGORY CODE" wizardSortingType="SimpleDir" wizardControl="SUBCATEGORY_CODE" wizardAddNbsp="False" PathID="ENROLMENT_CATEGORYSorter_SUBCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_SUBCATEGORY_FULL_TITLE" column="SUBCATEGORY_FULL_TITLE" wizardCaption="SUBCATEGORY FULL TITLE" wizardSortingType="SimpleDir" wizardControl="SUBCATEGORY_FULL_TITLE" wizardAddNbsp="False" PathID="ENROLMENT_CATEGORYSorter_SUBCATEGORY_FULL_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="ENROLMENT_CATEGORYSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="ENROLMENT_CATEGORYSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="ENROLMENT_CATEGORYSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="ENROLMENT_CATEG_maint.ccp" PathID="ENROLMENT_CATEGORYCATEGORY_CODE" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="13" sourceType="DataField" format="yyyy-mm-dd" name="SUBCATEGORY_CODE" source="SUBCATEGORY_CODE"/>
						<LinkParameter id="35" sourceType="DataField" name="CATEGORY_CODE" source="CATEGORY_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBCATEGORY_CODE" fieldSource="SUBCATEGORY_CODE" wizardCaption="SUBCATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBCATEGORY_FULL_TITLE" fieldSource="SUBCATEGORY_FULL_TITLE" wizardCaption="SUBCATEGORY FULL TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_CATEGORY_CODE" fieldSource="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="ENROLMENT_CATEG_maint.ccp" PathID="ENROLMENT_CATEGORYAlt_CATEGORY_CODE" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="25" sourceType="DataField" format="yyyy-mm-dd" name="SUBCATEGORY_CODE" source="SUBCATEGORY_CODE"/>
						<LinkParameter id="36" sourceType="DataField" name="CATEGORY_CODE" source="CATEGORY_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SUBCATEGORY_CODE" fieldSource="SUBCATEGORY_CODE" wizardCaption="SUBCATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SUBCATEGORY_FULL_TITLE" fieldSource="SUBCATEGORY_FULL_TITLE" wizardCaption="SUBCATEGORY FULL TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="Alt_STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Date" html="False" name="Alt_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="31" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="ENROLMENT_CATEGORYNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="3" tableName="ENROLMENT_CATEGORY" posWidth="-1" posHeight="-1" posLeft="-1" posRight="-1"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="11" tableName="ENROLMENT_CATEGORY" fieldName="CATEGORY_CODE"/>
				<Field id="14" tableName="ENROLMENT_CATEGORY" fieldName="SUBCATEGORY_CODE"/>
				<Field id="16" tableName="ENROLMENT_CATEGORY" fieldName="SUBCATEGORY_FULL_TITLE"/>
				<Field id="18" tableName="ENROLMENT_CATEGORY" fieldName="STATUS"/>
				<Field id="20" tableName="ENROLMENT_CATEGORY" fieldName="LAST_ALTERED_BY"/>
				<Field id="22" tableName="ENROLMENT_CATEGORY" fieldName="LAST_ALTERED_DATE"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<IncludePage id="32" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="33" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_addnewsubcategory" PathID="link_addnewsubcategory" hrefSource="ENROLMENT_CATEG_maint.ccp" wizardUseTemplateBlock="False" removeParameters="SUBCATEGORY_CODE;CATEGORY_CODE">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="ENROLMENT_CATEG_list.aspx" forShow="True" url="ENROLMENT_CATEG_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="ENROLMENT_CATEG_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="ENROLMENT_CATEG_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
