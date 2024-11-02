<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="TeacherAllocations_Search" wizardCaption="Search STUD SUB INTERIM STUD SUB " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="StudentAmendments_Results.ccp" PathID="TeacherAllocations_Search">
			<Components>
				<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_STUDENT_ID_lowest" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" required="True" caption="lowest Student ID" PathID="TeacherAllocations_Searchs_STUDENT_ID_lowest">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="DLookup" actionCategory="Database" id="17" typeOfTarget="Control" expression="&quot;min(STUDENT_ID)&quot;" domain="&quot;STUDENT&quot;" connection="connDECVPRODSQL2005" dataType="Float" target="s_STUDENT_ID_lowest"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="16" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="listRowsPerPage" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="80" _nameOfList="80" dataSource="10;10;20;20;80;80;100;100;200;200" defaultValue="80" PathID="TeacherAllocations_SearchlistRowsPerPage">
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
				<ListBox id="6" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="s_YEAR_LEVEL" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardEmptyCaption="Select Value" dataSource="99;All;0;0;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled" activeCollection="TableParameters" orderBy="STAFF_ID" connection="connDECVPRODSQL2005" defaultValue="99" caption="Year Level" PathID="TeacherAllocations_Searchs_YEAR_LEVEL" _valueOfList="30" _nameOfList="Home Schooled">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="14" conditionType="Expression" useIsNull="False" field="STATUS" dataType="Boolean" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1" parameterSource="1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
					</JoinTables>
					<JoinLinks/>
					<Fields>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<RadioButton id="8" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="s_SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" connection="connDECVPRODSQL2005" _nameOfList="All Students" dataSource="[CEPD];Active Students;[CEPDNF];All Students" defaultValue="&quot;[CEPD]&quot;" _valueOfList="[CEPDNF]" PathID="TeacherAllocations_Searchs_SUBJ_ENROL_STATUS">
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentAmendment.aspx" forShow="True" url="StudentAmendment.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentAmendment.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentAmendmentDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="18" form="TeacherAllocations_Search" name="s_STUDENT_ID_lowest"/>
			</Actions>
		</Event>
	</Events>
</Page>
