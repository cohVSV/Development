<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Menu_Student_maintain" PathID="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" returnValueType="Number" defaultPageSize="1" connection="connDECVPRODSQL2005" name="STUDENT_CARER_CONTACT" pageSizeLimit="1" wizardCaption="List of STUDENT CARER CONTACT " wizardGridType="Columnar" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Contact Details." pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" activeCollection="SQLParameters" sourceType="SQL" parameterTypeListName="ParameterTypeList" dataSource="SELECT top 1 *
FROM STUDENT_CARER_CONTACT
WHERE ( RELATIONSHIP &lt;&gt; 'SS' ) 
AND ( CARER_ID = (SELECT CARER_ID_PARENT_A from STUDENT WHERE STUDENT_ID = {STUDENT_ID}))
order by CARER_ID" PathID="STUDENT_CARER_CONTACT">
			<Components>
				<Label id="4" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID" wizardCaption="CARER ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTCARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="5" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTTITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="8" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTRELATIONSHIP" visible="Yes" sourceType="ListOfValues" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other">
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
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTHOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTWORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTMOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="12" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTEMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" hrefSource="EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="63" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="6" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="7" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="55" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACTLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="56" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENT_CARER_CONTACTLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="69" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_AddParent" PathID="STUDENT_CARER_CONTACTlink_AddParent" wizardUseTemplateBlock="False" removeParameters="CARER_ID;STUDENT_CARER_CONTACT2PageSize;STUDENT_CARER_CONTACTDir;STUDENT_CARER_CONTACT2Dir;STUDENT_CARER_CONTACT1Dir;STUDENT_CARER_CONTACTageSize;STUDENT_CARER_CONTACT1PageSize;" hrefSource="Student_Carer_maintainext.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="70" sourceType="Expression" format="yyyy-mm-dd" name="carertype" source="&quot;A&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="77" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_EditParentA" PathID="STUDENT_CARER_CONTACTLink_EditParentA" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False" removeParameters="STUDENT_CARER_CONTACT2PageSize;STUDENT_CARER_CONTACTDir;STUDENT_CARER_CONTACT2Dir;STUDENT_CARER_CONTACT1Dir;STUDENT_CARER_CONTACTageSize;STUDENT_CARER_CONTACT1PageSize;">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="78" sourceType="Expression" format="yyyy-mm-dd" name="carertype" source="&quot;A&quot;"/>
						<LinkParameter id="79" sourceType="DataField" format="yyyy-mm-dd" name="CARER_ID" source="CARER_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="292" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="linkFamilyGroup" PathID="STUDENT_CARER_CONTACTlinkFamilyGroup" hrefSource="Student_Carer_FamilyGrouping.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Family Group','textSourceDB':'','hrefSource':'Student_Carer_FamilyGrouping.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}"><Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="548" fieldSourceType="DBColumn" dataType="Date" html="False" name="PORTAL_LAST_LOGIN_DATE" PathID="STUDENT_CARER_CONTACTPORTAL_LAST_LOGIN_DATE" fieldSource="PORTAL_LAST_LOGIN_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields>
			</Fields>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="540" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Grid id="13" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="1" connection="connDECVPRODSQL2005" dataSource="SELECT * 
FROM STUDENT_CARER_CONTACT
WHERE ( RELATIONSHIP &lt;&gt; 'SS' ) 
AND ( CARER_ID = (SELECT CARER_ID_PARENT_B from STUDENT WHERE STUDENT_ID = {STUDENT_ID} ))" name="STUDENT_CARER_CONTACT1" pageSizeLimit="1" wizardCaption="List of STUDENT CARER CONTACT " wizardGridType="Columnar" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Contact Details." pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" PathID="STUDENT_CARER_CONTACT1">
			<Components>
				<Label id="14" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID" wizardCaption="CARER ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1EMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" hrefSource="EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="64" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="57" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT1LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="59" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENT_CARER_CONTACT1LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="71" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_AddParent" PathID="STUDENT_CARER_CONTACT1link_AddParent" wizardUseTemplateBlock="False" removeParameters="CARER_ID" hrefSource="Student_Carer_maintainext.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="72" sourceType="Expression" format="yyyy-mm-dd" name="carertype" source="&quot;B&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="80" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="STUDENT_CARER_CONTACT1Link1" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False" removeParameters="STUDENT_CARER_CONTACT2PageSize;STUDENT_CARER_CONTACTDir;STUDENT_CARER_CONTACT2Dir;STUDENT_CARER_CONTACT1Dir;STUDENT_CARER_CONTACTageSize;STUDENT_CARER_CONTACT1PageSize;">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="81" sourceType="Expression" format="yyyy-mm-dd" name="carertype" source="&quot;B&quot;"/>
						<LinkParameter id="82" sourceType="DataField" format="yyyy-mm-dd" name="CARER_ID" source="CARER_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<ListBox id="236" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1RELATIONSHIP" visible="Yes" sourceType="ListOfValues" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other">
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
				<Label id="549" fieldSourceType="DBColumn" dataType="Date" html="False" name="PORTAL_LAST_LOGIN_DATE" PathID="STUDENT_CARER_CONTACT1PORTAL_LAST_LOGIN_DATE" fieldSource="PORTAL_LAST_LOGIN_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="395" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Grid id="23" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="1" connection="connDECVPRODSQL2005" dataSource="SELECT * , dbo.CarerTypeLabel(Relationship) as Supervisortype
