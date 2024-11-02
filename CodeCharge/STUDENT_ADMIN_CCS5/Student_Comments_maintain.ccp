<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<Record id="13" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_COMMENT" dataSource="STUDENT_COMMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT COMMENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" customInsertType="SQL" activeCollection="ISQLParameters" activeTableType="STUDENT_COMMENT" customInsert="insert into STUDENT_COMMENT ([COMMENT_ID],[STUDENT_ID],[COMMENT],[LAST_ALTERED_BY],[LAST_ALTERED_DATE],[ACTIVE_STATUS],[COMMENT_TYPE]) 
select (select (max(COMMENT_ID+1)) from STUDENT_COMMENT) , {STUDENT_ID},'{COMMENTTEXT}',UPPER('{LAST_ALTERED_BY}'), getdate(),'A','{COMMENT_TYPE}'" parameterTypeListName="ParameterTypeList" PathID="STUDENT_COMMENT">
			<Components>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSTUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextArea id="18" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT" fieldSource="COMMENT" required="True" caption="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="STUDENT_COMMENTCOMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Button id="14" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_COMMENTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="15" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_COMMENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="17" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_COMMENTSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="24" fieldSourceType="DBColumn" dataType="Text" name="hidden_STATUS" defaultValue="&quot;A&quot;" fieldSource="ACTIVE_STATUS" PathID="STUDENT_COMMENThidden_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="38" fieldSourceType="DBColumn" dataType="Text" name="Hidden_CommentType" PathID="STUDENT_COMMENTHidden_CommentType" defaultValue="&quot;REGULAR&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="62" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblCommentType" PathID="STUDENT_COMMENTlblCommentType" defaultValue="&quot;SPECIAL COMMENT TYPE&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="63" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="lbSpecialCommentType" wizardEmptyCaption="Select Value" PathID="STUDENT_COMMENTlbSpecialCommentType" defaultValue="&quot;0&quot;" required="True" caption="Special Comment Type" _valueOfList="MODIFIED_SUBJECT" _nameOfList="Modified Subject (Public)" connection="connDECVPRODSQL2005" dataSource="COMMENT_TYPE" orderBy="SORT_ORDER, PUBLIC_FLAG desc, COMMENT_TYPE_ID" boundColumn="COMMENT_TYPE" textColumn="COMMENT_DESCRIPTION">
					<Components/>
					<Events>
