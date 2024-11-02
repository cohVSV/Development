<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="SQL" defaultPageSize="40" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" activeCollection="UFormElements" parameterTypeListName="CustomTableParameterTypeList" name="view_Class_List" pageSizeLimit="200" wizardCaption="List of View Class List " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Unallocated Students found! Well Done!" PathID="view_Class_List" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" customUpdateType="Table" customUpdate="STUDENT_SUBJECT" wizardAllowSorting="True" dataSource="select
   se.ENROLMENT_YEAR,
   st.STUDENT_ID,
   iif(nullif(st.PREFERRED_NAME, '') is null,
      rtrim(st.FIRST_NAME),
      concat(rtrim(st.FIRST_NAME), ' (', st.PREFERRED_NAME, ')')) as FIRST_NAME,
   rtrim(st.SURNAME) as SURNAME,
   se.YEAR_LEVEL,
   ss.SUBJECT_ID,
   ss.SEMESTER,
   rtrim(sbj.SUBJECT_TITLE) as SUBJECT_TITLE,
   rtrim(sbj.SUBJECT_ABBREV) as SUBJECT_ABBREV,
   ss.ENROLMENT_DATE,
   ss.SUBJ_ENROL_STATUS,
   rtrim(ss.STAFF_ID) as STAFF_ID,
   rtrim(sch.SCHOOL_NAME) as SCHOOL_NAME
 from
   dbo.STUDENT as st
   inner join dbo.STUDENT_ENROLMENT as se
      on (se.STUDENT_ID = st.STUDENT_ID)
   inner join dbo.STUDENT_SUBJECT as ss
      on (
            (ss.STUDENT_ID = se.STUDENT_ID)
            and (ss.ENROLMENT_YEAR = se.ENROLMENT_YEAR)
         )
   inner join dbo.SUBJECT as sbj
      on (sbj.SUBJECT_ID = ss.SUBJECT_ID)
   left join dbo.SCHOOL as sch
      on (sch.SCHOOL_ID = st.HOME_SCHOOL_ID)
 where
   (se.ENROLMENT_YEAR = iif(month(getdate()) &lt;&gt; 12, year(getdate()), year(getdate()) + 1))
   and (ss.SUBJECT_ID between 100 and 899)
   and (sbj.YEAR_LEVEL between 7 and 12)
   and (ss.SEMESTER in ('B', '{s_SEMESTER}'))
   and (ss.SUBJ_ENROL_STATUS &lt;&gt; 'W')
   and
   (
      (
         ('{rbSearchType}' = 'U')
         and (ss.STAFF_ID = 'N-A')
         and (
                ({ddlSubject} = 0)
                or (ss.SUBJECT_ID = {ddlSubject})
             )
      )
      or
      (
         ('{rbSearchType}' = 'C')
         and (ss.SUBJECT_ID = {ddlSubject})
      )
   )
   and
   (
      ({radioYearLevel} = 0)
      or ({radioYearLevel} = se.YEAR_LEVEL)
   )
   and
   (
      (nullif('{s_SURNAME}', '') is null)
      or
      (
         (len('{s_SURNAME}') &gt;= 2)
         and
         (
            (st.PREFERRED_NAME like '%{s_SURNAME}%')
            or (st.FIRST_NAME like '%{s_SURNAME}%')
            or (st.SURNAME like '%{s_SURNAME}%')
            or (sch.SCHOOL_NAME like '%{s_SURNAME}%')
         )
      )
   )
 order by
   ss.ENROLMENT_DATE,
   ss.STUDENT_ID" activeTableType="STUDENT_SUBJECT" wizardUsePageScroller="True">
			<Components>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" name="view_Class_List_TotalRecords" wizardUseTemplateBlock="False" PathID="view_Class_Listview_Class_List_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="35"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="42" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" PathID="view_Class_ListSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="43" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" PathID="view_Class_ListSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="47" visible="True" name="Sorter_SCHOOL_NAME" column="SCHOOL_NAME" wizardCaption="SCHOOL NAME" wizardSortingType="SimpleDir" wizardControl="SCHOOL_NAME" PathID="view_Class_ListSorter_SCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="48" visible="True" name="Sorter_SEMESTER" column="SEMESTER" wizardCaption="SEMESTER" wizardSortingType="SimpleDir" wizardControl="SEMESTER" PathID="view_Class_ListSorter_SEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="50" visible="True" name="Sorter_SUBJECT_TITLE" column="SUBJECT_TITLE" wizardCaption="SUBJECT TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" PathID="view_Class_ListSorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="51" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSortingType="SimpleDir" wizardControl="SUBJ_ENROL_STATUS" PathID="view_Class_ListSorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="52" visible="True" name="Sorter_ENROLMENT_DATE" column="ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_DATE" PathID="view_Class_ListSorter_ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="53" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListSTUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="StudentSummary.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="81" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="82" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Label id="54" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" required="False" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="58" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_NAME" fieldSource="SCHOOL_NAME" required="True" caption="SCHOOL NAME" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListSCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="59" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" required="True" caption="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListSEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="60" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="STAFF_ID" fieldSource="STAFF_ID" required="False" caption="STAFF ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="view_Class_ListSTAFF_ID" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="null;All is Nothing">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
					</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Label id="61" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" required="True" caption="SUBJECT TITLE" wizardCaption="SUBJECT TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListSUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="62" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" required="True" caption="SUBJ ENROL STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListSUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="63" fieldSourceType="DBColumn" dataType="Date" html="False" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" required="True" caption="ENROLMENT DATE" wizardCaption="ENROLMENT DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListENROLMENT_DATE" format="dd mmm, yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="64" size="4" type="Moving" pageSizes="40;200;500" name="Navigator" wizardPagingType="Custom" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Moving" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="False" wizardOfText="of" wizardUsePageScroller="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="65" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="view_Class_ListButton_Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="55" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" required="False" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="50" wizardMaxLength="82" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="56" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" required="True" caption="SUBJECT ABBREV" wizardCaption="SUBJECT ABBREV" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_Class_ListSUBJECT_ABBREV" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="SUBJECT_maint.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="80" sourceType="DataField" name="SUBJECT_ID" source="SUBJECT_ID"/>
					</LinkParameters>
				</Link>
				<Link id="116" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_ShowCurrentEnrolment" PathID="view_Class_Listlink_ShowCurrentEnrolment" wizardUseTemplateBlock="False" hrefSource="StudentSubject_TeacherStats.ccp" linkProperties="{'textSource':'current','textSourceDB':'','hrefSource':'StudentSubject_TeacherStats.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'SUBJECT_ID','parameterName':'SUBJECT_ID'},'1':{'sourceType':'DataField','parameterSource':'SUBJECT_ABBREV','parameterName':'SUBJECT_ABBREV'},'2':{'sourceType':'DataField','parameterSource':'ENROLMENT_YEAR','parameterName':'ENROLMENT_YEAR'},'length':3,'objectType':'linkParameters'}}">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="117" sourceType="DataField" format="yyyy-mm-dd" name="SUBJECT_ID" source="SUBJECT_ID"/>
						<LinkParameter id="139" sourceType="DataField" name="SUBJECT_ABBREV" source="SUBJECT_ABBREV"/>
						<LinkParameter id="180" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="138" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" PathID="view_Class_ListCancel" operation="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="143" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblWarnFull" PathID="view_Class_ListlblWarnFull">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="146" visible="True" name="SorterYEAR_LEVEL" wizardSortingType="SimpleDir" PathID="view_Class_ListSorterYEAR_LEVEL" wizardCaption="YEAR LEVEL" column="YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="159" fieldSourceType="DBColumn" dataType="Text" html="False" name="YEAR_LEVEL" PathID="view_Class_ListYEAR_LEVEL" fieldSource="YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="178" fieldSourceType="DBColumn" dataType="Text" name="hidPreviousStaffID" PathID="view_Class_ListhidPreviousStaffID" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="179" fieldSourceType="CodeExpression" dataType="Text" html="False" generateSpan="False" name="lblStudentSubjectTeacherListHeading" PathID="view_Class_ListlblStudentSubjectTeacherListHeading" fieldSource="If(Request.QueryString?(&quot;rbSearchType&quot;)?.Equals(&quot;C&quot;), &quot;Student Subject Teacher Allocations&quot;, &quot;Students with Unallocated Subject Teachers&quot;)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="77"/>
						<Action actionName="Custom Code" actionCategory="General" id="142"/>
					</Actions>
				</Event>
				<Event name="BeforeExecuteUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="177"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="171" dataType="Text" designDefaultValue="1" parameterSource="s_SEMESTER" parameterType="URL" variable="s_SEMESTER"/>
				<SQLParameter id="172" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="radioYearLevel" parameterType="URL" variable="radioYearLevel"/>
				<SQLParameter id="173" dataType="Text" parameterSource="s_SURNAME" parameterType="URL" variable="s_SURNAME"/>
				<SQLParameter id="174" dataType="Text" designDefaultValue="U" parameterSource="rbSearchType" parameterType="URL" variable="rbSearchType"/>
				<SQLParameter id="175" dataType="Integer" defaultValue="0" designDefaultValue="0" parameterSource="ddlSubject" parameterType="URL" variable="ddlSubject"/>
			</SQLParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields>
			</Fields>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters>
				<SPParameter id="Key72" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key73" parameterName="@STUDENT_ID" parameterSource="hidden_STUDENT_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key74" parameterName="@ENROLMENT_YEAR" parameterSource="YEAR(Getdate())" dataType="Int" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key75" parameterName="@SubjectID" parameterSource="SUBJECT_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key76" parameterName="@Semester" parameterSource="hidden_SEMESTER" dataType="Char" parameterType="Control" dataSize="1" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key77" parameterName="@updateFlag" parameterSource="1" dataType="Int" parameterType="Expression" dataSize="1" direction="Input" scale="0" precision="10" defaultValue="1" designDefaultValue="0"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="73" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="74" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="75" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="SUBJECT_ID"/>
				<TableParameter id="76" conditionType="Parameter" useIsNull="False" field="SEMESTER" dataType="Text" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="SEMESTER"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="69" field="STAFF_ID" dataType="Text" parameterType="Control" parameterSource="STAFF_ID" omitIfEmpty="True"/>
				<CustomParameter id="78" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="Session(&quot;UserID&quot;).Tostring()"/>
				<CustomParameter id="79" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="Now()"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="25" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="view_Class_ListSearch" wizardCaption="Search View Class List " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="StudentSubject_TeachersNotYetAllocated.ccp" PathID="view_Class_ListSearch">
			<Components>
				<Link id="26" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="StudentSubject_TeachersNotYetAllocated.ccp" removeParameters="s_SURNAME;s_SEMESTER;radioYearLevel;rbSearchType;ddlSubject" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="view_Class_ListSearchClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="27" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="view_Class_ListSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="view_Class_ListSearchs_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="145" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="radioYearLevel" PathID="view_Class_ListSearchradioYearLevel" _valueOfList="12" _nameOfList="Year 12 VCE" dataSource="0;All Years;7;Year 7;8;Year 8;9;Year 9;10;Year 10;11;Year 11 VCE;12;Year 12 VCE" defaultValue="0">
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
				<RadioButton id="169" visible="Yes" fieldSourceType="CodeExpression" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="rbSearchType" PathID="view_Class_ListSearchrbSearchType" dataSource="U;Unallocated student subject teachers&lt;br/&gt;;C;Current allocations for a subject (must be selected below)" defaultValue="&quot;U&quot;">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
				<ListBox id="170" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="ddlSubject" wizardEmptyCaption="Select Value" PathID="view_Class_ListSearchddlSubject" caption="Subject" connection="connDECVPRODSQL2005" dataSource="select 0 as SUBJECT_ID, 'All subjects' as subject_displaylabel, 0 as DisplayOrder
union
select
   SUBJECT_ID,
   subject_displaylabel,
   1
 from
   dbo.view_ReportParams_Subjects
 where
   (SUBJECT_ID between 100 and 899)
   and (YEAR_LEVEL between 7 and 12)
 order by
   DisplayOrder,
   subject_displaylabel" boundColumn="SUBJECT_ID" textColumn="subject_displaylabel" defaultValue="0" validationRule="(rbSearchType.Value?.ToString().Equals(&quot;U&quot;) OrElse ((ddlSubject.Value IsNot Nothing) AndAlso (Not ddlSubject.Value?.ToString().Equals(&quot;0&quot;))))" validationText="A subject must be selected when searching for current student subject teacher allocations">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<RadioButton id="33" visible="Yes" fieldSourceType="CodeExpression" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="s_SEMESTER" caption="SEMESTER" dataSource="1;1;2;2" defaultValue="If((Month(Now()) &gt;= 6) AndAlso (Month(Now()) &lt; 12), &quot;2&quot;, &quot;1&quot;)" PathID="view_Class_ListSearchs_SEMESTER">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
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
		<Record id="163" sourceType="SQL" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ForceRun" actionPage="StudentSubject_TeachersNotYetAllocated" errorSummator="Error" wizardFormMethod="post" PathID="ForceRun" dataSource="select 1" customUpdateType="Procedure" connection="connDECVPRODSQL2005" parameterTypeListName="ParameterTypeList" customUpdate="spu_NewEnrol_SubjectTeacher_Allocation_GetStudents;1" activeCollection="USPParameters">
			<Components>
				<ListBox id="164" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" defaultValue="200" name="listBatchSize" PathID="ForceRunlistBatchSize" sourceType="ListOfValues" caption="Batch Size" required="True" dataSource="100;100;200;200;350;350;500;500">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</ListBox>
				<CheckBox id="165" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" defaultValue="Checked" name="checkVCEOnly" PathID="ForceRuncheckVCEOnly" checkedValue="1" uncheckedValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Button id="166" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="ForceRunButton_Update">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="168"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="167" name="&quot;Manual Allocation Run completed&quot;" sourceType="Session" sourceName="notifymessage"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters>
				<SPParameter id="Key78" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key79" parameterName="@batchSize" parameterSource="listBatchSize" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10" defaultValue="200" designDefaultValue="200"/>
				<SPParameter id="Key80" parameterName="@updateFlag" parameterSource="1" dataType="Int" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="10" defaultValue="1" designDefaultValue="1"/>
				<SPParameter id="Key81" parameterName="@VCEOnly" parameterSource="checkVCEOnly" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10" defaultValue="0" designDefaultValue="0"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements/>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentSubject_TeachersNotYetAllocated.aspx" forShow="True" url="StudentSubject_TeachersNotYetAllocated.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentSubject_TeachersNotYetAllocated.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentSubject_TeachersNotYetAllocatedDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="67" form="view_Class_ListSearch" name="s_SURNAME"/>
				<Action actionName="Custom Code" actionCategory="General" id="133"/>
			</Actions>
		</Event>
	</Events>
</Page>
