<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="REGION" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of REGION " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="REGION" PathID="REGION">
			<Components>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="REGION_Insert" hrefSource="REGION_maint.ccp" removeParameters="REGION_ID" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="REGIONREGION_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="5" visible="True" name="Sorter_REGION_ID" column="REGION_ID" wizardCaption="ID" wizardSortingType="SimpleDir" wizardControl="REGION_ID" wizardAddNbsp="False" PathID="REGIONSorter_REGION_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_REGION_NAME" column="REGION_NAME" wizardCaption="NAME" wizardSortingType="SimpleDir" wizardControl="REGION_NAME" wizardAddNbsp="False" PathID="REGIONSorter_REGION_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_PHONE" column="PHONE" wizardCaption="PHONE" wizardSortingType="SimpleDir" wizardControl="PHONE" wizardAddNbsp="False" PathID="REGIONSorter_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_FAX" column="FAX" wizardCaption="FAX" wizardSortingType="SimpleDir" wizardControl="FAX" wizardAddNbsp="False" PathID="REGIONSorter_FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_EMAIL_ADDRESS" column="EMAIL_ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSortingType="SimpleDir" wizardControl="EMAIL_ADDRESS" wizardAddNbsp="False" PathID="REGIONSorter_EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_SUBURB_TOWN" column="SUBURB_TOWN" wizardCaption="SUBURB TOWN" wizardSortingType="SimpleDir" wizardControl="SUBURB_TOWN" wizardAddNbsp="False" PathID="REGIONSorter_SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="REGION_NAME" fieldSource="REGION_NAME" wizardCaption="NAME" wizardSize="40" wizardMaxLength="40" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE" fieldSource="PHONE" wizardCaption="PHONE" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="FAX" fieldSource="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_REGION_NAME" fieldSource="REGION_NAME" wizardCaption="NAME" wizardSize="40" wizardMaxLength="40" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_PHONE" fieldSource="PHONE" wizardCaption="PHONE" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_FAX" fieldSource="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" wizardCaption="EMAIL ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SUBURB_TOWN" fieldSource="SUBURB_TOWN" wizardCaption="SUBURB TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="31" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="REGIONNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="STATUS" PathID="REGIONSTATUS" fieldSource="STATUS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="STATUS1" PathID="REGIONSTATUS1" fieldSource="STATUS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Link id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Float" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="REGION_ID" fieldSource="REGION_ID" wizardCaption="ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="REGION_maint.ccp" PathID="REGIONREGION_ID" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="13" sourceType="DataField" format="yyyy-mm-dd" name="REGION_ID" source="REGION_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
<Link id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Float" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_REGION_ID" fieldSource="REGION_ID" wizardCaption="ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="REGION_maint.ccp" PathID="REGIONAlt_REGION_ID" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="25" sourceType="DataField" format="yyyy-mm-dd" name="REGION_ID" source="REGION_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ID" PathID="REGIONID" fieldSource="REGION_ID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="54" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ID1" PathID="REGIONID1" fieldSource="REGION_ID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="43" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="REGION"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="44" fieldName="REGION_ID" tableName="REGION"/>
<Field id="45" fieldName="REGION_NAME" tableName="REGION"/>
<Field id="46" fieldName="PHONE" tableName="REGION"/>
<Field id="47" fieldName="FAX" tableName="REGION"/>
<Field id="48" fieldName="EMAIL_ADDRESS" tableName="REGION"/>
<Field id="49" fieldName="SUBURB_TOWN" tableName="REGION"/>
<Field id="50" fieldName="STATUS" tableName="REGION"/>
</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
<PKField id="51" dataType="Float" fieldName="REGION_ID" tableName="REGION"/>
</PKFields>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="REGION_list.aspx" forShow="True" url="REGION_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="REGION_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="REGION_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
