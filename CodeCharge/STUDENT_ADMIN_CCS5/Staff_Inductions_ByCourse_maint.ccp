<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STAFF_INDUCTIONS_COURSES" dataSource="STAFF_INDUCTIONS_COURSES" errorSummator="Error" wizardCaption="Add/Edit STAFF INDUCTIONS COURSES " wizardFormMethod="post" PathID="STAFF_INDUCTIONS_COURSES" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" returnPage="Staff_Inductions_ByCourse_list.ccp" removeParameters="id">
			<Components>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STAFF_INDUCTIONS_COURSESButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STAFF_INDUCTIONS_COURSESButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="6" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="STAFF_INDUCTIONS_COURSESButton_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="7" message="Delete record?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="8" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STAFF_INDUCTIONS_COURSESButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="INDUCTION_TITLE" fieldSource="INDUCTION_TITLE" required="False" caption="INDUCTION TITLE" wizardCaption="INDUCTION TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSESINDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextArea id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="INDUCTION_DESCRIPTION" fieldSource="INDUCTION_DESCRIPTION" required="False" caption="INDUCTION DESCRIPTION" wizardCaption="INDUCTION DESCRIPTION" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="STAFF_INDUCTIONS_COURSESINDUCTION_DESCRIPTION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<RadioButton id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="STATUS" fieldSource="STATUS" required="False" caption="STATUS" wizardCaption="STATUS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSESSTATUS" dataSource="1;Active;0;Inactive">
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
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="False" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSESLAST_ALTERED_BY" defaultValue="&quot;unknown&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="14" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="False" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_COURSESLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="15" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" PathID="STAFF_INDUCTIONS_COURSEShidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="16" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" PathID="STAFF_INDUCTIONS_COURSEShidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="17" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="20" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="19" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="9" conditionType="Parameter" useIsNull="False" field="id" parameterSource="id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
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
		<Grid id="21" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive, STAFF_INDUCTIONS_COURSES, STAFF_INDUCTIONS_PROGRESS" orderBy="DATE_COMPLETED desc" name="STAFF_INDUCTIONS_COURSES1" pageSizeLimit="100" wizardCaption="List of STAFF INDUCTIONS COURSES, STAFF INDUCTIONS PROGRESS, View Staff List Active Inactive " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Staff Inductions found" pasteActions="pasteActions" activeCollection="TableParameters" PathID="STAFF_INDUCTIONS_COURSES1">
			<Components>
				<Sorter id="22" visible="True" name="Sorter_STAFF_INDUCTIONS_PROGRESS_STATUS" column="STAFF_INDUCTIONS_PROGRESS.STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STAFF_INDUCTIONS_PROGRESS_STATUS" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_STAFF_INDUCTIONS_PROGRESS_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="23" visible="True" name="Sorter_DATE_COMPLETED" column="DATE_COMPLETED" wizardCaption="DATE COMPLETED" wizardSortingType="SimpleDir" wizardControl="DATE_COMPLETED" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_DATE_COMPLETED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="24" visible="True" name="Sorter_staffname" column="staffname" wizardCaption="Staffname" wizardSortingType="SimpleDir" wizardControl="staffname" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_staffname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="25" visible="True" name="Sorter_INDUCTION_TITLE" column="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSortingType="SimpleDir" wizardControl="INDUCTION_TITLE" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_INDUCTIONS_PROGRESS_STATUS" fieldSource="STAFF_INDUCTIONS_PROGRESS_STATUS" wizardCaption="STATUS" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1STAFF_INDUCTIONS_PROGRESS_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Date" html="False" name="DATE_COMPLETED" fieldSource="DATE_COMPLETED" wizardCaption="DATE COMPLETED" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1DATE_COMPLETED" format="dd mmm yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="staffname" fieldSource="staffname" wizardCaption="Staffname" wizardSize="50" wizardMaxLength="72" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1staffname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="INDUCTION_TITLE" fieldSource="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="30" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint" PathID="STAFF_INDUCTIONS_COURSES1Navigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Panel id="33" visible="False" name="Panel_data_editbutton" wizardInnerHTML="          &lt;td&gt;&lt;a href=&quot;{Link1_Src}&quot; id=&quot;STAFF_INDUCTIONS_COURSES1Link1_{STAFF_INDUCTIONS_COURSES1:rowNumber}&quot;&gt;edit&lt;/a&gt;&amp;nbsp;&lt;/td&gt; " PathID="STAFF_INDUCTIONS_COURSES1Panel_data_editbutton">
					<Components>
						<Link id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="STAFF_INDUCTIONS_COURSES1Panel_data_editbuttonLink1" hrefSource="Staff_Inductions_ByStaff.ccp" wizardUseTemplateBlock="False" fieldSource="STAFF_INDUCTIONS_PROGRESS_id">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="35" sourceType="DataField" format="yyyy-mm-dd" name="s_View_StaffList_Active_Inactive_staff_ID" old_temp_id="49" source="View_StaffList_Active_Inactive_staff_ID"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="36" visible="True" name="Panel_header_editbutton" wizardInnerHTML="&lt;th&gt;&lt;/th&gt;" PathID="STAFF_INDUCTIONS_COURSES1Panel_header_editbutton">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="37" action="Hide" conditionType="Parameter" dataType="Text" componentName="STAFF_INDUCTIONS_COURSES1" condition="Equal" name1="id" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="38"/>
					</Actions>
				</Event>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="39"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="52" conditionType="Parameter" useIsNull="False" field="STAFF_INDUCTIONS_PROGRESS.induction_id" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="id"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="41" tableName="View_StaffList_Active_Inactive" schemaName="dbo" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
				<JoinTable id="42" tableName="STAFF_INDUCTIONS_COURSES" schemaName="dbo" posLeft="437" posTop="7" posWidth="160" posHeight="152"/>
				<JoinTable id="43" tableName="STAFF_INDUCTIONS_PROGRESS" schemaName="dbo" posLeft="194" posTop="39" posWidth="211" posHeight="168"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="44" tableLeft="STAFF_INDUCTIONS_PROGRESS" tableRight="View_StaffList_Active_Inactive" fieldLeft="STAFF_INDUCTIONS_PROGRESS.STAFF_ID" fieldRight="View_StaffList_Active_Inactive.staff_ID" joinType="inner" conditionType="Equal"/>
				<JoinTable2 id="45" tableLeft="STAFF_INDUCTIONS_PROGRESS" tableRight="STAFF_INDUCTIONS_COURSES" fieldLeft="STAFF_INDUCTIONS_PROGRESS.induction_id" fieldRight="STAFF_INDUCTIONS_COURSES.id" joinType="inner"/>
			</JoinLinks>
			<Fields>
				<Field id="46" tableName="View_StaffList_Active_Inactive" fieldName="staffname"/>
				<Field id="47" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="STAFF_INDUCTIONS_PROGRESS.STATUS" alias="STAFF_INDUCTIONS_PROGRESS_STATUS"/>
				<Field id="48" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="DATE_COMPLETED"/>
				<Field id="49" tableName="STAFF_INDUCTIONS_COURSES" fieldName="INDUCTION_TITLE"/>
				<Field id="50" tableName="View_StaffList_Active_Inactive" fieldName="View_StaffList_Active_Inactive.staff_ID" alias="View_StaffList_Active_Inactive_staff_ID"/>
				<Field id="51" fieldName="STAFF_INDUCTIONS_PROGRESS.id" tableName="STAFF_INDUCTIONS_PROGRESS" isExpression="False" alias="STAFF_INDUCTIONS_PROGRESS_id"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Link id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_backtolist" PathID="link_backtolist" hrefSource="Staff_Inductions_ByCourse_list.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Staff_Inductions_ByCourse_maint.aspx" forShow="True" url="Staff_Inductions_ByCourse_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Staff_Inductions_ByCourse_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Staff_Inductions_ByCourse_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
