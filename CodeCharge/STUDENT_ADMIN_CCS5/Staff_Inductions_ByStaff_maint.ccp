<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="35" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STAFF_INDUCTIONS_PROGRESS" dataSource="STAFF_INDUCTIONS_PROGRESS" errorSummator="Error" wizardCaption="Add/Edit STAFF INDUCTIONS PROGRESS " wizardFormMethod="post" PathID="STAFF_INDUCTIONS_PROGRESS" activeCollection="TableParameters" returnPage="Staff_Inductions_ByStaff.ccp" removeParameters="STAFF_INDUCTIONS_PROGRESS_id" pasteActions="pasteActions">
			<Components>
				<Button id="36" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STAFF_INDUCTIONS_PROGRESSButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="37" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STAFF_INDUCTIONS_PROGRESSButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="38" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="STAFF_INDUCTIONS_PROGRESSButton_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="39" message="Delete record?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="40" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STAFF_INDUCTIONS_PROGRESSButton_Cancel" returnPage="Staff_Inductions_ByStaff.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="42" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="STAFF_INDUCTIONS_PROGRESS_STATUS" fieldSource="STAFF_INDUCTIONS_PROGRESS_STATUS" required="True" caption="STATUS" wizardCaption="STATUS" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STAFF_INDUCTIONS_PROGRESSSTAFF_INDUCTIONS_PROGRESS_STATUS" dataSource="COMPLETED;Completed;NA;Not Required">
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
				<TextBox id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DATE_COMPLETED" fieldSource="DATE_COMPLETED" required="True" caption="DATE COMPLETED" wizardCaption="DATE COMPLETED" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_PROGRESSDATE_COMPLETED" defaultValue="CurrentDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="44" name="DatePicker_DATE_COMPLETED" control="DATE_COMPLETED" wizardSatellite="True" wizardControl="DATE_COMPLETED" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STAFF_INDUCTIONS_PROGRESSDatePicker_DATE_COMPLETED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<Hidden id="56" fieldSourceType="DBColumn" dataType="Text" name="Hidden_last_altered_by" PathID="STAFF_INDUCTIONS_PROGRESSHidden_last_altered_by" fieldSource="STAFF_INDUCTIONS_PROGRESS_LAST_ALTERED_BY">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="57" name="Hidden_last_altered_by" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="58" fieldSourceType="DBColumn" dataType="Text" name="Hidden_last_altered_date" PathID="STAFF_INDUCTIONS_PROGRESSHidden_last_altered_date" fieldSource="STAFF_INDUCTIONS_PROGRESS_LAST_ALTERED_DATE">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="59" name="Hidden_last_altered_date" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="70" fieldSourceType="DBColumn" dataType="Text" name="Hidden_STAFF_ID" PathID="STAFF_INDUCTIONS_PROGRESSHidden_STAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="71" name="Hidden_STAFF_ID" sourceType="URL" sourceName="s_View_StaffList_Active_Inactive_staff_ID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="107" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbl_STAFF_ID" PathID="STAFF_INDUCTIONS_PROGRESSlbl_STAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="108" name="lbl_STAFF_ID" sourceType="URL" sourceName="s_View_StaffList_Active_Inactive_staff_ID" id_oncopy="113"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="109" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="listbox_InductionCourses" wizardEmptyCaption="Select Value" PathID="STAFF_INDUCTIONS_PROGRESSlistbox_InductionCourses" caption="INDUCTION" fieldSource="induction_id" connection="connDECVPRODSQL2005" dataSource="select id
, case when STATUS=1 then INDUCTION_TITLE
	else  INDUCTION_TITLE + ' (inactive)'
	end as [TITLE]
from STAFF_INDUCTIONS_COURSES
order by status desc, induction_title asc" boundColumn="id" textColumn="TITLE" required="True">
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
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="STAFF_INDUCTIONS_PROGRESS_LAST_ALTERED_BY" required="False" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_PROGRESSLAST_ALTERED_BY" defaultValue="&quot;unknown&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="14" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="STAFF_INDUCTIONS_PROGRESS_LAST_ALTERED_DATE" required="False" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STAFF_INDUCTIONS_PROGRESSLAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="115" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link1_David" PathID="STAFF_INDUCTIONS_PROGRESSLink1_David" wizardUseTemplateBlock="False" hrefSource="#">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="114" action="Show" conditionType="Expression" dataType="Text" componentName="Link1_David" condition="DBUtility.UserLogin.ToUpper() = &quot;DRICHARD&quot;"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="41" conditionType="Parameter" useIsNull="False" field="id" dataType="Text" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1" parameterSource="STAFF_INDUCTIONS_PROGRESS_id" leftBrackets="0" rightBrackets="0"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="50" tableName="STAFF_INDUCTIONS_PROGRESS" posLeft="10" posTop="10" posWidth="258" posHeight="213"/>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
				<Field id="52" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="STAFF_INDUCTIONS_PROGRESS.LAST_ALTERED_BY" alias="STAFF_INDUCTIONS_PROGRESS_LAST_ALTERED_BY"/>
				<Field id="53" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="STAFF_INDUCTIONS_PROGRESS.LAST_ALTERED_DATE" alias="STAFF_INDUCTIONS_PROGRESS_LAST_ALTERED_DATE"/>
				<Field id="54" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="DATE_COMPLETED"/>
				<Field id="55" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="STAFF_INDUCTIONS_PROGRESS.STATUS" alias="STAFF_INDUCTIONS_PROGRESS_STATUS"/>
				<Field id="102" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="STAFF_ID"/>
				<Field id="110" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="induction_id"/>
				<Field id="112" tableName="STAFF_INDUCTIONS_PROGRESS" fieldName="STAFF_INDUCTIONS_PROGRESS.id" alias="STAFF_INDUCTIONS_PROGRESS_id"/>
			</Fields>
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
		<Link id="111" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_backtolist" PathID="link_backtolist" hrefSource="Staff_Inductions_ByStaff.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Staff_Inductions_ByStaff_maint.aspx" forShow="True" url="Staff_Inductions_ByStaff_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Staff_Inductions_ByStaff_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Staff_Inductions_ByStaff_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
