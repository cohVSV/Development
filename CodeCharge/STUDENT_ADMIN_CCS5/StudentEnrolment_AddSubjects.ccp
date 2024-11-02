<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Button id="22" urlType="Relative" enableValidation="True" isDefault="False" name="button_PopupSubjectList" PathID="button_PopupSubjectList">
			<Components/>
			<Events>
				<Event name="OnClick" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="23" eventType="Client"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Button>
		<Grid id="3" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="select A.SUBJECT_ID, B.SUBJECT_TITLE,A.COURSE_DISTRIBUTION, A.SEMESTER, 
convert(char(8),A.ENROLMENT_DATE,3) as ENROL_DATE from TEMP_STUDENT_SUBJECT A, SUBJECT B 
where A.SUBJECT_ID=B.SUBJECT_ID 
and A.STUDENT_ID={STUDENT_ID}
and A.ENROLMENT_YEAR={ENROLMENT_YEAR}" name="SubjectList" orderBy="SUBJECT_ID" pageSizeLimit="100" wizardCaption="List of Subject List " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" PathID="SubjectList">
			<Components>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbldisplay_STUDENTID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbldisplay_ENROL_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbldisplay_YEARLEVEL" defaultValue="year(now())">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="6" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="7" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="SUBJECT TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="8" fieldSourceType="DBColumn" dataType="Text" html="False" name="COURSE_DISTRIBUTION" fieldSource="COURSE_DISTRIBUTION" wizardCaption="COURSE DISTRIBUTION" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROL_DATE" fieldSource="ENROL_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="19" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="cbox" PathID="SubjectListcbox" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="29" name="lbldisplay_STUDENTID" sourceType="Session" sourceName="tmpSTUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="30" name="lbldisplay_ENROL_YEAR" sourceType="Session" sourceName="tmpENROLMENT_YEAR"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="31" name="lbldisplay_YEARLEVEL" sourceType="Session" sourceName="tmpYEAR_LEVEL"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="4" variable="STUDENT_ID" parameterType="URL" defaultValue="0" dataType="Text" designDefaultValue="44696" parameterSource="STUDENT_ID"/>
				<SQLParameter id="5" variable="ENROLMENT_YEAR" parameterType="URL" defaultValue="year(now())" dataType="Text" designDefaultValue="2007" parameterSource="ENROLMENT_YEAR"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="11" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="AddNewSubject" actionPage="StudentEnrolment_AddSubjects" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" PathID="AddNewSubject">
			<Components>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SUBJECT_ID" required="True" caption="SUBJECT ID" PathID="AddNewSubjects_SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="lbladdSUBJECT_TITLE" defaultValue="&quot;none&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="addCOURSE_DISTRIBUTION" sourceType="ListOfValues" connection="connDECVPRODSQL2005" _valueOfList="I" _nameOfList="Internet" dataSource="B;Book;C;CD;E;E-mail;I;Internet" defaultValue="&quot;B&quot;" PathID="AddNewSubjectaddCOURSE_DISTRIBUTION">
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
					<PKFields/>
				</ListBox>
				<ListBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="addSEMESTER" sourceType="ListOfValues" connection="connDECVPRODSQL2005" _valueOfList="B" _nameOfList="Both" dataSource="1;1;2;2;B;Both" required="True" PathID="AddNewSubjectaddSEMESTER">
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
					<PKFields/>
				</ListBox>
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="addENROL_DATE" defaultValue="now()" format="dd/mm/yyyy" required="True" PathID="AddNewSubjectaddENROL_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="32" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoAdd" PathID="AddNewSubjectButton_DoAdd">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="33"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="35" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoDelete" PathID="AddNewSubjectButton_DoDelete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="36" message="Are you SURE you want to DELETE the selected Subjects from this Student?"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="37"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="24" fieldSourceType="DBColumn" dataType="Text" name="hidden_STUDENT_ID" PathID="AddNewSubjecthidden_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="25" fieldSourceType="DBColumn" dataType="Text" name="hidden_ENROLMENT_YEAR" PathID="AddNewSubjecthidden_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="38" fieldSourceType="DBColumn" dataType="Text" name="hidden_YEARLEVEL" PathID="AddNewSubjecthidden_YEARLEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblMessages">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="39" name="hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="40" name="hidden_ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="41" name="hidden_YEARLEVEL" sourceType="URL" sourceName="YEAR_LEVEL"/>
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
		<CodeFile id="3" language="VB" name="StudentEnrolment_AddSubjects.aspx" forShow="True" url="StudentEnrolment_AddSubjects.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolment_AddSubjects.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolment_AddSubjectsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
