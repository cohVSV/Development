<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="COUNTRY_OF_BIRTHSearch" returnPage="COUNTRY_OF_BIRT_list.ccp" wizardCaption="Search COUNTRY OF BIRTH " wizardOrientation="Vertical" wizardFormMethod="post" PathID="COUNTRY_OF_BIRTHSearch">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" isDefault="True" PathID="COUNTRY_OF_BIRTHSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardCaption="Keyword" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" PathID="COUNTRY_OF_BIRTHSearchs_keyword">
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
		<Grid id="5" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="20" name="COUNTRY_OF_BIRTH" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of COUNTRY OF BIRTH " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="COUNTRY_OF_BIRTH" orderBy="COUNTRY_NAME" PathID="COUNTRY_OF_BIRTH">
			<Components>
				<Link id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="COUNTRY_OF_BIRTH_Insert" hrefSource="COUNTRY_OF_BIRT_maint.ccp" removeParameters="COUNTRY_ID" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="COUNTRY_OF_BIRTHCOUNTRY_OF_BIRTH_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="9" visible="True" name="Sorter_COUNTRY_ID" column="COUNTRY_ID" wizardCaption="COUNTRY ID" wizardSortingType="SimpleDir" wizardControl="COUNTRY_ID" wizardAddNbsp="False" PathID="COUNTRY_OF_BIRTHSorter_COUNTRY_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_COUNTRY_NAME" column="COUNTRY_NAME" wizardCaption="COUNTRY NAME" wizardSortingType="SimpleDir" wizardControl="COUNTRY_NAME" wizardAddNbsp="False" PathID="COUNTRY_OF_BIRTHSorter_COUNTRY_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="COUNTRY_OF_BIRTHSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="COUNTRY_OF_BIRTHSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="COUNTRY_ID" fieldSource="COUNTRY_ID" wizardCaption="COUNTRY ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="COUNTRY_OF_BIRT_maint.ccp" PathID="COUNTRY_OF_BIRTHCOUNTRY_ID">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="15" sourceType="DataField" format="yyyy-mm-dd" name="COUNTRY_ID" source="COUNTRY_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="COUNTRY_NAME" fieldSource="COUNTRY_NAME" wizardCaption="COUNTRY NAME" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_COUNTRY_ID" fieldSource="COUNTRY_ID" wizardCaption="COUNTRY ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="COUNTRY_OF_BIRT_maint.ccp" PathID="COUNTRY_OF_BIRTHAlt_COUNTRY_ID">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="23" sourceType="DataField" format="yyyy-mm-dd" name="COUNTRY_ID" source="COUNTRY_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_COUNTRY_NAME" fieldSource="COUNTRY_NAME" wizardCaption="COUNTRY NAME" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardAddNbsp="True">
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
				<Navigator id="27" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="COUNTRY_OF_BIRTHNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="8" conditionType="Parameter" useIsNull="False" field="COUNTRY_NAME" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="6" tableName="COUNTRY_OF_BIRTH" posWidth="-1" posHeight="-1" posLeft="-1" posRight="-1"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="13" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_ID"/>
				<Field id="16" tableName="COUNTRY_OF_BIRTH" fieldName="COUNTRY_NAME"/>
				<Field id="18" tableName="COUNTRY_OF_BIRTH" fieldName="LAST_ALTERED_BY"/>
				<Field id="20" tableName="COUNTRY_OF_BIRTH" fieldName="LAST_ALTERED_DATE"/>
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
		<CodeFile id="3" language="VB" name="COUNTRY_OF_BIRT_list.aspx" forShow="True" url="COUNTRY_OF_BIRT_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="COUNTRY_OF_BIRT_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="COUNTRY_OF_BIRT_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
