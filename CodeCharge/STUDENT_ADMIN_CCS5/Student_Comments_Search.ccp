<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<Grid id="2" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="SELECT top 50 *
FROM student_comment
WHERE year(last_altered_date) = year(getdate())
and LAST_ALTERED_BY = '{s_staffid}'
ORDER By last_altered_date desc
" name="Grid_CommentsResults" pageSizeLimit="100" wizardCaption="List of Grid1 " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Comments found!">
			<Components>
				<Label id="6" fieldSourceType="DBColumn" dataType="Text" html="False" name="Grid1_TotalRecords" wizardUseTemplateBlock="False" PathID="Grid_CommentsResultsGrid1_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="7" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="8" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="Grid_CommentsResultsSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="9" visible="True" name="Sorter_COMMENT" column="COMMENT" wizardCaption="COMMENT" wizardSortingType="SimpleDir" wizardControl="COMMENT" wizardAddNbsp="False" PathID="Grid_CommentsResultsSorter_COMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="10" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="Grid_CommentsResultsSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="11" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="Grid_CommentsResultsSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_COMMENT_TYPE" column="COMMENT_TYPE" wizardCaption="COMMENT TYPE" wizardSortingType="SimpleDir" wizardControl="COMMENT_TYPE" wizardAddNbsp="False" PathID="Grid_CommentsResultsSorter_COMMENT_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="13" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid_CommentsResultsSTUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="Student_Comments_maintain.ccp" removeParameters="ENROLMENT_YEAR;STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="24" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="25" sourceType="Expression" name="ENROLMENT_YEAR" source="Year(Now())"/>
					</LinkParameters>
				</Link>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT" fieldSource="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResultsCOMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResultsLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResultsLAST_ALTERED_DATE" format="d mmm yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT_TYPE" fieldSource="COMMENT_TYPE" wizardCaption="COMMENT TYPE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResultsCOMMENT_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="18" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblMostRecent50" PathID="Grid_CommentsResultslblMostRecent50" defaultValue="&quot;&lt;font color=#cc9966&gt;Your 50 most recent comments this year&lt;/font&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeBuildSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="30" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="33" action="Hide" conditionType="Parameter" dataType="Text" componentName="Grid_CommentsResults" condition="NotEqual" name1="s_keywords" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="60" dataType="Text" designDefaultValue="&quot;eaffleck&quot;" parameterSource="DBUtility.UserLogin.ToUpper" parameterType="Expression" variable="s_staffid"/>
</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
</Grid>
		<Record id="19" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Search_Comments" wizardCaption="Search Grid1 " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Student_Comments_Search.ccp" PathID="Search_Comments" pasteActions="pasteActions" pasteAsReplace="pasteAsReplace">
			<Components>
				<Button id="20" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="Search_CommentsButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keywords" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" PathID="Search_Commentss_keywords">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="23" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="s_monthsago" wizardEmptyCaption="Select Value" PathID="Search_Commentss_monthsago" caption="Months ago" _valueOfList="-12" _nameOfList="12 months ago" defaultValue="-1" required="True" connection="connDECVPRODSQL2005" dataSource="select -1*(MONTH(getdate())) as [value], 'Start of this year' as [display_text] where MONTH(getdate()) &gt;= 6
union
select -3 as [value], '3 months ago' as [display_text] where MONTH(getdate()) &gt;= 4
union
select -1 as [value], '1 month ago' as [display_text] where MONTH(getdate()) &gt;= 2"><Components/>
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
				<Link id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="ClearParameters" hrefSource="Student_Comments_Search.ccp" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="Search_CommentsClearParameters" wizardUseTemplateBlock="False" removeParameters="s_keywords;s_monthsago">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkAirHead" PathID="Search_CommentslinkAirHead" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Recent 50','textSourceDB':'','hrefSource':'Student_Comments_Search.ccp','hrefSourceDB':'','title':'show Recent 50 comments','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}" hrefSource="Student_Comments_Search.ccp" removeParameters="s_keywords;s_monthsago">
<Components/>
<Events/>
<LinkParameters/>
<Attributes/>
<Features/>
</Link>
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
		<IncludePage id="27" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="38" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="SELECT top 200 *
FROM student_comment
WHERE CONTAINS(COMMENT, '&quot;{s_keywords}*&quot;')
and last_altered_date &gt;= DATEADD(mm, {s_monthsago} ,getdate())
and LAST_ALTERED_BY = '{s_staffid}'
ORDER By last_altered_date desc" name="Grid_CommentsResults1" pageSizeLimit="100" wizardCaption="List of Grid1 " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Comments found!">
			<Components>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="False" name="Grid1_TotalRecords" wizardUseTemplateBlock="False" PathID="Grid_CommentsResults1Grid1_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="40"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="41" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="Grid_CommentsResults1Sorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="42" visible="True" name="Sorter_COMMENT" column="COMMENT" wizardCaption="COMMENT" wizardSortingType="SimpleDir" wizardControl="COMMENT" wizardAddNbsp="False" PathID="Grid_CommentsResults1Sorter_COMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="43" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="Grid_CommentsResults1Sorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="44" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="Grid_CommentsResults1Sorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="45" visible="True" name="Sorter_COMMENT_TYPE" column="COMMENT_TYPE" wizardCaption="COMMENT TYPE" wizardSortingType="SimpleDir" wizardControl="COMMENT_TYPE" wizardAddNbsp="False" PathID="Grid_CommentsResults1Sorter_COMMENT_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="46" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="Grid_CommentsResults1STUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="Student_Comments_maintain.ccp" removeParameters="ENROLMENT_YEAR;STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="47" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="48" sourceType="Expression" name="ENROLMENT_YEAR" source="Year(Now())"/>
					</LinkParameters>
				</Link>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT" fieldSource="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResults1COMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResults1LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="51" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResults1LAST_ALTERED_DATE" format="d mmm yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT_TYPE" fieldSource="COMMENT_TYPE" wizardCaption="COMMENT TYPE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_CommentsResults1COMMENT_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="53" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeBuildSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="55"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="56" action="Hide" conditionType="Parameter" dataType="Text" componentName="Grid_CommentsResults1" condition="Equal" name1="s_keywords" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="65" dataType="Text" defaultValue="&quot;z&quot;" designDefaultValue="&quot;missing&quot;" parameterSource="s_keywords" parameterType="URL" variable="s_keywords"/>
<SQLParameter id="66" dataType="Integer" defaultValue="-1" designDefaultValue="-30" parameterSource="s_monthsago" parameterType="URL" variable="s_monthsago"/>
<SQLParameter id="67" dataType="Text" designDefaultValue="&quot;MMCIVER&quot;" parameterSource="DBUtility.UserLogin.ToUpper" parameterType="Expression" variable="s_staffid"/>
</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
</Grid>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Comments_Search.aspx" forShow="True" url="Student_Comments_Search.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Comments_Search.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Comments_SearchDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="29" form="Search_Comments" name="s_keywords"/>
			</Actions>
		</Event>
	</Events>
</Page>
