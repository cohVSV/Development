<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0">
	<Components>
		<Record id="19" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="All" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_SUBJECT_SUBJECT" wizardCaption="Search STUDENT SUBJECT SUBJECT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="popup_StudentSubjectSearch.ccp" PathID="STUDENT_SUBJECT_SUBJECT">
			<Components>
				<TextBox id="21" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="STUDENT_SUBJECT_SUBJECTs_STUDENT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="48" name="s_STUDENT_ID" sourceType="URL" sourceName="p_STUDENTID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="20" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STUDENT_SUBJECT_SUBJECTButton_DoSearch">
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
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="STUDENT_SUBJECT, SUBJECT" activeCollection="TableParameters" name="STUDENT_SUBJECT_SUBJECT1" orderBy="STUDENT_SUBJECT.SUBJECT_ID" pageSizeLimit="100" wizardCaption="List of STUDENT SUBJECT, SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Subjects found" PathID="STUDENT_SUBJECT_SUBJECT1">
			<Components>
				<Sorter id="23" visible="True" name="Sorter_STUDENT_SUBJECT_SUBJECT_ID" column="STUDENT_SUBJECT.SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_SUBJECT_SUBJECT_ID" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_STUDENT_SUBJECT_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="24" visible="True" name="Sorter_SUBJECT_ABBREV" column="SUBJECT_ABBREV" wizardCaption="ABBREV" wizardSortingType="SimpleDir" wizardControl="SUBJECT_ABBREV" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_SUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="25" visible="True" name="Sorter_SUBJECT_TITLE" column="SUBJECT_TITLE" wizardCaption="TITLE" wizardSortingType="SimpleDir" wizardControl="SUBJECT_TITLE" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_SUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_SEMESTER" column="SEMESTER" wizardCaption="SEMESTER" wizardSortingType="SimpleDir" wizardControl="SEMESTER" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_SEMESTER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSortingType="SimpleDir" wizardControl="SUBJ_ENROL_STATUS" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="29" visible="True" name="Sorter_STAFF_ID" column="STAFF_ID" wizardCaption="STAFF ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="30" visible="True" name="Sorter_ENROLMENT_DATE" column="ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_DATE" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="31" visible="True" name="Sorter_WITHDRAWAL_DATE" column="WITHDRAWAL_DATE" wizardCaption="WITHDRAWAL DATE" wizardSortingType="SimpleDir" wizardControl="WITHDRAWAL_DATE" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_WITHDRAWAL_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="32" visible="True" name="Sorter_ENROLMENT_YEAR" column="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="STUDENT_SUBJECT_SUBJECT1Sorter_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" name="STUDENT_SUBJECT_SUBJECT_ID" fieldSource="STUDENT_SUBJECT_SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" PathID="STUDENT_SUBJECT_SUBJECT1STUDENT_SUBJECT_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="35" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardCaption="ABBREV" wizardSize="6" wizardMaxLength="6" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="37" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="38" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="41" fieldSourceType="DBColumn" dataType="Date" html="False" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="42" fieldSourceType="DBColumn" dataType="Date" html="False" name="WITHDRAWAL_DATE" fieldSource="WITHDRAWAL_DATE" wizardCaption="WITHDRAWAL DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Float" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="44" size="10" name="Navigator" wizardPagingType="ImageButtons" wizardFirst="False" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="False" wizardLastText="Last" wizardImages="ImagesWithText" wizardSize="10" wizardTotalPages="False" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" type="Simple" pageSizes="1;5;10;25;50" PathID="STUDENT_SUBJECT_SUBJECT1Navigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="33" styles="Row;AltRow" name="rowStyle"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="ENROLMENT_YEAR = year(getdate())"/>
				<TableParameter id="22" conditionType="Parameter" useIsNull="False" field="STUDENT_SUBJECT.STUDENT_ID" parameterSource="s_STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="STUDENT_SUBJECT" schemaName="dbo" posLeft="10" posTop="10" posWidth="201" posHeight="222"/>
				<JoinTable id="4" tableName="SUBJECT" schemaName="dbo" posLeft="260" posTop="10" posWidth="220" posHeight="225"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="5" tableLeft="STUDENT_SUBJECT" tableRight="SUBJECT" fieldLeft="STUDENT_SUBJECT.SUBJECT_ID" fieldRight="SUBJECT.SUBJECT_ID" joinType="inner" conditionType="Equal"/>
			</JoinLinks>
			<Fields>
				<Field id="7" tableName="STUDENT_SUBJECT" fieldName="STUDENT_ID"/>
				<Field id="9" tableName="STUDENT_SUBJECT" fieldName="ENROLMENT_YEAR"/>
				<Field id="10" tableName="STUDENT_SUBJECT" fieldName="STUDENT_SUBJECT.SUBJECT_ID" alias="STUDENT_SUBJECT_SUBJECT_ID"/>
				<Field id="11" tableName="STUDENT_SUBJECT" fieldName="STAFF_ID"/>
				<Field id="12" tableName="STUDENT_SUBJECT" fieldName="SEMESTER"/>
				<Field id="13" tableName="STUDENT_SUBJECT" fieldName="ENROLMENT_DATE"/>
				<Field id="14" tableName="STUDENT_SUBJECT" fieldName="WITHDRAWAL_DATE"/>
				<Field id="15" tableName="STUDENT_SUBJECT" fieldName="SUBJ_ENROL_STATUS"/>
				<Field id="16" tableName="SUBJECT" fieldName="SUBJECT_ABBREV"/>
				<Field id="17" tableName="SUBJECT" fieldName="SUBJECT_TITLE"/>
				<Field id="18" tableName="SUBJECT" fieldName="YEAR_LEVEL"/>
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
		<CodeFile id="3" language="VB" name="popup_StudentSubjectSearch.aspx" forShow="True" url="popup_StudentSubjectSearch.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="popup_StudentSubjectSearch.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="popup_StudentSubjectSearchDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="46" form="STUDENT_SUBJECT_SUBJECT" name="s_STUDENT_ID"/>
			</Actions>
		</Event>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Hide-Show Component" actionCategory="General" id="47" action="Hide" conditionType="Parameter" dataType="Text" componentName="STUDENT_SUBJECT_SUBJECT1" condition="Equal" name1="s_STUDENT_ID" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
			</Actions>
		</Event>
	</Events>
</Page>
