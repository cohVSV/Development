<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False" wizardSortingType="SimpleDir">
	<Components>
		<Grid id="6" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" name="SUBJECT" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of SUBJECT " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="SUBJECT" activeCollection="TableParameters" PathID="SUBJECT" pasteActions="pasteActions" editableComponentTypeString="Grid">
			<Components>
				<Sorter id="9" visible="True" name="Sorter_SUBJECT_ID" column="SUBJECT_ID" wizardCaption="ID" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ID" wizardAddNbsp="False" PathID="SUBJECTSorter_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_SUBJECT_ABBREV" column="SUBJECT_ABBREV" wizardCaption="ABBREV" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ABBREV" wizardAddNbsp="False" PathID="SUBJECTSorter_SUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_SUBJECT_TITLE" column="SUBJECT_TITLE" wizardCaption="TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" wizardAddNbsp="False" PathID="SUBJECTSorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="SUBJECTSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="SUBJECT_maint.ccp" PathID="SUBJECTSUBJECT_ID">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="15" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ID" source="SUBJECT_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardCaption="ABBREV" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardAddNbsp="True" wizardAlign="right" hrefSource="SUBJECT_maint.ccp" PathID="SUBJECTAlt_SUBJECT_ID">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="23" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ID" source="SUBJECT_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardCaption="ABBREV" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="Alt_STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="SUBJECT_Insert" hrefSource="SUBJECT_maint.ccp" removeParameters="SUBJECT_ID" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="SUBJECTSUBJECT_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Navigator id="27" size="10" type="Simple" name="Navigator" wizardFirst="True" wizardPrev="True" wizardFirstText="|&lt;" wizardPrevText="&lt;&lt;" wizardNextText="&gt;&gt;" wizardLastText="&gt;|" wizardNext="True" wizardLast="True" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="True" wizardOfText="of" wizardImagesScheme="Blueprint" pageSizes="1;5;10;25;50" PathID="SUBJECTNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Sorter id="52" visible="True" name="Sorter_Yearlevel" wizardSortingType="SimpleDir" PathID="SUBJECTSorter_Yearlevel" wizardCaption="Year Level" column="YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" name="YEAR_LEVEL" PathID="SUBJECTYEAR_LEVEL" fieldSource="YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="54" visible="True" name="Sorter_DefaultTeacherID" wizardSortingType="SimpleDir" PathID="SUBJECTSorter_DefaultTeacherID" wizardCaption="Default Teacher ID" column="DEFAULT_TEACHER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="55" fieldSourceType="DBColumn" dataType="Text" html="False" name="PARENT_SUBJECT_ID" PathID="SUBJECTPARENT_SUBJECT_ID" fieldSource="PARENT_SUBJECT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="245"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="56" fieldSourceType="DBColumn" dataType="Text" html="False" name="YEAR_LEVEL1" PathID="SUBJECTYEAR_LEVEL1" fieldSource="YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="57" fieldSourceType="DBColumn" dataType="Text" html="False" name="PARENT_SUBJECT_ID1" PathID="SUBJECTPARENT_SUBJECT_ID1" fieldSource="PARENT_SUBJECT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="246"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="SUBJECTLink1" hrefSource="StudentSubject_TeacherStats.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="62" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ID" source="SUBJECT_ID"/>
						<LinkParameter id="63" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ABBREV" source="SUBJECT_ABBREV"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link2" PathID="SUBJECTLink2" hrefSource="StudentSubject_TeacherStats.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="65" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ID" source="SUBJECT_ID"/>
						<LinkParameter id="66" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ABBREV" source="SUBJECT_ABBREV"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="82" visible="True" name="SorterCore" wizardSortingType="SimpleDir" PathID="SUBJECTSorterCore" wizardCaption="Core Yrs" column="CORE_YEARLEVELS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="83" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="CORE_YEARLEVELS" PathID="SUBJECTCORE_YEARLEVELS" fieldSource="CORE_YEARLEVELS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="117" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="CORE_YEARLEVELS1" PathID="SUBJECTCORE_YEARLEVELS1" fieldSource="CORE_YEARLEVELS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="187" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ALLOCATE_STUDENTS_MAX" PathID="SUBJECTALLOCATE_STUDENTS_MAX" fieldSource="ALLOCATE_STUDENTS_MAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="206" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ALLOCATE_STUDENTS_MAX1" PathID="SUBJECTALLOCATE_STUDENTS_MAX1" fieldSource="ALLOCATE_STUDENTS_MAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="207" visible="True" name="Sorter_ALLOCATE_STUDENTS_MAX" wizardSortingType="SimpleDir" PathID="SUBJECTSorter_ALLOCATE_STUDENTS_MAX" wizardCaption="MAX STUDENTS" column="ALLOCATE_STUDENTS_MAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
			</Components>
			<Events>
				<Event name="BeforeBuildSelect" type="Server">
					<Actions>
						<Action actionName="Advanced Search" actionCategory="General" id="47" searchForm="SUBJECT1" searchConditions="searchConditions" searchControl="s_keyword" searchDBFields="SUBJECT_ID,SUBJECT_ABBREV,SUBJECT_TITLE,YEAR_LEVEL"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="227" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="-1" field="YEAR_LEVEL" leftBrackets="1" logicOperator="Or" parameterSource="s_yearlevel" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="228" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT_ABBREV" leftBrackets="1" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="229" conditionType="Parameter" useIsNull="False" dataType="Integer" field="SUBJECT_ID" logicOperator="Or" parameterSource="s_subject_id" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="230" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT_TITLE_NEW" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="231" conditionType="Parameter" useIsNull="False" dataType="Text" field="SUBJECT_TITLE" logicOperator="And" parameterSource="s_keyword" parameterType="URL" rightBrackets="2" searchConditionType="Contains"/>
				<TableParameter id="232" conditionType="Parameter" useIsNull="False" dataType="Integer" defaultValue="1" field="STATUS" logicOperator="And" parameterSource="s_status" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="247" tableName="SUBJECT"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="233" fieldName="SUBJECT_ID" tableName="SUBJECT"/>
				<Field id="234" fieldName="SUBJECT_ABBREV" tableName="SUBJECT"/>
				<Field id="235" fieldName="SUBJECT_TITLE" tableName="SUBJECT"/>
				<Field id="236" fieldName="STATUS" tableName="SUBJECT"/>
				<Field id="237" fieldName="DEFAULT_TEACHER_ID" tableName="SUBJECT"/>
				<Field id="238" fieldName="YEAR_LEVEL" tableName="SUBJECT"/>
				<Field id="239" fieldName="LAST_ALTERED_BY" tableName="SUBJECT"/>
				<Field id="240" fieldName="LAST_ALTERED_DATE" tableName="SUBJECT"/>
				<Field id="241" fieldName="CORE_YEARLEVELS" tableName="SUBJECT"/>
				<Field id="242" fieldName="ALLOCATE_STUDENTS_MAX" tableName="SUBJECT"/>
				<Field id="243" fieldName="PARENT_SUBJECT_ID" tableName="SUBJECT"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="244" dataType="Integer" fieldName="SUBJECT_ID" tableName="SUBJECT"/>
			</PKFields>
		</Grid>
		<IncludePage id="33" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="SUBJECT_maint.ccp" wizardUseTemplateBlock="False" removeParameters="SUBJECT_ID" PathID="Link1">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="41" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECT1" wizardCaption="Search SUBJECT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="SUBJECT_list.ccp" PathID="SUBJECT1">
			<Components>
				<Link id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="SUBJECT_list.ccp" removeParameters="s_keyword;s_yearlevel;s_status;s_subject_id" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="SUBJECT1ClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="43" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SUBJECT1Button_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardCaption="Keyword" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="SUBJECT1s_keyword">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="48" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="s_yearlevel" wizardEmptyCaption="Select Value" PathID="SUBJECT1s_yearlevel" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled">
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
				</ListBox>
				<RadioButton id="58" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="s_status" PathID="SUBJECT1s_status" dataSource="1;Active;0;Inactive" defaultValue="1">
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
				<TextBox id="169" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_subject_id" PathID="SUBJECT1s_subject_id">
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="SUBJECT_list.aspx" forShow="True" url="SUBJECT_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="SUBJECT_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="SUBJECT_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="35" groupID="1"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
