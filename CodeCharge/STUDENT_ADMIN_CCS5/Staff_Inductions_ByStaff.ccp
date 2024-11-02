<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive, STAFF_INDUCTIONS_COURSES, STAFF_INDUCTIONS_PROGRESS" orderBy="DATE_COMPLETED desc" name="STAFF_INDUCTIONS_COURSES1" pageSizeLimit="100" wizardCaption="List of STAFF INDUCTIONS COURSES, STAFF INDUCTIONS PROGRESS, View Staff List Active Inactive " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Staff Inductions found" pasteActions="pasteActions" activeCollection="TableParameters" PathID="STAFF_INDUCTIONS_COURSES1">
			<Components>
				<Sorter id="24" visible="True" name="Sorter_STAFF_INDUCTIONS_PROGRESS_STATUS" column="STAFF_INDUCTIONS_PROGRESS.STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STAFF_INDUCTIONS_PROGRESS_STATUS" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_STAFF_INDUCTIONS_PROGRESS_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="25" visible="True" name="Sorter_DATE_COMPLETED" column="DATE_COMPLETED" wizardCaption="DATE COMPLETED" wizardSortingType="SimpleDir" wizardControl="DATE_COMPLETED" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_DATE_COMPLETED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_staffname" column="staffname" wizardCaption="Staffname" wizardSortingType="SimpleDir" wizardControl="staffname" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_staffname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_INDUCTION_TITLE" column="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSortingType="SimpleDir" wizardControl="INDUCTION_TITLE" wizardAddNbsp="False" PathID="STAFF_INDUCTIONS_COURSES1Sorter_INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_INDUCTIONS_PROGRESS_STATUS" fieldSource="STAFF_INDUCTIONS_PROGRESS_STATUS" wizardCaption="STATUS" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1STAFF_INDUCTIONS_PROGRESS_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="31" fieldSourceType="DBColumn" dataType="Date" html="False" name="DATE_COMPLETED" fieldSource="DATE_COMPLETED" wizardCaption="DATE COMPLETED" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1DATE_COMPLETED" format="dd mmm yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" name="staffname" fieldSource="staffname" wizardCaption="Staffname" wizardSize="50" wizardMaxLength="72" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1staffname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" name="INDUCTION_TITLE" fieldSource="INDUCTION_TITLE" wizardCaption="INDUCTION TITLE" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_INDUCTIONS_COURSES1INDUCTION_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="34" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint" PathID="STAFF_INDUCTIONS_COURSES1Navigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Link id="115" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkNewInduction" PathID="STAFF_INDUCTIONS_COURSES1linkNewInduction" wizardUseTemplateBlock="False" hrefSource="Staff_Inductions_ByStaff_maint.ccp" removeParameters="STAFF_INDUCTIONS_PROGRESS_id">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="116" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkNewInduction1" PathID="STAFF_INDUCTIONS_COURSES1linkNewInduction1" wizardUseTemplateBlock="False" hrefSource="Staff_Inductions_ByStaff_maint.ccp" removeParameters="STAFF_INDUCTIONS_PROGRESS_id">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Panel id="117" visible="False" name="Panel_data_editbutton" wizardInnerHTML="          &lt;td&gt;&lt;a href=&quot;{Link1_Src}&quot; id=&quot;STAFF_INDUCTIONS_COURSES1Link1_{STAFF_INDUCTIONS_COURSES1:rowNumber}&quot;&gt;edit&lt;/a&gt;&amp;nbsp;&lt;/td&gt; " PathID="STAFF_INDUCTIONS_COURSES1Panel_data_editbutton">
					<Components>
						<Link id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="STAFF_INDUCTIONS_COURSES1Panel_data_editbuttonLink1" hrefSource="Staff_Inductions_ByStaff_maint.ccp" wizardUseTemplateBlock="False" fieldSource="STAFF_INDUCTIONS_PROGRESS_id">
							<Components/>
							<Events/>
							<LinkParameters>
								<LinkParameter id="119" sourceType="DataField" format="yyyy-mm-dd" name="STAFF_INDUCTIONS_PROGRESS_id" source="STAFF_INDUCTIONS_PROGRESS_id" old_temp_id="49"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="120" visible="True" name="Panel_header_editbutton" wizardInnerHTML="&lt;th&gt;&lt;/th&gt;" PathID="STAFF_INDUCTIONS_COURSES1Panel_header_editbutton">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="110" action="Hide" conditionType="Parameter" dataType="Text" componentName="STAFF_INDUCTIONS_COURSES1" condition="Equal" name1="s_View_StaffList_Active_Inactive_staff_ID" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="111" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="121" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="22" conditionType="Parameter" useIsNull="False" field="View_StaffList_Active_Inactive.staff_ID" dataType="Text" logicOperator="Or" searchConditionType="Equal" parameterType="URL" orderNumber="1" parameterSource="s_View_StaffList_Active_Inactive_staff_ID"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="4" tableName="View_StaffList_Active_Inactive" schemaName="dbo" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
				<JoinTable id="5" tableName="STAFF_INDUCTIONS_COURSES" schemaName="dbo" posLeft="437" posTop="7" posWidth="160" posHeight="152"/>
				<JoinTable id="6" tableName="STAFF_INDUCTIONS_PROGRESS" schemaName="dbo" posLeft="194" posTop="39" posWidth="211" posHeight="168"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="7" tableLeft="STAFF_INDUCTIONS_PROGRESS" tableRight="View_StaffList_Active_Inactive" fieldLeft="STAFF_INDUCTIONS_PROGRESS.STAFF_ID" fieldRight="View_StaffList_Active_Inactive.staff_ID" joinType="inner" conditionType="Equal"/>
				<JoinTable2 id="8" tableLeft="STAFF_INDUCTIONS_PROGRESS" tableRight="STAFF_INDUCTIONS_COURSES" fieldLeft="STAFF_INDUCTIONS_PROGRESS.induction_id" fieldRight="STAFF_INDUCTIONS_COURSES.id" joinType="inner"/>
			</JoinLinks>
			<Fields>
				<Field id="9" tableName="View_StaffList_Active_Inactive" fieldName="staffname"/>
				<Field id="12" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="STAFF_INDUCTIONS_PROGRESS.STATUS" alias="STAFF_INDUCTIONS_PROGRESS_STATUS"/>
				<Field id="13" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="DATE_COMPLETED"/>
				<Field id="14" tableName="STAFF_INDUCTIONS_COURSES" fieldName="INDUCTION_TITLE"/>
				<Field id="15" tableName="View_StaffList_Active_Inactive" fieldName="View_StaffList_Active_Inactive.staff_ID" alias="View_StaffList_Active_Inactive_staff_ID"/>
				<Field id="20" fieldName="STAFF_INDUCTIONS_PROGRESS.id" tableName="STAFF_INDUCTIONS_PROGRESS" isExpression="False" alias="STAFF_INDUCTIONS_PROGRESS_id"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="16" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STAFF_INDUCTIONS_COURSES" wizardCaption="Search STAFF INDUCTIONS COURSES " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Staff_Inductions_ByStaff.ccp" PathID="STAFF_INDUCTIONS_COURSES">
			<Components>
				<Link id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Staff_Inductions_ByStaff.ccp" removeParameters="s_View_StaffList_Active_Inactive_staff_ID" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="STAFF_INDUCTIONS_COURSESClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="18" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STAFF_INDUCTIONS_COURSESButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="19" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="s_View_StaffList_Active_Inactive_staff_ID" wizardCaption="Staff ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardEmptyCaption="Select Value" PathID="STAFF_INDUCTIONS_COURSESs_View_StaffList_Active_Inactive_staff_ID" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" activeCollection="TableParameters" boundColumn="staff_ID" textColumn="staffname" defaultValue="DBUtility.UserLogin.ToUpper()" orderBy="status desc, staffname">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="45" tableName="View_StaffList_Active_Inactive" schemaName="dbo" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="46" fieldName="rtrim(staff_ID)" isExpression="True" alias="staff_ID"/>
						<Field id="47" tableName="View_StaffList_Active_Inactive" fieldName="staffname"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<Label id="107" fieldSourceType="DBColumn" dataType="Text" html="False" name="label_TeacherID" PathID="STAFF_INDUCTIONS_COURSESlabel_TeacherID" defaultValue="DBUtility.UserLogin.ToUpper()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="109"/>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Staff_Inductions_ByStaff.aspx" forShow="True" url="Staff_Inductions_ByStaff.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Staff_Inductions_ByStaff.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Staff_Inductions_ByStaffDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