<Event name="AfterExecuteSelect" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="157"/>
</Actions>
</Event>
</Events>
					<TableParameters>
						<TableParameter id="144" conditionType="Expression" useIsNull="False" expression="STATUS = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="149" tableName="COMMENT_TYPE"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="145" fieldName="SPECIAL_FLAG" tableName="COMMENT_TYPE"/>
						<Field id="146" fieldName="PUBLIC_FLAG" tableName="COMMENT_TYPE"/>
						<Field id="147" fieldName="COMMENT_DESCRIPTION" tableName="COMMENT_TYPE"/>
						<Field id="148" fieldName="COMMENT_TYPE" tableName="COMMENT_TYPE"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="68" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="lbSpecialCommentType1" wizardEmptyCaption="Select Value" PathID="STUDENT_COMMENTlbSpecialCommentType1" dataSource="COMMENT_TYPE" required="True" caption="Contact Type" defaultValue="&quot;0&quot;" _valueOfList="MODIFIED_SUBJECT" _nameOfList="Modified Subject (Public)" connection="connDECVPRODSQL2005" orderBy="SORT_ORDER, PUBLIC_FLAG desc, COMMENT_TYPE_ID" boundColumn="COMMENT_TYPE" textColumn="COMMENT_DESCRIPTION">
					<Components/>
					<Events>
						<Event name="AfterExecuteSelect" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="94"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="151" conditionType="Expression" useIsNull="False" expression="SPECIAL_FLAG = 0" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="152" conditionType="Expression" useIsNull="False" expression="STATUS = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="158" tableName="COMMENT_TYPE"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="153" fieldName="SPECIAL_FLAG" tableName="COMMENT_TYPE"/>
						<Field id="154" fieldName="PUBLIC_FLAG" tableName="COMMENT_TYPE"/>
						<Field id="155" fieldName="COMMENT_DESCRIPTION" tableName="COMMENT_TYPE"/>
						<Field id="156" fieldName="COMMENT_TYPE" tableName="COMMENT_TYPE"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="97" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="lbCannedResponses" wizardEmptyCaption="Select Value" PathID="STUDENT_COMMENTlbCannedResponses" dataSource="Message Left;Message Left;Emailed about outstanding work;Emailed about outstanding work;Tried calling, No answer;Tried calling, No answer;Email bounced back;Email bounced back;Lack of submissions discussed;Lack of submissions discussed;Work issues discussed;Work issues discussed;Change of subjects;Change of subjects;Amber letter sent;Amber letter sent;Red letter sent;Red letter sent;Student Contact Hour;Student Contact Hour" _valueOfList="Student Contact Hour" _nameOfList="Student Contact Hour" required="False">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="98"/>
								<Action actionName="Set Focus" actionCategory="General" id="99" form="STUDENT_COMMENT" name="COMMENT"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="100"/>
							</Actions>
						</Event>
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
				</ListBox>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="26" name="STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="27" name="lblSTUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="64" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="67" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="92" name="tmpStudentName" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="DLookup" actionCategory="Database" id="93" typeOfTarget="Variable" expression="&quot;RTRIM(first_name) + ' ' + RTRIM(surname)&quot;" domain="&quot;STUDENT&quot;" criteria="&quot;STUDENT_ID=&quot; &amp; item.student_id.value" connection="connDECVPRODSQL2005" dataType="Text" target="tmpStudentName"/>
						<Action actionName="Custom Code" actionCategory="General" id="91"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="96"/>
					</Actions>
				</Event>
				<Event name="OnSubmit" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="142"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="16" conditionType="Parameter" useIsNull="False" field="COMMENT_ID" parameterSource="COMMENT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters>
				<SQLParameter id="30" variable="STUDENT_ID" parameterType="Control" dataType="Text" parameterSource="STUDENT_ID"/>
				<SQLParameter id="31" variable="COMMENTTEXT" parameterType="Control" dataType="Text" parameterSource="COMMENT"/>
				<SQLParameter id="32" variable="LAST_ALTERED_BY" parameterType="Expression" dataType="Text" parameterSource="DBUtility.UserLogin.ToUpper"/>
				<SQLParameter id="39" variable="COMMENT_TYPE" parameterType="Control" defaultValue="'REGULAR'" dataType="Text" parameterSource="Hidden_CommentType"/>
			</ISQLParameters>
			<IFormElements>
				<CustomParameter id="21" field="COMMENT" dataType="Text" parameterType="Control" parameterSource="COMMENT" omitIfEmpty="True"/>
				<CustomParameter id="23" field="STUDENT_ID" dataType="Float" parameterType="Control" parameterSource="STUDENT_ID" omitIfEmpty="True"/>
				<CustomParameter id="25" field="ACTIVE_STATUS" dataType="Text" parameterType="Control" parameterSource="hidden_STATUS" defaultValue="&quot;A&quot;" omitIfEmpty="False"/>
			</IFormElements>
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
		<Grid id="4" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" name="Grid_DisplayComments" connection="connDECVPRODSQL2005" dataSource="STUDENT_COMMENT" orderBy="LAST_ALTERED_DATE desc" pageSizeLimit="100" activeCollection="TableParameters" PathID="Grid_DisplayComments" wizardUsePageScroller="True">
			<Components>
				<Label id="8" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT" fieldSource="COMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="36" size="10" type="Simple" pageSizes="10;30;100;500" name="Navigator1" PathID="Grid_DisplayCommentsNavigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="ImagesWithText" wizardHideDisabled="True" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardPageSize="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT_TYPE" PathID="Grid_DisplayCommentsCOMMENT_TYPE" fieldSource="COMMENT_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_editcomment" PathID="Grid_DisplayCommentslink_editcomment" hrefSource="Student_Comments_editown.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="46" sourceType="DataField" name="COMMENT_ID" source="COMMENT_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="43" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" parameterSource="STUDENT_ID" logicOperator="And" defaultValue="0"/>
				<TableParameter id="28" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="ACTIVE_STATUS = 'A'"/>
				<TableParameter id="81" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="COMMENT_TYPE not like 'CONTACT%'"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="101" tableName="STUDENT_COMMENT"/>
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
		<Panel id="34" visible="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain" pasteAsReplace="pasteAsReplace">
			<Components>
				<IncludePage id="35" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="42" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
		<Link id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_BacktoPastoralList" PathID="Link_BacktoPastoralList" hrefSource="PastoralTeacher_StudentList.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Record id="47" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ProfilesPanel" actionPage="Student_Comments_maintain" errorSummator="Error" wizardFormMethod="post" PathID="ProfilesPanel" connection="connDECVPRODSQL2005" dataSource="STUDENT_ENROLMENT" activeCollection="TableParameters" pasteActions="pasteActions">
			<Components>
				<RadioButton id="48" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="radio_PathwaysProfile" PathID="ProfilesPanelradio_PathwaysProfile" fieldSource="PATHWAY_PROFILE_DONE" dataSource="Yes;Yes;No;No" caption="Pathways Profile" required="True" defaultValue="&quot;No&quot;" connection="connDECVPRODSQL2005">
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
				<Button id="49" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" PathID="ProfilesPanelButton_Update" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="50" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" PathID="ProfilesPanelButton_Cancel" operation="Cancel" wizardCaption="Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>

				</Button>
				<RadioButton id="51" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="radio_IntakeInterview" PathID="ProfilesPanelradio_IntakeInterview" caption="Student Profile" fieldSource="INTAKE_INTERVIEW_DONE" connection="connDECVPRODSQL2005" dataSource="Yes;Yes;No;No" required="True" defaultValue="&quot;No&quot;">
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
				<Label id="52" fieldSourceType="DBColumn" dataType="Text" html="False" name="label_EnrolYear" PathID="ProfilesPanellabel_EnrolYear">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="61" name="label_EnrolYear" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="60"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="58" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="59" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="53" tableName="STUDENT_ENROLMENT" schemaName="dbo" posLeft="10" posTop="10" posWidth="320" posHeight="248"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="54" tableName="STUDENT_ENROLMENT" fieldName="STUDENT_ID"/>
				<Field id="55" tableName="STUDENT_ENROLMENT" fieldName="ENROLMENT_YEAR"/>
				<Field id="56" tableName="STUDENT_ENROLMENT" fieldName="INTAKE_INTERVIEW_DONE"/>
				<Field id="57" tableName="STUDENT_ENROLMENT" fieldName="PATHWAY_PROFILE_DONE"/>
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
		<Grid id="69" secured="True" sourceType="SQL" returnValueType="Number" defaultPageSize="200" name="Grid_DisplayComments_MyComments" connection="connDECVPRODSQL2005" orderBy="LAST_ALTERED_DATE desc" pageSizeLimit="200" activeCollection="TableParameters" PathID="Grid_DisplayComments_MyComments" wizardUsePageScroller="True" dataSource="SELECT * 
