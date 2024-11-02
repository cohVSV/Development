<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="TeacherAllocations_Search" wizardCaption="Search STUD SUB INTERIM STUD SUB " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="TeacherAllocations_Results.ccp" PathID="TeacherAllocations_Search">
			<Components>
				<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" required="True" caption="Subject ID" PathID="TeacherAllocations_Searchs_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_popupSubjectList" wizardUseTemplateBlock="False" hrefSource="#" PathID="TeacherAllocations_Searchlink_popupSubjectList">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<ListBox id="6" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="s_STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" boundColumn="STAFF_ID" textColumn="staffname" activeCollection="TableParameters" orderBy="status_type, staff_ID" PathID="TeacherAllocations_Searchs_STAFF_ID" dataSource="View_StaffList_Active_Inactive">
					<Components/>
					<Events/>
					<TableParameters>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="12" tableName="View_StaffList_Active_Inactive" schemaName="dbo" posLeft="10" posTop="10" posWidth="125" posHeight="152"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="13" tableName="View_StaffList_Active_Inactive" fieldName="staff_ID"/>
						<Field id="14" tableName="View_StaffList_Active_Inactive" fieldName="staffname"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="7" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="s_SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="B" _nameOfList="Both" dataSource="%25;;1;1;2;2;B;Both" defaultValue="&quot;&quot;" PathID="TeacherAllocations_Searchs_SEMESTER">
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
				<RadioButton id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="s_SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" connection="connDECVPRODSQL2005" _nameOfList="All Students" dataSource="[CEPD];Active Students;[CDEFPW];All Students" defaultValue="&quot;[CEPD]&quot;" _valueOfList="[CDEFPW]" PathID="TeacherAllocations_Searchs_SUBJ_ENROL_STATUS">
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
				<RadioButton id="9" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="s_APPEARS_ON_VASS" wizardCaption="APPEARS ON VASS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" connection="connDECVPRODSQL2005" defaultValue="&quot;1,0&quot;" dataSource="1;Yes;0;No;1,0;All" _valueOfList="1,0" _nameOfList="All" PathID="TeacherAllocations_Searchs_APPEARS_ON_VASS">
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
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" required="True" defaultValue="Year(Today)" caption="Enrolment Year" PathID="TeacherAllocations_Searchs_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="TeacherAllocations_SearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Set Focus" actionCategory="General" id="15" name="s_SUBJECT_ID"/>
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
		<CodeFile id="3" language="VB" name="TeacherAllocations.aspx" forShow="True" url="TeacherAllocations.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="TeacherAllocations.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="TeacherAllocationsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
