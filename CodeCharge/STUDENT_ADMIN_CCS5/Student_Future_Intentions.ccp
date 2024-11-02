<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0">
	<Components>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_FUTURE_INTENTIONS" dataSource="STUDENT_FUTURE_INTENTIONS" errorSummator="Error" wizardCaption="Add/Edit STUDENT FUTURE INTENTIONS " wizardFormMethod="post" PathID="STUDENT_FUTURE_INTENTIONS" pasteActions="pasteActions" returnPage="StudentSummary.ccp" activeCollection="TableParameters">
			<Components>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_FUTURE_INTENTIONSButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_FUTURE_INTENTIONSButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SCHOOL_NAME" fieldSource="SCHOOL_NAME" required="False" caption="SCHOOL / INSTITUTION NAME" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_FUTURE_INTENTIONSSCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMPLOYER_DETAIL" fieldSource="EMPLOYER_DETAIL" required="False" caption="EMPLOYER / COMPANY NAME" wizardCaption="EMPLOYER DETAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_FUTURE_INTENTIONSEMPLOYER_DETAIL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="20" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RE_ENROLMENT_FLAG" PathID="STUDENT_FUTURE_INTENTIONSRE_ENROLMENT_FLAG" dataSource="Y;Yes;N;No;U;Unknown" fieldSource="RE_ENROLMENT_FLAG" caption="RE-ENROL AT VSV" required="True">
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
				<RadioButton id="21" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="NEW_SCHOOL_FLAG" PathID="STUDENT_FUTURE_INTENTIONSNEW_SCHOOL_FLAG" dataSource="Y;Yes;N;No;U;Unknown" fieldSource="NEW_SCHOOL_FLAG" caption="ENROL OTHER SCHOOL or INSTITUTION" required="True">
					<Components/>
					<Events>
					</Events>
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
				<RadioButton id="22" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="LEAVING_FLAG" PathID="STUDENT_FUTURE_INTENTIONSLEAVING_FLAG" dataSource="Y;Yes;N;No;U;Unknown" fieldSource="LEAVING_FLAG" caption="LEAVING SCHOOL" required="True">
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
				<RadioButton id="23" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="SEEKING_WORK_FLAG" PathID="STUDENT_FUTURE_INTENTIONSSEEKING_WORK_FLAG" dataSource="Y;Yes;N;No;U;Unknown" fieldSource="SEEKING_WORK_FLAG" required="True" caption="SEEKING FULL-TIME WORK">
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
				<RadioButton id="24" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="EMPLOYMENT_FLAG" PathID="STUDENT_FUTURE_INTENTIONSEMPLOYMENT_FLAG" dataSource="Y;Yes;N;No;U;Unknown" fieldSource="EMPLOYMENT_FLAG" caption="ENGAGED IN FULL TIME EMPLOYMENT" required="True">
					<Components/>
					<Events>
					</Events>
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
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" defaultValue="DBUtility.UserLogin.ToUpper()">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_ID" PathID="STUDENT_FUTURE_INTENTIONSSTUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_YEAR" PathID="STUDENT_FUTURE_INTENTIONSENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="32" fieldSourceType="DBColumn" dataType="Text" name="Hidden_lastalteredby" PathID="STUDENT_FUTURE_INTENTIONSHidden_lastalteredby" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="33" fieldSourceType="DBColumn" dataType="Date" name="Hidden_lastaltered_date" PathID="STUDENT_FUTURE_INTENTIONSHidden_lastaltered_date" fieldSource="LAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="34" fieldSourceType="DBColumn" dataType="Text" name="Hidden_student_id" PathID="STUDENT_FUTURE_INTENTIONSHidden_student_id" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="35" fieldSourceType="DBColumn" dataType="Text" name="Hidden_enrolmentyear" PathID="STUDENT_FUTURE_INTENTIONSHidden_enrolmentyear" fieldSource="ENROLMENT_YEAR" defaultValue="Year(Today)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" PathID="STUDENT_FUTURE_INTENTIONSButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="30" sourceType="URL" name="STUDENT_ID" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="31" name="ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="36" name="Hidden_student_id" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="37" name="Hidden_enrolmentyear" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="40" name="Hidden_lastalteredby" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="41" name="Hidden_lastaltered_date" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="42" name="Hidden_lastalteredby" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="43" name="Hidden_lastaltered_date" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" parameterSource="STUDENT_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
				<TableParameter id="39" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="38" tableName="STUDENT_FUTURE_INTENTIONS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
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
		<Link id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_BacktoPastoralList" PathID="Link_BacktoPastoralList" hrefSource="PastoralTeacher_StudentList.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Panel id="47" visible="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<IncludePage id="50" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="49"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Future_Intentions.aspx" forShow="True" url="Student_Future_Intentions.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Future_Intentions.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Future_IntentionsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
