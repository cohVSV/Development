<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="40" name="WITHDRAWAL_EXIT_DESTINATI" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of WITHDRAWAL EXIT DESTINATION " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="Simple" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="WITHDRAWAL_EXIT_DESTINATION" PathID="WITHDRAWAL_EXIT_DESTINATI">
			<Components>
				<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="WITHDRAWAL_EXIT_DESTINATI_Insert" hrefSource="WITHDRAWAL_EXIT_maint.ccp" removeParameters="WD_DEST_ID" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="WITHDRAWAL_EXIT_DESTINATIWITHDRAWAL_EXIT_DESTINATI_Insert" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="5" visible="True" name="Sorter_WD_DEST_ID" column="WD_DEST_ID" wizardCaption="WD DEST ID" wizardSortingType="Simple" wizardControl="WD_DEST_ID" wizardAddNbsp="False" PathID="WITHDRAWAL_EXIT_DESTINATISorter_WD_DEST_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="6" visible="True" name="Sorter_EXIT_DESTINATION_DESCRIPTION" column="EXIT_DESTINATION_DESCRIPTION" wizardCaption="EXIT DESTINATION DESCRIPTION" wizardSortingType="Simple" wizardControl="EXIT_DESTINATION_DESCRIPTION" wizardAddNbsp="False" PathID="WITHDRAWAL_EXIT_DESTINATISorter_EXIT_DESTINATION_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="7" visible="True" name="Sorter_DISPLAY_ORDER" column="DISPLAY_ORDER" wizardCaption="DISPLAY ORDER" wizardSortingType="Simple" wizardControl="DISPLAY_ORDER" wizardAddNbsp="False" PathID="WITHDRAWAL_EXIT_DESTINATISorter_DISPLAY_ORDER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="8" visible="True" name="Sorter_GROUPING" column="GROUPING" wizardCaption="GROUPING" wizardSortingType="Simple" wizardControl="GROUPING" wizardAddNbsp="False" PathID="WITHDRAWAL_EXIT_DESTINATISorter_GROUPING">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="Simple" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="WITHDRAWAL_EXIT_DESTINATISorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="Simple" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="WITHDRAWAL_EXIT_DESTINATISorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="11" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Detail" wizardCaption="Detail" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardAddNbsp="True" wizardDefaultValue="edit" dataType="Text" hrefSource="WITHDRAWAL_EXIT_maint.ccp" PathID="WITHDRAWAL_EXIT_DESTINATIDetail" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="12" sourceType="DataField" format="yyyy-mm-dd" name="WD_DEST_ID" source="WD_DEST_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="14" fieldSourceType="DBColumn" dataType="Float" html="False" name="WD_DEST_ID" fieldSource="WD_DEST_ID" wizardCaption="WD DEST ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" PathID="WITHDRAWAL_EXIT_DESTINATIWD_DEST_ID" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" name="EXIT_DESTINATION_DESCRIPTION" fieldSource="EXIT_DESTINATION_DESCRIPTION" wizardCaption="EXIT DESTINATION DESCRIPTION" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATIEXIT_DESTINATION_DESCRIPTION" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Integer" html="False" name="DISPLAY_ORDER" fieldSource="DISPLAY_ORDER" wizardCaption="DISPLAY ORDER" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" PathID="WITHDRAWAL_EXIT_DESTINATIDISPLAY_ORDER" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="GROUPING" fieldSource="GROUPING" wizardCaption="GROUPING" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATIGROUPING" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATILAST_ALTERED_BY" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATILAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="25" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_Detail" wizardCaption="Detail" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardAddNbsp="True" wizardDefaultValue="edit" dataType="Text" hrefSource="WITHDRAWAL_EXIT_maint.ccp" PathID="WITHDRAWAL_EXIT_DESTINATIAlt_Detail" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="26" sourceType="DataField" format="yyyy-mm-dd" name="WD_DEST_ID" source="WD_DEST_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="27" fieldSourceType="DBColumn" dataType="Float" html="False" name="Alt_WD_DEST_ID" fieldSource="WD_DEST_ID" wizardCaption="WD DEST ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" PathID="WITHDRAWAL_EXIT_DESTINATIAlt_WD_DEST_ID" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_EXIT_DESTINATION_DESCRIPTION" fieldSource="EXIT_DESTINATION_DESCRIPTION" wizardCaption="EXIT DESTINATION DESCRIPTION" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATIAlt_EXIT_DESTINATION_DESCRIPTION" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Integer" html="False" name="Alt_DISPLAY_ORDER" fieldSource="DISPLAY_ORDER" wizardCaption="DISPLAY ORDER" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" PathID="WITHDRAWAL_EXIT_DESTINATIAlt_DISPLAY_ORDER" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_GROUPING" fieldSource="GROUPING" wizardCaption="GROUPING" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATIAlt_GROUPING" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATIAlt_LAST_ALTERED_BY" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Date" html="False" name="Alt_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True" PathID="WITHDRAWAL_EXIT_DESTINATIAlt_LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" rowNumber="1" parentName="WITHDRAWAL_EXIT_DESTINATI">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="33" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" PathID="WITHDRAWAL_EXIT_DESTINATINavigator">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="34" action="Hide" conditionType="Parameter" dataType="Integer" condition="LessThan" name1="TotalPages" sourceType1="SpecialValue" name2="2" sourceType2="Expression"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables>
				<JoinTable id="3" tableName="WITHDRAWAL_EXIT_DESTINATION" posWidth="-1" posHeight="-1" posLeft="-1" posRight="-1"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="13" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="WD_DEST_ID"/>
				<Field id="15" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="EXIT_DESTINATION_DESCRIPTION"/>
				<Field id="17" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="DISPLAY_ORDER"/>
				<Field id="19" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="GROUPING"/>
				<Field id="21" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="LAST_ALTERED_BY"/>
				<Field id="23" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="LAST_ALTERED_DATE"/>
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
		<Link id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_AddNew" PathID="Link_AddNew" hrefSource="WITHDRAWAL_EXIT_maint.ccp" wizardUseTemplateBlock="False" removeParameters="WD_DEST_ID">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="WITHDRAWAL_EXIT_list.aspx" forShow="True" url="WITHDRAWAL_EXIT_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="WITHDRAWAL_EXIT_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="WITHDRAWAL_EXIT_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="35" groupID="3"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