FROM STUDENT_CARER_CONTACT
WHERE ( RELATIONSHIP in ('SS','XS','XA','XB' )) 
AND ( CARER_ID = (SELECT CARER_ID_SCHOOL_SUPERVISOR from STUDENT_ENROLMENT WHERE STUDENT_ID = {STUDENT_ID} AND ENROLMENT_YEAR = {ENROLMENT_YEAR}))" name="STUDENT_CARER_CONTACT2" pageSizeLimit="1" wizardCaption="List of STUDENT CARER CONTACT " wizardGridType="Columnar" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Contact Details." pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" PathID="STUDENT_CARER_CONTACT2" visible="Dynamic">
			<Components>
				<Label id="24" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID" wizardCaption="CARER ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2EMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" hrefSource="EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="65" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="32" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="60" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT2LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="62" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENT_CARER_CONTACT2LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="73" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_AddParent" PathID="STUDENT_CARER_CONTACT2link_AddParent" wizardUseTemplateBlock="False" removeParameters="CARER_ID;STUDENT_CARER_CONTACT2PageSize;STUDENT_CARER_CONTACTDir;STUDENT_CARER_CONTACT2Dir;STUDENT_CARER_CONTACT1Dir;STUDENT_CARER_CONTACTageSize;STUDENT_CARER_CONTACT1PageSize;" hrefSource="Student_Carer_maintainext.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="74" sourceType="Expression" format="yyyy-mm-dd" name="carertype" source="&quot;S&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="122" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_EditSupervisor" PathID="STUDENT_CARER_CONTACT2Link_EditSupervisor" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False" removeParameters="STUDENT_CARER_CONTACT2PageSize;STUDENT_CARER_CONTACTDir;STUDENT_CARER_CONTACT2Dir;STUDENT_CARER_CONTACT1Dir;STUDENT_CARER_CONTACTageSize;STUDENT_CARER_CONTACT1PageSize;">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="123" sourceType="Expression" format="yyyy-mm-dd" name="carertype" source="&quot;S&quot;"/>
						<LinkParameter id="124" sourceType="DataField" format="yyyy-mm-dd" name="CARER_ID" source="CARER_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="239" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="LinkAddSupervisor2" PathID="STUDENT_CARER_CONTACT2LinkAddSupervisor2" hrefSource="Student_Carer_maintainext.ccp" wizardUseTemplateBlock="False" removeParameters="CARER_ID;STUDENT_CARER_CONTACT2PageSize;STUDENT_CARER_CONTACTDir;STUDENT_CARER_CONTACT2Dir;STUDENT_CARER_CONTACT1Dir;STUDENT_CARER_CONTACTageSize;STUDENT_CARER_CONTACT1PageSize;">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="240" sourceType="Expression" format="yyyy-mm-dd" name="carertype" source="&quot;S&quot;"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="374" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUPERVISOR_POSITION_OTHER" PathID="STUDENT_CARER_CONTACT2SUPERVISOR_POSITION_OTHER" fieldSource="SUPERVISOR_POSITION_OTHER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="375" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUPERVISOR_POSITION" PathID="STUDENT_CARER_CONTACT2SUPERVISOR_POSITION" fieldSource="SUPERVISOR_POSITION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="550" fieldSourceType="DBColumn" dataType="Date" html="False" name="PORTAL_LAST_LOGIN_DATE" PathID="STUDENT_CARER_CONTACT2PORTAL_LAST_LOGIN_DATE" fieldSource="PORTAL_LAST_LOGIN_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="555" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblSupervisor" PathID="STUDENT_CARER_CONTACT2lblSupervisor" defaultValue="&quot;School Supervisor&quot;" fieldSource="Supervisortype">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="558" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Supervisortype" PathID="STUDENT_CARER_CONTACT2Supervisortype" fieldSource="Supervisortype">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="559" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
				<SQLParameter id="560" dataType="Text" designDefaultValue="2018" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features>
			</Features>
			<PKFields/>
		</Grid>
		<Record id="33" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_CARER_CONTACT3" dataSource="STUDENT_CARER_CONTACT" errorSummator="Error" wizardCaption="Add/Edit STUDENT CARER CONTACT " wizardFormMethod="post" PathID="STUDENT_CARER_CONTACT3" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" removeParameters="CARER_ID;carertype" customInsertType="Procedure" customInsert="USP_Student_CARER_CONTACT_ADD_UPDATE;1" parameterTypeListName="ParameterTypeList" activeCollection="DSQLParameters" customUpdateType="Procedure" customUpdate="USP_Student_CARER_CONTACT_ADD_UPDATE;1" customDeleteType="SQL" customDelete="UPDATE STUDENT
