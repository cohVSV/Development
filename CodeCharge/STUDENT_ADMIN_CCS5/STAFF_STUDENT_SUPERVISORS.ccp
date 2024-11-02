<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="3" name="Footer" PathID="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="4" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" connection="connDECVPRODSQL2005" dataSource="STAFF_STUDENT_SUPERVISORS" name="STAFF_STUDENT_SUPERVISORS" orderBy="YEAR_LEVEL" pageSizeLimit="100" wizardCaption="List of STAFF STUDENT SUPERVISORS " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Staff Supervisors found - click 'Add'" PathID="STAFF_STUDENT_SUPERVISORS">
			<Components>
				<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="STAFF_STUDENT_SUPERVISORS_Insert" hrefSource="STAFF_STUDENT_SUPERVISORS.ccp" removeParameters="id" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORSSTAFF_STUDENT_SUPERVISORS_Insert">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="62" sourceType="Expression" name="showEdit" source="1"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_STUDENT_SUPERVISORS_TotalRecords" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORSSTAFF_STUDENT_SUPERVISORS_TotalRecords">
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
				<Sorter id="16" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="STAFF_STUDENT_SUPERVISORSSorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="17" visible="True" name="Sorter_SUPERVISOR_NAME" column="SUPERVISOR_NAME" wizardCaption="SUPERVISOR NAME" wizardSortingType="SimpleDir" wizardControl="SUPERVISOR_NAME" wizardAddNbsp="False" PathID="STAFF_STUDENT_SUPERVISORSSorter_SUPERVISOR_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="18" visible="True" name="Sorter_SUPERVISOR_EMAIL" column="SUPERVISOR_EMAIL" wizardCaption="SUPERVISOR EMAIL" wizardSortingType="SimpleDir" wizardControl="SUPERVISOR_EMAIL" wizardAddNbsp="False" PathID="STAFF_STUDENT_SUPERVISORSSorter_SUPERVISOR_EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="19" visible="True" name="Sorter_SUPERVISOR_PHONE" column="SUPERVISOR_PHONE" wizardCaption="SUPERVISOR PHONE" wizardSortingType="SimpleDir" wizardControl="SUPERVISOR_PHONE" wizardAddNbsp="False" PathID="STAFF_STUDENT_SUPERVISORSSorter_SUPERVISOR_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="STAFF_STUDENT_SUPERVISORSSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="21" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="STAFF_STUDENT_SUPERVISORSSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="22" visible="True" name="Sorter_LAST_ALTERED_DATE" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="STAFF_STUDENT_SUPERVISORSSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="23" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Detail" wizardCaption="Detail" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" dataType="Text" wizardDefaultValue="edit" hrefSource="STAFF_STUDENT_SUPERVISORS.ccp" wizardThemeItem="GridA" PathID="STAFF_STUDENT_SUPERVISORSDetail">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="24" sourceType="DataField" format="yyyy-mm-dd" name="id" source="id"/>
						<LinkParameter id="64" sourceType="Expression" name="showEdit" source="1"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="STAFF_STUDENT_SUPERVISORSYEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUPERVISOR_NAME" fieldSource="SUPERVISOR_NAME" wizardCaption="SUPERVISOR NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_STUDENT_SUPERVISORSSUPERVISOR_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUPERVISOR_EMAIL" fieldSource="SUPERVISOR_EMAIL" wizardCaption="SUPERVISOR EMAIL" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_STUDENT_SUPERVISORSSUPERVISOR_EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUPERVISOR_PHONE" fieldSource="SUPERVISOR_PHONE" wizardCaption="SUPERVISOR PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_STUDENT_SUPERVISORSSUPERVISOR_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Integer" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="STAFF_STUDENT_SUPERVISORSSTATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_STUDENT_SUPERVISORSLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="38" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STAFF_STUDENT_SUPERVISORSLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="39" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint" PathID="STAFF_STUDENT_SUPERVISORSNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="65"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="13" conditionType="Parameter" useIsNull="False" field="SUPERVISOR_NAME" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="1" leftBrackets="1"/>
				<TableParameter id="14" conditionType="Parameter" useIsNull="False" field="SUPERVISOR_EMAIL" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="2"/>
				<TableParameter id="15" conditionType="Parameter" useIsNull="False" field="SUPERVISOR_PHONE" parameterSource="s_keyword" dataType="Text" logicOperator="Or" searchConditionType="Contains" parameterType="URL" orderNumber="3" rightBrackets="1"/>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields>
				<Field id="9" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="id"/>
				<Field id="25" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="YEAR_LEVEL"/>
				<Field id="27" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="SUPERVISOR_NAME"/>
				<Field id="29" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="SUPERVISOR_EMAIL"/>
				<Field id="31" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="SUPERVISOR_PHONE"/>
				<Field id="33" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="STATUS"/>
				<Field id="35" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="LAST_ALTERED_BY"/>
				<Field id="37" tableName="STAFF_STUDENT_SUPERVISORS" fieldName="LAST_ALTERED_DATE"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="5" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STAFF_STUDENT_SUPERVISORSSearch" wizardCaption="Search STAFF STUDENT SUPERVISORS " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="STAFF_STUDENT_SUPERVISORS.ccp" PathID="STAFF_STUDENT_SUPERVISORSSearch">
			<Components>
				<Link id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="STAFF_STUDENT_SUPERVISORS.ccp" removeParameters="s_keyword" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="STAFF_STUDENT_SUPERVISORSSearchClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="7" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STAFF_STUDENT_SUPERVISORSSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardCaption="Keyword" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" PathID="STAFF_STUDENT_SUPERVISORSSearchs_keyword">
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
		<Record id="40" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STAFF_STUDENT_SUPERVISORS1" dataSource="STAFF_STUDENT_SUPERVISORS" errorSummator="Error" wizardCaption="Add/Edit STAFF STUDENT SUPERVISORS " wizardFormMethod="post" PathID="STAFF_STUDENT_SUPERVISORS1" pasteActions="pasteActions" removeParameters="showEdit">
			<Components>
				<Button id="41" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STAFF_STUDENT_SUPERVISORS1Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="42" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STAFF_STUDENT_SUPERVISORS1Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="43" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="STAFF_STUDENT_SUPERVISORS1Button_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="44" message="Delete record?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="45" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STAFF_STUDENT_SUPERVISORS1Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="47" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" required="True" caption="YEAR LEVEL" wizardCaption="YEAR LEVEL" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STAFF_STUDENT_SUPERVISORS1YEAR_LEVEL" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12">
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
				<TextBox id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPERVISOR_NAME" fieldSource="SUPERVISOR_NAME" caption="SUPERVISOR NAME" wizardCaption="SUPERVISOR NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORS1SUPERVISOR_NAME" required="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPERVISOR_EMAIL" fieldSource="SUPERVISOR_EMAIL" required="True" caption="SUPERVISOR EMAIL" wizardCaption="SUPERVISOR EMAIL" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORS1SUPERVISOR_EMAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPERVISOR_PHONE" fieldSource="SUPERVISOR_PHONE" required="True" caption="SUPERVISOR PHONE" wizardCaption="SUPERVISOR PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORS1SUPERVISOR_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="51" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" html="True" returnValueType="Number" name="STATUS" fieldSource="STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORS1STATUS" dataSource="1;Active;0;Inactive" defaultValue="1">
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
				<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="False" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORS1LAST_ALTERED_BY" defaultValue="&quot;unknown&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="53" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="False" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORS1LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="55" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_BY" PathID="STAFF_STUDENT_SUPERVISORS1Hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="57" name="Hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="56" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_DATE" PathID="STAFF_STUDENT_SUPERVISORS1Hidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" DBFormat="yyyy-mm-dd HH:nn:ss">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="58" name="Hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Validate Email" actionCategory="Validation" id="59" name="SUPERVISOR_EMAIL" errorMessage="Check that the Email address is valid - eg: 'bob@example.net.au'"/><Action actionName="Regular Expression Validation" actionCategory="Validation" id="60" name="SUPERVISOR_PHONE" errorMessage="Phone Number must be an Australian number, including Area Code, with numbers, spaces, or hyphens only. eg: 03 8480 5123 or 03-8480-5123" regExp="(^0[2|3|7|8]{1}[\s\-]{0,1}[0-9]{4}[\s\-]{0,1}[0-9]{4}$)|(^04\d{2,3}[\s\-]{0,1}\d{3}[\s\-]{0,1}\d{3}$)"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="61" action="Hide" conditionType="Parameter" dataType="Integer" componentName="STAFF_STUDENT_SUPERVISORS1" condition="NotEqual" name1="showEdit" sourceType1="URL" sourceType2="Expression" name2="1"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="46" conditionType="Parameter" useIsNull="False" field="id" parameterSource="id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
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
		<Link id="54" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="STAFF_STUDENT_SUPERVISORS_Insert" hrefSource="STAFF_STUDENT_SUPERVISORS.ccp" removeParameters="id" wizardThemeItem="FooterA" wizardDefaultValue="Add New" wizardUseTemplateBlock="False" PathID="STAFF_STUDENT_SUPERVISORS_Insert">
			<Components/>
			<Events/>
			<LinkParameters>
				<LinkParameter id="63" sourceType="Expression" name="showEdit" source="1"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="STAFF_STUDENT_SUPERVISORS.aspx" forShow="True" url="STAFF_STUDENT_SUPERVISORS.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="STAFF_STUDENT_SUPERVISORS.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="STAFF_STUDENT_SUPERVISORSDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
