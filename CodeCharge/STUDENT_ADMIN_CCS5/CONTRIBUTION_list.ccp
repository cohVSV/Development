<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" name="CONTRIBUTION" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of CONTRIBUTION " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="CONTRIBUTION" orderBy="CATEGORY_CODE" PathID="CONTRIBUTION" activeCollection="TableParameters">
			<Components>
				<Link id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="CONTRIBUTION_Insert" hrefSource="CONTRIBUTION_maint.ccp" removeParameters="CATEGORY_CODE" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="CONTRIBUTIONCONTRIBUTION_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="9" visible="True" name="Sorter_CATEGORY_CODE" column="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSortingType="SimpleDir" wizardControl="CATEGORY_CODE" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_CATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_SCHOOL_TYPE_CODE1" column="SCHOOL_TYPE.SCHOOL_TYPE_CODE" wizardCaption="SCHOOL TYPE CODE" wizardSortingType="SimpleDir" wizardControl="SCHOOL_TYPE_CODE1" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_SCHOOL_TYPE_CODE1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_CAMPUS_CODE1" column="CAMPUS.CAMPUS_CODE" wizardCaption="CAMPUS CODE" wizardSortingType="SimpleDir" wizardControl="CAMPUS_CODE1" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_CAMPUS_CODE1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_FROM_YEAR_LEVEL" column="FROM_YEAR_LEVEL" wizardCaption="FROM YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="FROM_YEAR_LEVEL" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_FROM_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="13" visible="True" name="Sorter_TO_YEAR_LEVEL" column="TO_YEAR_LEVEL" wizardCaption="TO YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="TO_YEAR_LEVEL" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_TO_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_PER_SUBJECT_FLAG" column="PER_SUBJECT_FLAG" wizardCaption="PER SUBJECT FLAG" wizardSortingType="SimpleDir" wizardControl="PER_SUBJECT_FLAG" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_PER_SUBJECT_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_DEFAULT_CONTRIBUTION" column="DEFAULT_CONTRIBUTION" wizardCaption="DEFAULT CONTRIBUTION" wizardSortingType="SimpleDir" wizardControl="DEFAULT_CONTRIBUTION" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_DEFAULT_CONTRIBUTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="16" visible="True" name="Sorter_DISCOUNT_AMOUNT" column="DISCOUNT_AMOUNT" wizardCaption="DISCOUNT AMOUNT" wizardSortingType="SimpleDir" wizardControl="DISCOUNT_AMOUNT" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_DISCOUNT_AMOUNT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="17" visible="True" name="Sorter_LAST_ALTERED_BY" column="CONTRIBUTION.LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="18" visible="True" name="Sorter_LAST_ALTERED_DATE" column="CONTRIBUTION.LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="CONTRIBUTIONSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="CONTRIBUTION_maint.ccp" PathID="CONTRIBUTIONCATEGORY_CODE" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="21" sourceType="DataField" format="yyyy-mm-dd" name="CATEGORY_CODE" source="CATEGORY_CODE"/>
						<LinkParameter id="64" sourceType="DataField" name="SCHOOL_TYPE_CODE" source="SCHOOL_TYPE_CODE"/>
						<LinkParameter id="65" sourceType="DataField" name="FROM_YEAR_LEVEL" source="FROM_YEAR_LEVEL"/>
						<LinkParameter id="66" sourceType="DataField" name="TO_YEAR_LEVEL" source="TO_YEAR_LEVEL"/>
						<LinkParameter id="71" sourceType="DataField" name="CAMPUS_CODE" source="CAMPUS_CODE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_TYPE_CODE1" fieldSource="SCHOOL_TYPE_CODE" wizardCaption="SCHOOL TYPE CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="CAMPUS_CODE1" fieldSource="CAMPUS_CODE" wizardCaption="CAMPUS CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Integer" html="False" name="FROM_YEAR_LEVEL" fieldSource="FROM_YEAR_LEVEL" wizardCaption="FROM YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Integer" html="False" name="TO_YEAR_LEVEL" fieldSource="TO_YEAR_LEVEL" wizardCaption="TO YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="31" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="PER_SUBJECT_FLAG" fieldSource="PER_SUBJECT_FLAG" wizardCaption="PER SUBJECT FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Single" html="False" name="DEFAULT_CONTRIBUTION" fieldSource="DEFAULT_CONTRIBUTION" wizardCaption="DEFAULT CONTRIBUTION" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" format="$0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Single" html="False" name="DISCOUNT_AMOUNT" fieldSource="DISCOUNT_AMOUNT" wizardCaption="DISCOUNT AMOUNT" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" format="$0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="37" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="CONTRIBUTION_LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="CONTRIBUTION_LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_CATEGORY_CODE" fieldSource="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="CONTRIBUTION_maint.ccp" PathID="CONTRIBUTIONAlt_CATEGORY_CODE" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="41" sourceType="DataField" format="yyyy-mm-dd" name="CATEGORY_CODE" source="CATEGORY_CODE"/>
						<LinkParameter id="67" sourceType="DataField" name="SCHOOL_TYPE_CODE" source="SCHOOL_TYPE_CODE"/>
						<LinkParameter id="68" sourceType="DataField" name="CAMPUS_CODE" source="CAMPUS_CODE"/>
						<LinkParameter id="69" sourceType="DataField" name="FROM_YEAR_LEVEL" source="FROM_YEAR_LEVEL"/>
						<LinkParameter id="70" sourceType="DataField" name="TO_YEAR_LEVEL" source="TO_YEAR_LEVEL"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="42" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SCHOOL_TYPE_CODE1" fieldSource="SCHOOL_TYPE_CODE" wizardCaption="SCHOOL TYPE CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_CAMPUS_CODE1" fieldSource="CAMPUS_CODE" wizardCaption="CAMPUS CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="44" fieldSourceType="DBColumn" dataType="Integer" html="False" name="Alt_FROM_YEAR_LEVEL" fieldSource="FROM_YEAR_LEVEL" wizardCaption="FROM YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Integer" html="False" name="Alt_TO_YEAR_LEVEL" fieldSource="TO_YEAR_LEVEL" wizardCaption="TO YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="46" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="Alt_PER_SUBJECT_FLAG" fieldSource="PER_SUBJECT_FLAG" wizardCaption="PER SUBJECT FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="47" fieldSourceType="DBColumn" dataType="Single" html="False" name="Alt_DEFAULT_CONTRIBUTION" fieldSource="DEFAULT_CONTRIBUTION" wizardCaption="DEFAULT CONTRIBUTION" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" format="$0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="48" fieldSourceType="DBColumn" dataType="Single" html="False" name="Alt_DISCOUNT_AMOUNT" fieldSource="DISCOUNT_AMOUNT" wizardCaption="DISCOUNT AMOUNT" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" format="$0.00">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LAST_ALTERED_BY" fieldSource="CONTRIBUTION_LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Date" html="False" name="Alt_LAST_ALTERED_DATE" fieldSource="CONTRIBUTION_LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="51" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="CONTRIBUTIONNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="59" conditionType="Parameter" useIsNull="False" field="CATEGORY_CODE" parameterSource="s_CATEGORY_CODE" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1"/>
				<TableParameter id="60" conditionType="Parameter" useIsNull="False" field="CAMPUS_CODE" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="2" defaultValue="&quot;[D]&quot;" parameterSource="s_CAMPUS_CODE"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="CONTRIBUTION" posWidth="358" posHeight="220" posLeft="10" posRight="-1" posTop="10"/>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
				<Field id="19" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.CATEGORY_CODE"/>
				<Field id="26" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.FROM_YEAR_LEVEL"/>
				<Field id="28" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.TO_YEAR_LEVEL"/>
				<Field id="30" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.PER_SUBJECT_FLAG"/>
				<Field id="32" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.DEFAULT_CONTRIBUTION"/>
				<Field id="34" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.DISCOUNT_AMOUNT"/>
				<Field id="36" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.LAST_ALTERED_BY" alias="CONTRIBUTION_LAST_ALTERED_BY"/>
				<Field id="38" tableName="CONTRIBUTION" fieldName="CONTRIBUTION.LAST_ALTERED_DATE" alias="CONTRIBUTION_LAST_ALTERED_DATE"/>
				<Field id="55" tableName="CONTRIBUTION" fieldName="SCHOOL_TYPE_CODE"/>
				<Field id="56" tableName="CONTRIBUTION" fieldName="CAMPUS_CODE"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<IncludePage id="52" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="53" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="57" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="CONTRIBUTION1" wizardCaption="Search CONTRIBUTION " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="CONTRIBUTION_list.ccp" PathID="CONTRIBUTION1">
			<Components>
				<Button id="58" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="CONTRIBUTION1Button_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="CONTRIBUTION1s_CATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="62" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="s_CAMPUS_CODE" wizardCaption="CAMPUS CODE" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" PathID="CONTRIBUTION1s_CAMPUS_CODE" dataSource="[D];VSV;[D,V];All" defaultValue="&quot;[D]&quot;">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</RadioButton>
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
		<Link id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Contrib_insert" PathID="Contrib_insert" hrefSource="CONTRIBUTION_maint.ccp" wizardUseTemplateBlock="False" removeParameters="CATEGORY_CODE">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="CONTRIBUTION_list.aspx" forShow="True" url="CONTRIBUTION_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="CONTRIBUTION_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="CONTRIBUTION_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
