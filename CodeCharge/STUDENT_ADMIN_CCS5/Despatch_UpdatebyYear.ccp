<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="8" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECTSearch" wizardCaption="Search SUBJECT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Despatch_UpdatebyYear.ccp" PathID="SUBJECTSearch">
			<Components>
				<ListBox id="10" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Integer" returnValueType="Number" name="s_YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="select distinct YEAR_LEVEL
from SUBJECT
where CAMPUS_CODE = 'D' and STATUS = 1" boundColumn="YEAR_LEVEL" textColumn="YEAR_LEVEL" PathID="SUBJECTSearchs_YEAR_LEVEL">
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
				<Button id="9" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SUBJECTSearchButton_DoSearch">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="30"/>
							</Actions>
						</Event>
					</Events>
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
		<Record id="53" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="UpdateForm" actionPage="Despatch_UpdatebyYear" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" PathID="UpdateForm">
			<Components>
				<Label id="56" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblYearLevel2">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="57" name="lblYearLevel2" sourceType="URL" sourceName="s_YEAR_LEVEL"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="46" visible="Yes" fieldSourceType="CodeExpression" dataType="Date" name="despatchdate" required="True" defaultValue="now()" format="dd/mm/yyyy" caption="Despatch Date" DBFormat="yyyy-mm-dd HH:nn:ss" PathID="UpdateFormdespatchdate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="47" visible="Yes" fieldSourceType="CodeExpression" dataType="Integer" name="book_range_from" caption="Book Range From" required="True" validationRule="book_range_from.value &lt;= book_range_to.value" validationText="[To Book Range] must not be less than [From Book] Range" PathID="UpdateFormbook_range_from">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="48" visible="Yes" fieldSourceType="CodeExpression" dataType="Integer" name="book_range_to" caption="Book Range To" required="True" PathID="UpdateFormbook_range_to">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="49" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_1" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormsemester_1">
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
				</CheckBox>
				<CheckBox id="50" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_2" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormsemester_2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="51" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_both" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormsemester_both">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Button id="45" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoUpdate" PathID="UpdateFormButton_DoUpdate">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="52"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSelections">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="54" action="Hide" conditionType="Parameter" dataType="Text" componentName="UpdateForm" condition="Equal" name1="s_YEAR_LEVEL" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="55"/>
					</Actions>
				</Event>
			</Events>
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
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="SUBJECT" activeCollection="TableParameters" name="SUBJECT" orderBy="SUBJECT_ID" pageSizeLimit="100" wizardCaption="List of SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Subjects found" PathID="SUBJECT">
			<Components>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblYearLevel">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="43" name="lblYearLevel" sourceType="URL" sourceName="s_YEAR_LEVEL"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TotalRecords" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="12"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="cbox" html="True" checkedValue="&quot;ON&quot;" uncheckedValue="&quot;OFF&quot;" defaultValue="&quot;ON&quot;" PathID="SUBJECTcbox">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="18" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="DEFAULT_SEMESTER" fieldSource="DEFAULT_SEMESTER" wizardCaption="DEFAULT SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="17" styles="Row;AltRow" name="rowStyle"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="32" action="Hide" conditionType="Parameter" dataType="Text" componentName="SUBJECT" sourceType1="URL" condition="Equal" name1="s_YEAR_LEVEL" sourceType2="Expression" name2="&quot;&quot;"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="5" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
				<TableParameter id="6" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CAMPUS_CODE='D'"/><TableParameter id="13" conditionType="Parameter" useIsNull="False" field="YEAR_LEVEL" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" defaultValue="-1" parameterSource="s_YEAR_LEVEL"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="4" tableName="SUBJECT" posLeft="10" posTop="10" posWidth="160" posHeight="292"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Despatch_UpdatebyYear.aspx" forShow="True" url="Despatch_UpdatebyYear.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Despatch_UpdatebyYear.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Despatch_UpdatebyYearDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
