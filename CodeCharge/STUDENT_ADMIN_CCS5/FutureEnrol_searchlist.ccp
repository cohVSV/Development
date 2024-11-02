<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" name="STUDENT_ENROLMENT_STUDENT" connection="connDECVPRODSQL2005" dataSource="STUDENT, STUDENT_ENROLMENT" pageSizeLimit="100" pageSize="True" wizardCaption="List of Future Student Enrolments" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Future Students found!" wizardGridPagingType="Simple" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="True" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="STUDENT_ENROLMENT_STUDENT" composition="15" isParent="True">
			<Components>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="STUDENT_ENROLMENT_STUDENT_TotalRecords" wizardUseTemplateBlock="False" PathID="STUDENT_ENROLMENT_STUDENTSTUDENT_ENROLMENT_STUDENT_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="20"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="23" visible="True" name="Sorter_STUDENT_STUDENT_ID" column="STUDENT_STUDENT_ID" wizardCaption="STUDENT STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_STUDENT_ID" wizardAddNbsp="False" PathID="STUDENT_ENROLMENT_STUDENTSorter_STUDENT_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="24" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="STUDENT_ENROLMENT_STUDENTSorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="25" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="STUDENT_ENROLMENT_STUDENTSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_CATEGORY_CODE" column="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardSortingType="SimpleDir" wizardControl="CATEGORY_CODE" wizardAddNbsp="False" PathID="STUDENT_ENROLMENT_STUDENTSorter_CATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="STUDENT_ENROLMENT_STUDENTSorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_ENROLMENT_DATE" column="ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_DATE" wizardAddNbsp="False" PathID="STUDENT_ENROLMENT_STUDENTSorter_ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="29" visible="True" name="Sorter_ENROLMENT_YEAR" column="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="STUDENT_ENROLMENT_STUDENTSorter_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="30" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="STUDENT_STUDENT_ID" fieldSource="STUDENT_STUDENT_ID" wizardCaption="STUDENT STUDENT ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_ENROLMENT_STUDENTSTUDENT_STUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" linkProperties="{'textSource':'','textSourceDB':'STUDENT_STUDENT_ID','hrefSource':'FutureEnrol_StudentMaintain.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'STUDENT_STUDENT_ID','parameterName':'STUDENT_ID'},'1':{'sourceType':'DataField','parameterSource':'ENROLMENT_YEAR','parameterName':'ENROLMENT_YEAR'},'2':{'sourceType':'DataField','parameterSource':'STUDENT_STUDENT_ID','parameterName':'STUDENT_ID'},'3':{'sourceType':'DataField','parameterSource':'ENROLMENT_YEAR','parameterName':'ENROLMENT_YEAR'},'length':4,'objectType':'linkParameters'}}" hrefSource="FutureEnrol_StudentMaintain.ccp" removeParameters="s_STUDENT_ID;s_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="74" sourceType="DataField" name="STUDENT_ID" source="STUDENT_STUDENT_ID"/>
						<LinkParameter id="75" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_ENROLMENT_STUDENTFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_ENROLMENT_STUDENTSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" wizardCaption="CATEGORY CODE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_ENROLMENT_STUDENTCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="STUDENT_ENROLMENT_STUDENTYEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_ENROLMENT_STUDENTENROLMENT_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_ENROLMENT_STUDENTENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="37" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="True" wizardImagesScheme="Blueprint">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="61" conditionType="Expression" useIsNull="False" dataType="Text" expression="ENROLMENT_STATUS='F'" field="ENROLMENT_STATUS" logicOperator="And" parameterSource="ENROLMENT_STATUS" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="62" conditionType="Expression" useIsNull="False" expression="ENROLMENT_YEAR &gt;= Year(getdate())" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="63" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT.STUDENT_ID" leftBrackets="1" logicOperator="Or" orderNumber="1" parameterSource="s_STUDENT_ID" parameterType="URL" searchConditionType="Equal" searchFormParameter="True"/>
				<TableParameter id="64" conditionType="Parameter" useIsNull="False" dataType="Text" field="STUDENT.SURNAME" logicOperator="Or" orderNumber="2" parameterSource="s_SURNAME" parameterType="URL" rightBrackets="0" searchConditionType="Contains" searchFormParameter="True"/>
				<TableParameter id="65" conditionType="Parameter" useIsNull="False" dataType="Text" field="FIRST_NAME" logicOperator="And" parameterSource="s_SURNAME" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="58" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT"/>
				<JoinTable id="59" posHeight="180" posLeft="191" posTop="10" posWidth="160" tableName="STUDENT_ENROLMENT"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="60" conditionType="Equal" fieldLeft="STUDENT.STUDENT_ID" fieldRight="STUDENT_ENROLMENT.STUDENT_ID" joinType="inner" tableLeft="STUDENT" tableRight="STUDENT_ENROLMENT"/>
			</JoinLinks>
			<Fields>
				<Field id="66" alias="STUDENT_STUDENT_ID" fieldName="STUDENT.STUDENT_ID" tableName="STUDENT"/>
				<Field id="67" fieldName="SURNAME" tableName="STUDENT"/>
				<Field id="68" fieldName="FIRST_NAME" tableName="STUDENT"/>
				<Field id="69" fieldName="CATEGORY_CODE" tableName="STUDENT"/>
				<Field id="70" fieldName="YEAR_LEVEL" tableName="STUDENT_ENROLMENT"/>
				<Field id="71" fieldName="ENROLMENT_DATE" tableName="STUDENT_ENROLMENT"/>
				<Field id="72" fieldName="ENROLMENT_YEAR" tableName="STUDENT_ENROLMENT"/>
			</Fields>
			<PKFields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Record id="38" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_ENROLMENT_STUDENT1" searchIds="38" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="Grid" returnPage="FutureEnrol_searchlist.ccp" PathID="STUDENT_ENROLMENT_STUDENT1" composition="15">
			<Components>
				<Link id="39" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="FutureEnrol_searchlist.ccp" removeParameters="s_STUDENT_ID;s_SURNAME" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="STUDENT_ENROLMENT_STUDENT1ClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="40" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STUDENT_ENROLMENT_STUDENT1Button_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="41" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_STUDENT_ID" wizardIsPassword="False" wizardCaption="STUDENT STUDENT ID" caption="STUDENT ID" required="False" unique="False" wizardSize="12" wizardMaxLength="12" PathID="STUDENT_ENROLMENT_STUDENT1s_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardCaption="SURNAME" caption="SURNAME" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="STUDENT_ENROLMENT_STUDENT1s_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Set Focus" actionCategory="General" id="73" name="s_SURNAME"/>
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
		</Record>
		<Record id="10" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENTSearch" wizardCaption="Search STUDENT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="FutureEnrol_StudentMaintain.ccp" PathID="STUDENTSearch" customInsertType="Table" connection="connDECVPRODSQL2005" dataSource="STUDENT" parameterTypeListName="ParameterTypeList" customInsert="STUDENT" activeCollection="IFormElements" activeTableType="STUDENT">
			<Components>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" required="False" caption="Surname" PathID="STUDENTSearchs_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" required="False" caption="First Name" PathID="STUDENTSearchs_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="s_BIRTH_DATE" wizardCaption="BIRTH DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" caption="Birth Date" required="False" format="dd/mm/yyyy" PathID="STUDENTSearchs_BIRTH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="11" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Insert" wizardCaption="Search" PathID="STUDENTSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="85" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_ENROL_YEAR" PathID="STUDENTSearchs_ENROL_YEAR" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="86"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="105" fieldSourceType="DBColumn" dataType="Text" name="Hidden_NewStudentID" PathID="STUDENTSearchHidden_NewStudentID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="79"/>
						<Action actionName="Custom Code" actionCategory="General" id="83"/>
						<Action actionName="DLookup" actionCategory="Database" id="80" typeOfTarget="Variable" expression="&quot;count(*)&quot;" domain="&quot;STUDENT&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="tmpSTUDENTExists" criteria="tmpWhere"/>
						<Action actionName="Custom Code" actionCategory="General" id="84"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="87"/>
						<Action actionName="Custom Code" actionCategory="General" id="89"/>
					</Actions>
				</Event>
				<Event name="AfterExecuteInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="88"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key1" parameterName="@RETURN_VALUE" parameterSource="0" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key2" parameterName="@FirstName" parameterSource="s_FIRST_NAME" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="0"/>
				<SPParameter id="Key3" parameterName="@Surname" parameterSource="s_SURNAME" dataType="Char" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="0"/>
				<SPParameter id="Key4" parameterName="@BirthDate" parameterSource="s_BIRTH_DATE" dataType="Char" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="0"/>
				<SPParameter id="Key5" parameterName="@EnrolmentYear" parameterSource="s_ENROL_YEAR" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key6" parameterName="@UserID" parameterSource="DBUtility.UserID.ToUpper" dataType="Char" parameterType="Expression" dataSize="8" direction="Input" scale="0" precision="0"/>
				<SPParameter id="Key7" parameterName="@update" parameterSource="1" dataType="Int" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="10" defaultValue="1" designDefaultValue="1"/>
				<SPParameter id="Key8" parameterName="@returnmessage" parameterSource="returnmessage" dataType="Char" parameterType="Expression" dataSize="50" direction="Output" scale="0" precision="0"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="90" field="SURNAME" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="s_SURNAME"/>
				<CustomParameter id="91" field="FIRST_NAME" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="s_FIRST_NAME"/>
				<CustomParameter id="92" field="BIRTH_DATE" dataType="Date" parameterType="Control" DBFormat="yyyy-mm-dd HH:nn:ss" format="dd/mm/yyyy" omitIfEmpty="True" parameterSource="s_BIRTH_DATE"/>
				<CustomParameter id="93" field="SEX" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;U&quot;"/>
				<CustomParameter id="94" field="CATEGORY_CODE" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;OTHER&quot;"/>
				<CustomParameter id="95" field="SUBCATEGORY_CODE" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;OTHER&quot;"/>
				<CustomParameter id="96" field="HOME_SCHOOL_ID" dataType="Float" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;16261.00&quot;"/>
				<CustomParameter id="97" field="POSTAL_ADDRESS_ID" dataType="Float" parameterType="Expression" omitIfEmpty="True" parameterSource="263"/>
				<CustomParameter id="98" field="FULL_TIME" dataType="Boolean" parameterType="Expression" omitIfEmpty="True" parameterSource="0"/>
				<CustomParameter id="99" field="OS_FULL_FEE_PAYING" dataType="Boolean" parameterType="Expression" omitIfEmpty="True" parameterSource="0"/>
				<CustomParameter id="100" field="ADDRESS_REVIEW_FLAG" dataType="Boolean" parameterType="Expression" omitIfEmpty="True" parameterSource="0"/>
				<CustomParameter id="101" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="DBUtility.UserID.ToUpper"/>
				<CustomParameter id="102" field="LAST_ALTERED_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="Now()"/>
				<CustomParameter id="103" field="PORTAL_ACCESS" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;N&quot;"/>
				<CustomParameter id="104" field="ENROLLEDBEFORE" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="0"/>
				<CustomParameter id="106" field="ATTENDING_SCHOOL_ID" dataType="Float" parameterType="Expression" omitIfEmpty="True" parameterSource="&quot;16261.00&quot;"/>
			</IFormElements>
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
		<CodeFile id="3" language="VB" name="FutureEnrol_searchlist.aspx" forShow="True" url="FutureEnrol_searchlist.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="FutureEnrol_searchlist.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="FutureEnrol_searchlistDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="107" groupID="2"/>
		<Group id="108" groupID="3"/>
		<Group id="109" groupID="4"/>
		<Group id="110" groupID="6"/>
		<Group id="111" groupID="9"/>
		<Group id="112" groupID="11"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