FROM STUDENT_COMMENT
WHERE STUDENT_ID = {STUDENT_ID}
AND ( ACTIVE_STATUS = 'A' )
AND ( COMMENT_TYPE  like 'CONTACT%' )
">
			<Components>
				<Label id="70" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT" fieldSource="COMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="71" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="72" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="74" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT_TYPE" PathID="Grid_DisplayComments_MyCommentsCOMMENT_TYPE" fieldSource="COMMENT_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="75" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_editcomment" PathID="Grid_DisplayComments_MyCommentslink_editcomment" hrefSource="Student_Comments_editown.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="76" sourceType="DataField" name="COMMENT_ID" source="COMMENT_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="85" fieldSourceType="DBColumn" dataType="Text" html="False" name="Label_LogType" PathID="Grid_DisplayComments_MyCommentsLabel_LogType" defaultValue="&quot;All Teacher's&quot;"><Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="77"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="86"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="87"/>
					</Actions>
				</Event>
				<Event name="BeforeExecuteSelect" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="88"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="78" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" parameterSource="STUDENT_ID" logicOperator="And" defaultValue="0"/>
				<TableParameter id="79" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="ACTIVE_STATUS = 'A'"/>
				<TableParameter id="82" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="COMMENT_TYPE  like 'CONTACT%'"/><TableParameter id="89" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="strStaffIDSelect"/>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="90" parameterType="URL" variable="STUDENT_ID" dataType="Float" parameterSource="STUDENT_ID" defaultValue="0"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<IncludePage id="84" name="StudentNamePlate" PathID="StudentNamePlate" page="StudentNamePlate.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Comments_maintain.aspx" forShow="True" url="Student_Comments_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Comments_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Comments_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="33"/>
			</Actions>
		</Event>
	</Events>
</Page>