SET CARER_ID_PARENT_B = NULL
WHERE STUDENT_ID = {student_id}
AND CARER_ID_PARENT_B = {carer_id}">
			<Components>
				<Button id="34" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_CARER_CONTACT3Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="35" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_CARER_CONTACT3Button_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="36" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="STUDENT_CARER_CONTACT3Button_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="37" message="Unlink Carer (B) from this Student only?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="38" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_CARER_CONTACT3Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="40" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="TITLE" fieldSource="TITLE" required="False" caption="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3TITLE" sourceType="ListOfValues" dataSource="MR;Mr;MRS;Mrs;Miss;Miss;Ms;Ms;Dr;Doctor">
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
				<TextBox id="41" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME / FAMILY" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
					</Features>
				</TextBox>
				<TextBox id="42" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="43" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="RELATIONSHIP" fieldSource="RELATIONSHIP" required="True" caption="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STUDENT_CARER_CONTACT3RELATIONSHIP" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other">
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
				<TextBox id="44" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="HOME_PHONE" fieldSource="HOME_PHONE" required="False" caption="HOME PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3HOME_PHONE">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WORK_PHONE" fieldSource="WORK_PHONE" required="False" caption="WORK PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3WORK_PHONE">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="46" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MOBILE" fieldSource="MOBILE" required="False" caption="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3MOBILE">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="47" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL" fieldSource="EMAIL" required="False" caption="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3EMAIL">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="538" name="EMAIL" regExp="^[\w\.\+-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$" errorMessage="The Carer Email Address is not a valid Email Address eg: bob.student@example.com"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="50" fieldSourceType="DBColumn" dataType="Text" name="Hidden_STUDENT_ID" PathID="STUDENT_CARER_CONTACT3Hidden_STUDENT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="171" name="Hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="185" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT3Hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="296" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblCARER_ID" PathID="STUDENT_CARER_CONTACT3lblCARER_ID" fieldSource="CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="297" fieldSourceType="DBColumn" dataType="Text" name="Hidden_CarerId" PathID="STUDENT_CARER_CONTACT3Hidden_CarerId" fieldSource="CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="385" fieldSourceType="DBColumn" dataType="Integer" name="Hidden_DuperCarer" PathID="STUDENT_CARER_CONTACT3Hidden_DuperCarer" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="75" action="Hide" conditionType="Parameter" dataType="Text" componentName="STUDENT_CARER_CONTACT3" condition="Equal" name1="carertype" sourceType1="URL" sourceType2="Expression" name2="&quot;S&quot;"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="133" action="Hide" conditionType="Parameter" dataType="Text" componentName="STUDENT_CARER_CONTACT3" condition="Equal" name1="carertype" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="546" action="Hide" conditionType="Parameter" dataType="Text" componentName="Button_Delete" condition="Equal" name1="carertype" sourceType1="URL" name2="&quot;A&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="293" name="tmpExistingCarer" type="Integer" initialValue="0"/>
						<Action actionName="Custom Code" actionCategory="General" id="169"/>
						<Action actionName="Custom Code" actionCategory="General" id="295"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="291" name="Hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="39" conditionType="Parameter" useIsNull="False" field="CARER_ID" parameterSource="CARER_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="396" tableName="STUDENT_CARER_CONTACT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key197" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key198" parameterName="@Contact_ID" parameterSource="CARER_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18" defaultValue="0"/>
				<SPParameter id="Key199" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key200" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key201" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key202" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key203" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key204" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key205" parameterName="@Home_Phone" parameterSource="HOME_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key206" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key207" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key208" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key209" parameterName="@Last_Altered_By" parameterSource="Hidden_LAST_ALTERED_BY" dataType="VarChar" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="187" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="188" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="189" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="190" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="191" field="HOME_PHONE" dataType="Text" parameterType="Control" parameterSource="HOME_PHONE"/>
				<CustomParameter id="192" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="193" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="194" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="195" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key218" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key219" parameterName="@Contact_ID" parameterSource="CARER_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18" defaultValue="0"/>
				<SPParameter id="Key220" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key221" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key222" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key223" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key224" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key225" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key226" parameterName="@Home_Phone" parameterSource="HOME_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key227" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key228" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key229" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key230" parameterName="@Last_Altered_By" parameterSource="Hidden_LAST_ALTERED_BY" dataType="VarChar" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="208" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="209" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="210" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="211" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="212" field="HOME_PHONE" dataType="Text" parameterType="Control" parameterSource="HOME_PHONE"/>
				<CustomParameter id="213" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="214" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="215" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="216" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters>
				<SQLParameter id="299" variable="student_id" parameterType="Control" defaultValue="0" dataType="Text" parameterSource="Hidden_STUDENT_ID"/>
				<SQLParameter id="300" variable="carer_id" parameterType="Control" defaultValue="0" dataType="Text" parameterSource="Hidden_CarerId"/>
			</DSQLParameters>
			<DConditions>
				<TableParameter id="298" conditionType="Parameter" useIsNull="False" field="CARER_ID" dataType="Float" parameterType="URL" parameterSource="CARER_ID" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
			</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<Record id="103" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_CARER_CONTACT4" dataSource="STUDENT_CARER_CONTACT" errorSummator="Error" wizardCaption="Add/Edit STUDENT CARER CONTACT " wizardFormMethod="post" PathID="STUDENT_CARER_CONTACT4" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" returnPage="Student_Carer_maintainext.ccp" removeParameters="CARER_ID;carertype" customInsertType="Procedure" customInsert="USP_Student_CARER_CONTACT_ADD_UPDATE;1" customUpdateType="Procedure" customUpdate="USP_Student_CARER_CONTACT_ADD_UPDATE;1" parameterTypeListName="ParameterTypeList" activeCollection="ISPParameters">
			<Components>
				<Button id="104" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_CARER_CONTACT4Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="105" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_CARER_CONTACT4Button_Update">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="201" message="NOTE: This will update this Supervisors details for ALL Students they are linked to, not only for this student."/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="106" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="STUDENT_CARER_CONTACT4Button_Delete">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="107" message="Delete record?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="108" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_CARER_CONTACT4Button_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="110" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="TITLE" fieldSource="TITLE" required="False" caption="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4TITLE" sourceType="ListOfValues" dataSource="MR;Mr;MRS;Mrs;Miss;Miss;Ms;Ms;Dr;Doctor">
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
				<TextBox id="111" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4SURNAME" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
					</Features>
				</TextBox>
				<TextBox id="112" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="113" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WORK_PHONE" fieldSource="WORK_PHONE" required="False" caption="WORK PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4WORK_PHONE" sourceType="Table" html="True">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="134" name="WORK_PHONE" regExp="(^0[2|3|7|8]{1}[\s\-]{0,1}[0-9]{4}[\s\-]{0,1}[0-9]{4}$)|(^04\d{2,3}[\s\-]{0,1}\d{3}[\s\-]{0,1}\d{3}$)" errorMessage="WORK Phone Number must be an Australian number, including Area Code, with numbers, spaces, or hyphens only. eg: 03 8480 5123 or 03-8480-5123 or 0412 345 678." eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
				</TextBox>
				<TextBox id="114" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MOBILE" fieldSource="MOBILE" required="False" caption="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4MOBILE">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="135" name="MOBILE" regExp="(^04\d{2,3}[\s\-]{0,1}\d{3}[\s\-]{0,1}\d{3}$)" errorMessage="MOBILE Phone Number must be an Australian number, including Area Code, with numbers, spaces, or hyphens only. eg: 03 8480 5123 or 03-8480-5123 or 0412 345 678."/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="115" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL" fieldSource="EMAIL" required="False" caption="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4EMAIL">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="539" regExp="^[\w\.\+-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$" errorMessage="The Supervisor Email Address is not a valid Email Address eg: bob.supervisor@school.edu.au"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="116" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="117" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="186" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT4Hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="282" fieldSourceType="DBColumn" dataType="Integer" name="Hidden_NewCarerID" PathID="STUDENT_CARER_CONTACT4Hidden_NewCarerID" visible="Yes" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="376" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="SUPERVISOR_POSITION" wizardEmptyCaption="Select Value" PathID="STUDENT_CARER_CONTACT4SUPERVISOR_POSITION" fieldSource="SUPERVISOR_POSITION" caption="Supervisor Position" dataSource="Year Level Coordinator;Year Level Coordinator;Sub School Leader;Sub School Leader;Principal;Principal;Assistant Principal;Assistant Principal;Librarian;Librarian;Teacher;Teacher;Admin staff;Admin staff;Other;Other - enter below">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<TextBox id="377" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUPERVISOR_POSITION_OTHER" PathID="STUDENT_CARER_CONTACT4SUPERVISOR_POSITION_OTHER" fieldSource="SUPERVISOR_POSITION_OTHER" caption="School Supervisor (Other)" required="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="118" fieldSourceType="DBColumn" dataType="Text" name="RELATIONSHIP" fieldSource="RELATIONSHIP" required="True" caption="Supervisor Type" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT4RELATIONSHIP" defaultValue="&quot;SS&quot;" visible="Yes" sourceType="ListOfValues" dataSource="SS;School Supervisor;XS;Sports Supervisor;XA;Agency Supervisor">
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
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="127" action="Hide" conditionType="Parameter" dataType="Text" componentName="STUDENT_CARER_CONTACT4" condition="NotEqual" name1="carertype" sourceType1="URL" name2="&quot;S&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
				<Event name="OnLoad" type="Client">
					<Actions>
						<Action actionName="Set Focus" actionCategory="General" id="234" name="SURNAME"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="290" name="Hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="379" conditionType="Parameter" useIsNull="False" dataType="Float" field="CARER_ID" logicOperator="And" orderNumber="1" parameterSource="CARER_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="378" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_CARER_CONTACT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="380" fieldName="*"/>
			</Fields>
			<ISPParameters>
				<SPParameter id="Key235" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key236" parameterName="@Contact_ID" parameterSource="CARER_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18" defaultValue="0"/>
				<SPParameter id="Key237" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key238" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key239" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key240" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key241" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key242" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18" defaultValue="&quot;SS&quot;"/>
				<SPParameter id="Key243" parameterName="@Home_Phone" parameterSource="&quot;&quot;" dataType="VarChar" parameterType="Expression" dataSize="20" direction="Input" scale="0" precision="18" defaultValue="&quot;&quot;"/>
				<SPParameter id="Key244" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key245" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key246" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key247" parameterName="@Last_Altered_By" parameterSource="Hidden_LAST_ALTERED_BY" dataType="VarChar" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key386" dataType="VarChar" parameterType="Control" dataSize="50" direction="Input" parameterName="@SupervisorPosition" scale="0" precision="0" parameterSource="SUPERVISOR_POSITION"/>
				<SPParameter id="Key387" dataType="VarChar" parameterType="Control" dataSize="50" direction="Input" parameterName="@SupervisorPositionOther" scale="0" precision="0" parameterSource="SUPERVISOR_POSITION_OTHER"/>
				<SPParameter id="Key291" dataType="Int" parameterType="Control" dataSize="0" direction="Input" parameterName="@NewCarerID" scale="0" precision="0" parameterSource="Hidden_NewCarerID" defaultValue="0"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="218" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="219" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="220" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="221" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="222" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="223" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="224" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="225" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key235" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key236" parameterName="@Contact_ID" parameterSource="CARER_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18" defaultValue="0"/>
				<SPParameter id="Key237" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key238" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key239" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key240" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key241" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key242" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18" defaultValue="&quot;SS&quot;"/>
				<SPParameter id="Key248" dataType="VarChar" parameterType="Expression" defaultValue="&quot;&quot;" dataSize="20" direction="Input" parameterName="@Home_Phone" scale="0" precision="18" parameterSource="&quot;&quot;"/>
				<SPParameter id="Key244" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key245" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key246" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key247" parameterName="@Last_Altered_By" parameterSource="Hidden_LAST_ALTERED_BY" dataType="VarChar" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key386" dataType="VarChar" parameterType="Control" dataSize="50" direction="Input" parameterName="@SupervisorPosition" scale="0" precision="0" parameterSource="SUPERVISOR_POSITION"/>
				<SPParameter id="Key387" dataType="VarChar" parameterType="Control" dataSize="50" direction="Input" parameterName="@SupervisorPositionOther" scale="0" precision="0" parameterSource="SUPERVISOR_POSITION_OTHER"/>
				<SPParameter id="Key291" dataType="Int" parameterType="Control" defaultValue="0" dataSize="0" direction="Input" parameterName="@NewCarerID" scale="0" precision="0" parameterSource="Hidden_NewCarerID"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="226" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="227" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="228" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="229" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="230" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="231" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="232" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="233" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="381" dataType="Float" fieldName="CARER_ID" tableName="STUDENT_CARER_CONTACT"/>
			</PKFields>
		</Record>
		<Record id="196" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="ListSchoolSupervisors" actionPage="Student_Carer_maintainext" errorSummator="Error" wizardFormMethod="post" PathID="ListSchoolSupervisors" connection="connDECVPRODSQL2005" dataSource="STUDENT_ENROLMENT" activeCollection="TableParameters" removeParameters="CARER_ID;carertype" returnPage="Student_Carer_maintainext.ccp">
			<Components>
				<RadioButton id="197" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="carer_id_SS" PathID="ListSchoolSupervisorscarer_id_SS" sourceType="SQL" html="True" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="/*April-2018|EA| Altered to add HOME school check as well esp. for Shared enrolments  
Aug-2018 use span to layout better and add Portal login
Oct-2018 add organistion_school_id selection
Dec-2018 fix Organisations returning 0 and getting too many results */
SELECT CARER_ID, '&lt;span class=&quot;radioLabel&quot;&gt;&lt;span class=&quot;wide&quot;&gt;'+ (isnull(TITLE,'') + ' ' + FIRST_NAME + ' ' + SURNAME + '&lt;/span&gt;&lt;span&gt;' +isnull(SUPERVISOR_POSITION,'-')+'&lt;/span&gt;&lt;span&gt;Ph: ' +isnull(WORK_PHONE,'none') + '&lt;/span&gt;&lt;span&gt;Mob: ' +isnull(MOBILE,'none') + '&lt;/span&gt;&lt;span class=&quot;wide&quot;&gt;Email: ' +isnull(EMAIL,'none')+'&lt;/span&gt;&lt;span&gt;Portal Login: '+isnull(convert(varchar(11), PORTAL_LAST_LOGIN_DATE, 113),'never')+'&lt;/span&gt;&lt;/span&gt;') as displaytext
FROM STUDENT_CARER_CONTACT WHERE ( RELATIONSHIP in ('SS','XA','XS','XB') ) and CARER_ID in (SELECT distinct CARER_ID_SCHOOL_SUPERVISOR FROM [viewMaintainSearchRequest_Schools] where CARER_ID_SCHOOL_SUPERVISOR is not null
and (ATTENDING_SCHOOL_ID = (select distinct top 1 ATTENDING_SCHOOL_ID from [viewMaintainSearchRequest_Schools] where ATTENDING_SCHOOL_ID &lt;&gt; '16261.00' and STUDENT_ID =  {STUDENT_ID})
or HOME_SCHOOL_ID = (select distinct top 1 HOME_SCHOOL_ID from [viewMaintainSearchRequest_Schools] where HOME_SCHOOL_ID &lt;&gt; '16261.00' and STUDENT_ID = {STUDENT_ID} )
or ORGANISATION_SCHOOL_ID = (select distinct top 1 ORGANISATION_SCHOOL_ID from [viewMaintainSearchRequest_Schools] where ORGANISATION_SCHOOL_ID is not null and ORGANISATION_SCHOOL_ID &lt;&gt; '0' and STUDENT_ID = {STUDENT_ID} )
))
union
SELECT 0, '&lt;span class=&quot;radioLabel&quot;&gt;&lt;span class=&quot;fullwidth&quot;&gt;None - remove Supervisor from this Student&lt;/span&gt;&lt;/span&gt;'
" required="False" boundColumn="CARER_ID" textColumn="displaytext" fieldSource="CARER_ID_SCHOOL_SUPERVISOR" caption="School Supervisor">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="238"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="570" dataType="Text" designDefaultValue="91670" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
					</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</RadioButton>
				<Button id="199" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" PathID="ListSchoolSupervisorsButton_Update" operation="Update" wizardCaption="Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="237" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Cancel" PathID="ListSchoolSupervisorsButton_Cancel" operation="Cancel" returnPage="Student_Carer_maintainext.ccp" removeParameters="carertype;CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="207" action="Hide" conditionType="Parameter" dataType="Text" componentName="ListSchoolSupervisors" condition="NotEqual" name1="carertype" sourceType1="URL" name2="&quot;S&quot;" sourceType2="Expression"/>
						<Action actionName="Custom Code" actionCategory="General" id="202"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="217" name="carer_id_SS" errorMessage="Please select a School Supervisor from the list below, then click [Use Selected Supervisor]."/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="204" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="205" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="569" tableName="STUDENT_ENROLMENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="206" tableName="STUDENT_ENROLMENT" fieldName="CARER_ID_SCHOOL_SUPERVISOR"/>
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
		<IncludePage id="281" name="StudentNamePlate" PathID="StudentNamePlate" page="StudentNamePlate.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Panel id="397" visible="Dynamic" generateDiv="False" name="Panel1" PathID="Panel1" features="(assigned)">
			<Components>
				<Grid id="398" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="STUDENT_CARER_CONTACT5" connection="connDECVPRODSQL2005" dataSource="STUDENT_CARER_CONTACT" pageSizeLimit="50" pageSize="False" wizardCaption="List of Carers" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Carers found! Try changing the Search terms" wizardGridPagingType="Simple" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="GridRecord" wizardGridRecordLinkFieldType="custom" wizardGridRecordLinkField="Link Carer" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="Panel1STUDENT_CARER_CONTACT5" composition="10" isParent="True" useJqueryFeatures="True">
					<Components>
						<Sorter id="399" visible="True" name="Sorter_CARER_ID" column="CARER_ID" wizardCaption="CARER ID" wizardSortingType="SimpleDir" wizardControl="CARER_ID" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_CARER_ID">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="400" visible="True" name="Sorter_TITLE" column="TITLE" wizardCaption="TITLE" wizardSortingType="SimpleDir" wizardControl="TITLE" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_TITLE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="401" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_SURNAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="402" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_FIRST_NAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="403" visible="True" name="Sorter_HOME_PHONE" column="HOME_PHONE" wizardCaption="HOME PHONE" wizardSortingType="SimpleDir" wizardControl="HOME_PHONE" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_HOME_PHONE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="404" visible="True" name="Sorter_MOBILE" column="MOBILE" wizardCaption="MOBILE" wizardSortingType="SimpleDir" wizardControl="MOBILE" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_MOBILE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="405" visible="True" name="Sorter_EMAIL" column="EMAIL" wizardCaption="EMAIL" wizardSortingType="SimpleDir" wizardControl="EMAIL" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_EMAIL">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Sorter id="406" visible="True" name="Sorter_PORTAL_LAST_LOGIN_DATE" column="PORTAL_LAST_LOGIN_DATE" wizardCaption="PORTAL LAST LOGIN DATE" wizardSortingType="SimpleDir" wizardControl="PORTAL_LAST_LOGIN_DATE" wizardAddNbsp="False" PathID="Panel1STUDENT_CARER_CONTACT5Sorter_PORTAL_LAST_LOGIN_DATE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Sorter>
						<Link id="407" visible="Yes" fieldSourceType="CodeExpression" html="False" hrefType="Page" preserveParameters="None" name="Detail" wizardCaption="Detail" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" dataType="Text" hrefSource="Student_Carer_maintainext.ccp" wizardThemeItem="GridA" PathID="Panel1STUDENT_CARER_CONTACT5Detail" urlType="Relative" linkProperties="{'textSource':'Link Carer','textSourceDB':'','hrefSource':'Student_Carer_maintainext.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'CARER_ID','parameterName':'linkCarerID'},'1':{'sourceType':'DataField','parameterSource':'CARER_ID','parameterName':'linkCarerID'},'2':{'sourceType':'URL','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID'},'3':{'sourceType':'URL','parameterSource':'ENROLMENT_YEAR','parameterName':'ENROLMENT_YEAR'},'length':4,'objectType':'linkParameters'}}"><Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Hide-Show Component" actionCategory="General" id="567" action="Hide" conditionType="Parameter" dataType="Text" componentName="Detail" sourceType1="SpecialValue" name1="RELATIONSHIP" condition="Equal" sourceType2="Expression" name2="&quot;SS&quot;"/>
										<Action actionName="Custom Code" actionCategory="General" id="568"/>
									</Actions>
								</Event>
							</Events>
							<LinkParameters>
								<LinkParameter id="408" sourceType="DataField" format="yyyy-mm-dd" name="linkCarerID" source="CARER_ID"/>
								<LinkParameter id="543" sourceType="URL" name="STUDENT_ID" source="STUDENT_ID"/>
								<LinkParameter id="544" sourceType="URL" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
							</LinkParameters>
							<Attributes/>
							<Features/>
						</Link>
						<Label id="409" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="CARER_ID" fieldSource="CARER_ID" wizardCaption="CARER ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5CARER_ID">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="410" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5TITLE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="411" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5SURNAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="412" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5FIRST_NAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="413" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="HOME_PHONE" fieldSource="HOME_PHONE" wizardCaption="HOME PHONE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5HOME_PHONE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="414" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5MOBILE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="415" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5EMAIL">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="416" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="PORTAL_LAST_LOGIN_DATE" fieldSource="PORTAL_LAST_LOGIN_DATE" wizardCaption="PORTAL LAST LOGIN DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5PORTAL_LAST_LOGIN_DATE" format="dd/mm/yyyy h:nn AM/PM">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Navigator id="417" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
						<Label id="418" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Panel1STUDENT_CARER_CONTACT5WORK_PHONE">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="566" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="RELATIONSHIP" PathID="Panel1STUDENT_CARER_CONTACT5RELATIONSHIP" fieldSource="RELATIONSHIP">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="536" action="Hide" conditionType="Parameter" dataType="Text" condition="NotEqual" sourceType1="URL" name1="linkCarerID" name2="&quot;&quot;" sourceType2="Expression"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="419" conditionType="Parameter" useIsNull="False" field="SURNAME" parameterSource="s_SURNAME" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="1" searchFormParameter="True"/>
						<TableParameter id="420" conditionType="Parameter" useIsNull="False" field="FIRST_NAME" parameterSource="s_FIRST_NAME" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="2" searchFormParameter="True"/>
						<TableParameter id="421" conditionType="Parameter" useIsNull="False" field="EMAIL" parameterSource="s_EMAIL" dataType="Text" logicOperator="And" searchConditionType="Contains" parameterType="URL" orderNumber="3" searchFormParameter="True"/>
					</TableParameters>
					<JoinTables>
						<JoinTable id="565" tableName="STUDENT_CARER_CONTACT"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="423" tableName="STUDENT_CARER_CONTACT" fieldName="CARER_ID"/>
						<Field id="424" tableName="STUDENT_CARER_CONTACT" fieldName="TITLE"/>
						<Field id="425" tableName="STUDENT_CARER_CONTACT" fieldName="SURNAME"/>
						<Field id="426" tableName="STUDENT_CARER_CONTACT" fieldName="FIRST_NAME"/>
						<Field id="427" tableName="STUDENT_CARER_CONTACT" fieldName="RELATIONSHIP"/>
						<Field id="428" tableName="STUDENT_CARER_CONTACT" fieldName="HOME_PHONE"/>
						<Field id="429" tableName="STUDENT_CARER_CONTACT" fieldName="WORK_PHONE"/>
						<Field id="430" tableName="STUDENT_CARER_CONTACT" fieldName="MOBILE"/>
						<Field id="431" tableName="STUDENT_CARER_CONTACT" fieldName="EMAIL"/>
						<Field id="432" tableName="STUDENT_CARER_CONTACT" fieldName="PORTAL_LAST_LOGIN_DATE"/>
					</Fields>
					<PKFields>
						<PKField id="433" dataType="Float" fieldName="CARER_ID" tableName="STUDENT_CARER_CONTACT"/>
					</PKFields>
					<SPParameters/>
					<SQLParameters/>
					<SecurityGroups/>
					<Attributes/>
					<Features/>
				</Grid>
				<Record id="434" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_CARER_CONTACTSearch" searchIds="438" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="GridRecord" returnPage="Student_Carer_maintainext.ccp" PathID="Panel1STUDENT_CARER_CONTACTSearch" composition="10">
					<Components>
						<Link id="435" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Student_Carer_maintainext.ccp" removeParameters="s_SURNAME;s_FIRST_NAME;s_EMAIL" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="Panel1STUDENT_CARER_CONTACTSearchClearParameters">
							<Components/>
							<Events/>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</Link>
						<Button id="436" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="Panel1STUDENT_CARER_CONTACTSearchButton_DoSearch">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Button>
						<TextBox id="437" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardCaption="SURNAME" caption="SURNAME" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="Panel1STUDENT_CARER_CONTACTSearchs_SURNAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="438" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_FIRST_NAME" fieldSource="FIRST_NAME" wizardIsPassword="False" wizardCaption="FIRST NAME" caption="FIRST NAME" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="Panel1STUDENT_CARER_CONTACTSearchs_FIRST_NAME">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
						<TextBox id="439" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_EMAIL" fieldSource="EMAIL" wizardIsPassword="False" wizardCaption="EMAIL" caption="EMAIL" required="False" unique="False" wizardSize="50" wizardMaxLength="250" PathID="Panel1STUDENT_CARER_CONTACTSearchs_EMAIL">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</TextBox>
					</Components>
					<Events>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
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
				</Record>
				<Panel id="440" visible="True" generateDiv="True" name="Panel2" PathID="Panel1Panel2" features="(assigned)">
					<Components>
						<Record id="441" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_CARER_CONTACT6" connection="connDECVPRODSQL2005" dataSource="STUDENT_CARER_CONTACT" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="CARER_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit STUDENT CARER CONTACT " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="GridRecord" changedCaptionRecord="False" recordDirection="Vertical" templatePageRecord="C:/Users/decv_development/Documents/CodeCharge Studio 5 Projects/svn_STUDENT_ADMIN_CCS5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="Panel1Panel2STUDENT_CARER_CONTACT6" composition="10" activeCollection="DSQLParameters" activeTableType="customUpdate" customDeleteType="SQL" parameterTypeListName="ParameterTypeList" customDelete="UPDATE STUDENT 
SET CARER_ID_PARENT_{rCarerAB} = {CARER_ID}
WHERE STUDENT_ID = {STUDENT_ID}" customUpdateType="Table" customUpdate="STUDENT_CARER_CONTACT" removeParameters="linkCarerID;s_EMAIL;s_SURNAME;s_FIRST_NAME;STUDENT_CARER_CONTACT5PageSize;CARER_ID;carertype" returnPage="Student_Carer_maintainext.ccp" customInsertType="SQL" customInsert="UPDATE STUDENT_ENROLMENT
SET CARER_ID_SCHOOL_SUPERVISOR = {CARER_ID}
WHERE STUDENT_ID = {STUDENT_ID}
AND ENROLMENT_YEAR = {ENROLMENT_YEAR}">
							<Components>
								<Button id="443" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="Panel1Panel2STUDENT_CARER_CONTACT6Button_Update">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Button id="445" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="Panel1Panel2STUDENT_CARER_CONTACT6Button_Cancel" removeParameters="linkCarerID">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<Label id="446" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="FIRST NAME" wizardAddNbsp="True" PathID="Panel1Panel2STUDENT_CARER_CONTACT6FIRST_NAME">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Label>
								<TextBox id="447" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL" fieldSource="EMAIL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="EMAIL" caption="EMAIL" required="True" unique="False" wizardSize="50" wizardMaxLength="250" PathID="Panel1Panel2STUDENT_CARER_CONTACT6EMAIL">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</TextBox>
								<Label id="448" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SURNAME" wizardAddNbsp="True" PathID="Panel1Panel2STUDENT_CARER_CONTACT6SURNAME">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Label>
								<Button id="444" urlType="Relative" enableValidation="True" isDefault="False" name="Button_LinkParent" operation="Delete" wizardCaption="Delete" PathID="Panel1Panel2STUDENT_CARER_CONTACT6Button_LinkParent">
									<Components/>
									<Events/>
									<Attributes/>
									<Features/>
								</Button>
								<RadioButton id="563" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="radioCarerType" PathID="Panel1Panel2STUDENT_CARER_CONTACT6radioCarerType" dataSource="A;Primary / Carer A;B;Carer B" defaultValue="&quot;A&quot;" required="True" caption="Link to Carer">
									<Components/>
									<Events/>
									<TableParameters/>
									<SPParameters/>
									<SQLParameters/>
									<JoinTables/>
									<JoinLinks/>
									<Fields/>
									<PKFields/>
									<Attributes/>
									<Features/>
								</RadioButton>
							</Components>
							<Events>
								<Event name="AfterUpdate" type="Server">
									<Actions>
										<Action actionName="Save Variable Value" actionCategory="General" id="533" name="&quot;Carer Email has been updated&quot;" sourceType="Session" sourceName="notifymessage"/>
									</Actions>
								</Event>
								<Event name="AfterDelete" type="Server">
									<Actions>
										<Action actionName="Save Variable Value" actionCategory="General" id="534" name="&quot;Carer Linked to Student&quot;" sourceType="Session" sourceName="notifymessage"/>
									</Actions>
								</Event>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Hide-Show Component" actionCategory="General" id="537" action="Hide" conditionType="Parameter" dataType="Text" condition="Equal" name1="linkCarerID" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
									</Actions>
								</Event>
							</Events>
							<TableParameters>
								<TableParameter id="526" conditionType="Parameter" useIsNull="False" dataType="Float" defaultValue="0" field="CARER_ID" logicOperator="And" orderNumber="1" parameterSource="linkCarerID" parameterType="URL" searchConditionType="Equal"/>
							</TableParameters>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables>
								<JoinTable id="525" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_CARER_CONTACT"/>
							</JoinTables>
							<JoinLinks/>
							<Fields>
								<Field id="527" fieldName="CARER_ID" tableName="STUDENT_CARER_CONTACT"/>
								<Field id="528" fieldName="SURNAME" tableName="STUDENT_CARER_CONTACT"/>
								<Field id="529" fieldName="FIRST_NAME" tableName="STUDENT_CARER_CONTACT"/>
								<Field id="530" fieldName="RELATIONSHIP" tableName="STUDENT_CARER_CONTACT"/>
								<Field id="531" fieldName="EMAIL" tableName="STUDENT_CARER_CONTACT"/>
							</Fields>
							<PKFields>
								<PKField id="532" dataType="Float" fieldName="CARER_ID" tableName="STUDENT_CARER_CONTACT"/>
							</PKFields>
							<ISPParameters/>
							<ISQLParameters>
								<SQLParameter id="452" variable="CARER_ID" dataType="Integer" parameterType="DataSourceColumn" parameterSource="CARER_ID"/>
								<SQLParameter id="541" variable="STUDENT_ID" parameterType="URL" defaultValue="0" dataType="Integer" parameterSource="STUDENT_ID"/>
								<SQLParameter id="542" variable="ENROLMENT_YEAR" parameterType="URL" defaultValue="DateTime.Now.Year" dataType="Integer" parameterSource="ENROLMENT_YEAR"/>
							</ISQLParameters>
							<IFormElements>
								<CustomParameter id="453" field="CARER_ID_PARENT_A" dataType="Integer" parameterType="DataSourceColumn" parameterSource="CARER_ID" omitIfEmpty="True"/>
							</IFormElements>
							<USPParameters/>
							<USQLParameters/>
							<UConditions>
								<TableParameter id="454" conditionType="Parameter" useIsNull="False" field="CARER_ID" dataType="Float" parameterType="URL" searchConditionType="Equal" logicOperator="And" orderNumber="1" defaultValue="0" parameterSource="linkCarerID"/>
							</UConditions>
							<UFormElements>
								<CustomParameter id="455" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL" omitIfEmpty="True"/>
							</UFormElements>
							<DSPParameters/>
							<DSQLParameters>
								<SQLParameter id="456" variable="CARER_ID" parameterType="URL" dataType="Integer" parameterSource="linkCarerID" defaultValue="0"/>
								<SQLParameter id="457" variable="STUDENT_ID" parameterType="URL" defaultValue="0" dataType="Integer" parameterSource="STUDENT_ID"/>
								<SQLParameter id="564" variable="rCarerAB" parameterType="Control" defaultValue="&quot;A&quot;" dataType="Text" parameterSource="radioCarerType"/>
							</DSQLParameters>
							<DConditions>
								<TableParameter id="458" conditionType="Parameter" useIsNull="False" field="CARER_ID" dataType="Float" parameterType="URL" parameterSource="CARER_ID" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
							</DConditions>
							<SecurityGroups/>
							<Attributes/>
							<Features/>
						</Record>
					</Components>
					<Events/>
					<Attributes/>
					<Features>
						<JDialog id="459" modal="True" visible="False" enabled="True" name="JDialog1" category="jQuery" title="Add/Edit STUDENT CARER CONTACT " show="Panel_CarerSearchPanel1condition_for_show.ontrue;" hide="Panel_CarerSearchPanel1condition_for_hide.ontrue;">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<ControlPoints>
								<ControlPoint id="460" name="Panel_CarerSearchPanel1condition_for_show.ontrue" relProperty="show">
									<Items>
										<ControlPointItem id="461" name="Student_Carer_maintainext" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="462" name="Panel_CarerSearch" ccpId="393" type="Panel" isFeature="False" PathID="Panel_CarerSearch"/>
										<ControlPointItem id="463" name="Panel1" ccpId="397" type="Panel" isFeature="False" PathID="Panel_CarerSearchPanel1"/>
										<ControlPointItem id="464" name="condition_for_show" ccpId="456" type="Condition" isFeature="True" PathID="Panel_CarerSearchPanel1condition_for_show"/>
									</Items>
								</ControlPoint>
								<ControlPoint id="465" name="Panel_CarerSearchPanel1condition_for_hide.ontrue" relProperty="hide">
									<Items>
										<ControlPointItem id="466" name="Student_Carer_maintainext" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="467" name="Panel_CarerSearch" ccpId="393" type="Panel" isFeature="False" PathID="Panel_CarerSearch"/>
										<ControlPointItem id="468" name="Panel1" ccpId="397" type="Panel" isFeature="False" PathID="Panel_CarerSearchPanel1"/>
										<ControlPointItem id="469" name="condition_for_hide" ccpId="462" type="Condition" isFeature="True" PathID="Panel_CarerSearchPanel1condition_for_hide"/>
									</Items>
								</ControlPoint>
							</ControlPoints>
							<Features/>
						</JDialog>
					</Features>
				</Panel>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="545" action="Hide" conditionType="Parameter" dataType="Text" condition="Equal" sourceType2="Expression" name2="&quot;S&quot;" name1="carertype" sourceType1="URL" componentName="Panel1"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features>
				<JUpdatePanel id="470" enabled="True" childrenAsTriggers="True" name="JUpdatePanel1" category="jQuery" featureNameChanged="No" ccsIdsOnly="False">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</JUpdatePanel>
				<Condition id="471" name="Condition1" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;link&quot;)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;" ccsIdsOnly="False" featureNameChanged="No">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</Condition>
				<Condition id="477" name="Condition2" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] == &quot;submit&quot; &amp;&amp; $(&quot;#ErrorBlock&quot;).length == 0)" sourceType2="Expression" start="Panel1UpdatePanel1.onafterrefresh;" featureNameChanged="No">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</Condition>
				<Condition id="483" name="Condition3" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;link&quot;)" sourceType2="Expression" start="Panel1STUDENT_CARER_CONTACT5STUDENT_CARER_CONTACT5_Insert.onclick;Panel1STUDENT_CARER_CONTACT5Detail.onclick;" featureNameChanged="No">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</Condition>
				<Condition id="496" name="Condition4" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;submit&quot;)" sourceType2="Expression" start="Panel1Panel2STUDENT_CARER_CONTACT6.onsubmit;" featureNameChanged="No">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</Condition>
				<Condition id="503" name="Condition5" category="Ajax" condition="==" sourceType1="Expression" name1="true" name2="(params[&quot;click&quot;] = &quot;&quot;)" sourceType2="Expression" start="Panel1Panel2DialogPanel1.onshow;SearchPanel1Panel2DialogPanel1.onhide;" featureNameChanged="No">
					<Components/>
					<Events/>
					<ControlPoints/>
					<Features/>
				</Condition>
			</Features>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Carer_maintainext.aspx" forShow="True" url="Student_Carer_maintainext.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Carer_maintainext.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Carer_maintainextDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="76" form="STUDENT_CARER_CONTACT3" name="SURNAME"/>
			</Actions>
		</Event>
	</Events>
</Page>
