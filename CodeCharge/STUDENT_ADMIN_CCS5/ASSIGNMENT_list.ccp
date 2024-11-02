<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ASSIGNMENTSearch" wizardCaption="Search ASSIGNMENT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="ASSIGNMENT_list.ccp" PathID="ASSIGNMENTSearch">
			<Components>
				<TextBox id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" PathID="ASSIGNMENTSearchs_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="ASSIGNMENTSearchButton_DoSearch">
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
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="ASSIGNMENT" name="ASSIGNMENT" orderBy="ASSIGNMENT_ID" pageSizeLimit="100" wizardCaption="List of ASSIGNMENT " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Assignments found for this Subject" pasteAsReplace="pasteAsReplace" PathID="ASSIGNMENT">
			<Components>
				<Label id="7" fieldSourceType="DBColumn" dataType="Text" html="False" name="ASSIGNMENT_TotalRecords" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="8"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubjectID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSubjectName">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="22" name="tmpSubjectID" type="Float" initialValue="0"/>
								<Action actionName="Retrieve Value for Variable" actionCategory="General" id="21" name="tmpSubjectID" sourceType="URL" sourceName="s_SUBJECT_ID"/>
								<Action actionName="DLookup" actionCategory="Database" id="20" typeOfTarget="Control" expression="&quot;SUBJECT_TITLE&quot;" domain="&quot;SUBJECT&quot;" criteria="&quot;SUBJECT_ID = &quot; &amp; tmpSubjectID.ToString" connection="connDECVPRODSQL2005" dataType="Text" target="lblSubjectName"/>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="24" name="lblSubjectID" sourceType="Variable" sourceName="tmpSubjectID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="11" fieldSourceType="DBColumn" dataType="Integer" html="False" name="ASSIGNMENT_ID" fieldSource="ASSIGNMENT_ID" wizardCaption="ID" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="ASSIGNMENT_maint.ccp" PathID="ASSIGNMENTASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="25" sourceType="DataField" name="SUBJECT_ID" source="SUBJECT_ID"/>
						<LinkParameter id="26" sourceType="DataField" name="ASSIGNMENT_ID" source="ASSIGNMENT_ID"/>
					</LinkParameters>
				</Link>
				<Label id="12" fieldSourceType="DBColumn" dataType="Text" html="False" name="DESCRIPTION" fieldSource="DESCRIPTION" wizardCaption="DESCRIPTION" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="13" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Integer" html="False" name="ARCHIVE" fieldSource="ARCHIVE" wizardCaption="ARCHIVE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="17" size="10" name="Navigator" wizardPagingType="ImageButtons" wizardFirst="False" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="False" wizardLastText="Last" wizardImages="ImagesWithText" wizardSize="10" wizardTotalPages="False" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" type="Simple" pageSizes="1;5;10;25;50" PathID="ASSIGNMENTNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="10" styles="Row;AltRow" name="rowStyle"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="9" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" parameterSource="s_SUBJECT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Link id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="ASSIGNMENT_maint.ccp" wizardUseTemplateBlock="False" removeParameters="ASSIGNMENT_ID" PathID="Link1">
			<Components/>
			<Events/>
			<LinkParameters>
				<LinkParameter id="32" sourceType="URL" format="yyyy-mm-dd" name="SUBJECT_ID" source="s_SUBJECT_ID"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="ASSIGNMENT_list.aspx" forShow="True" url="ASSIGNMENT_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="ASSIGNMENT_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="ASSIGNMENT_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="18" form="ASSIGNMENTSearch" name="s_SUBJECT_ID"/>
			</Actions>
		</Event>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Hide-Show Component" actionCategory="General" id="30" action="Hide" conditionType="Parameter" dataType="Text" componentName="Link1" condition="Equal" sourceType1="URL" name1="s_SUBJECT_ID" name2="&quot;&quot;" sourceType2="Expression"/>
				<Action actionName="Hide-Show Component" actionCategory="General" id="33" action="Hide" conditionType="Parameter" dataType="Text" componentName="ASSIGNMENT" condition="Equal" name1="s_SUBJECT_ID" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
			</Actions>
		</Event>
	</Events>
</Page>
