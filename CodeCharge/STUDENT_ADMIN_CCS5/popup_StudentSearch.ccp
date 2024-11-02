<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="14" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="All" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_STUDENT_ENROLMENT" wizardCaption="Search STUDENT STUDENT ENROLMENT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="popup_StudentSearch.ccp" PathID="STUDENT_STUDENT_ENROLMENT">
			<Components>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="STUDENT_STUDENT_ENROLMENTs_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="34" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" PathID="STUDENT_STUDENT_ENROLMENTButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
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
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="STUDENT, STUDENT_ENROLMENT" activeCollection="TableParameters" name="STUDENT_STUDENT_ENROLMENT1" orderBy="SURNAME" pageSizeLimit="100" wizardCaption="List of STUDENT, STUDENT ENROLMENT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Student Details found" PathID="STUDENT_STUDENT_ENROLMENT1">
			<Components>
				<Sorter id="18" visible="True" name="Sorter_STUDENT_STUDENT_ID" column="STUDENT.STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_STUDENT_ID" wizardAddNbsp="False" PathID="STUDENT_STUDENT_ENROLMENT1Sorter_STUDENT_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="19" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="STUDENT_STUDENT_ENROLMENT1Sorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="STUDENT_STUDENT_ENROLMENT1Sorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="21" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="STUDENT_STUDENT_ENROLMENT1Sorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="22" visible="True" name="Sorter_SEX" column="SEX" wizardCaption="SEX" wizardSortingType="SimpleDir" wizardControl="SEX" wizardAddNbsp="False" PathID="STUDENT_STUDENT_ENROLMENT1Sorter_SEX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="23" visible="True" name="Sorter_ENROLMENT_YEAR" column="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="STUDENT_STUDENT_ENROLMENT1Sorter_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="25" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_STUDENT_ID" fieldSource="STUDENT_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" PathID="STUDENT_STUDENT_ENROLMENT1STUDENT_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEX" fieldSource="SEX" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Float" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="31" size="10" name="Navigator" wizardPagingType="ImageButtons" wizardFirst="False" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="False" wizardLastText="Last" wizardImages="ImagesWithText" wizardSize="10" wizardTotalPages="False" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" type="Simple" pageSizes="1;5;10;25;50" PathID="STUDENT_STUDENT_ENROLMENT1Navigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="24" styles="Row;AltRow" name="rowStyle"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="13" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="ENROLMENT_YEAR = year(getdate())"/>
				<TableParameter id="17" conditionType="Parameter" useIsNull="False" field="STUDENT.SURNAME" parameterSource="s_SURNAME" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="STUDENT" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
				<JoinTable id="4" tableName="STUDENT_ENROLMENT" schemaName="dbo" posLeft="245" posTop="11" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="5" tableLeft="STUDENT" tableRight="STUDENT_ENROLMENT" fieldLeft="STUDENT.STUDENT_ID" fieldRight="STUDENT_ENROLMENT.STUDENT_ID" joinType="inner" conditionType="Equal"/>
			</JoinLinks>
			<Fields>
				<Field id="6" tableName="STUDENT" fieldName="STUDENT.STUDENT_ID" alias="STUDENT_STUDENT_ID"/>
				<Field id="8" tableName="STUDENT" fieldName="SURNAME"/>
				<Field id="9" tableName="STUDENT" fieldName="FIRST_NAME"/>
				<Field id="10" tableName="STUDENT" fieldName="SEX"/>
				<Field id="11" tableName="STUDENT_ENROLMENT" fieldName="YEAR_LEVEL"/>
				<Field id="12" tableName="STUDENT_ENROLMENT" fieldName="ENROLMENT_YEAR"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="popup_StudentSearch.aspx" forShow="True" url="popup_StudentSearch.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="popup_StudentSearch.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="popup_StudentSearchDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="32" form="STUDENT_STUDENT_ENROLMENT" name="s_SURNAME"/>
			</Actions>
		</Event>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Hide-Show Component" actionCategory="General" id="33" action="Hide" conditionType="Parameter" dataType="Text" componentName="STUDENT_STUDENT_ENROLMENT1" condition="Equal" name1="s_SURNAME" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
			</Actions>
		</Event>
	</Events>
</Page>
