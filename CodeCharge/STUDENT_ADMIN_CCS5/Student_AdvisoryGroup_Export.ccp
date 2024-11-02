<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" pasteActions="pasteActions" needGeneration="0" wizardSortingType="SimpleDir">
	<Components>
		<Grid id="25" secured="True" sourceType="Table" returnValueType="Number" defaultPageSize="100" connection="connDECVPRODSQL2005" dataSource="view_Class_Contact_List_04022011" name="Students_Grid" pageSizeLimit="150" wizardCaption="List of View Class List " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Student found" activeCollection="TableParameters" wizardAllowSorting="True" pasteActions="pasteActions" pasteAsReplace="pasteAsReplace" PathID="Students_Grid">
			<Components>
				<Label id="48" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="49" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="50" wizardMaxLength="82" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_NAME" fieldSource="SCHOOL_NAME" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSCHOOL_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="84" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Absolute" preserveParameters="None" hrefSource="StudentSummary.ccp" PathID="Students_GridSTUDENT_ID">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="31" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="33" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Link id="120" fieldSourceType="DBColumn" dataType="Float" html="False" name="QuickContact" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="True" wizardAlign="right" wizardAddNbsp="True" visible="No" hrefType="Page" urlType="Absolute" preserveParameters="None" hrefSource="WinLogin/StudentContactQuickEntry.ccp" PathID="Students_GridQuickContact">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="121" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
					</LinkParameters>
				</Link>
				<Link id="123" fieldSourceType="DBColumn" dataType="Float" html="False" name="Contacts" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Absolute" preserveParameters="None" hrefSource="Student_Comments_maintain.ccp" PathID="Students_GridContacts">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="124" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="125" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Label id="127" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE1" PathID="Students_GridPHONE1" fieldSource="PHONE1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="128" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL1" PathID="Students_GridEMAIL1" fieldSource="EMAIL1" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" hrefSource="EMAIL1" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="130"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Link id="129" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL2" PathID="Students_GridEMAIL2" fieldSource="EMAIL2" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" wizardUseTemplateBlock="False" hrefSource="EMAIL2">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="131"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="133" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE2" PathID="Students_GridPHONE2" fieldSource="PHONE2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="134" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_ABBREV" PathID="Students_GridSUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="136" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" PathID="Students_GridSTAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="140" fieldSourceType="DBColumn" dataType="Text" html="True" name="label_ALERTS" PathID="Students_Gridlabel_ALERTS">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="141" name="intAlerts" type="Integer" initialValue="0" eventType="Server"/>
								<Action actionName="DLookup" actionCategory="Database" id="142" typeOfTarget="Variable" expression="&quot;count(student_id)&quot;" target="intAlerts" dataType="Integer" connection="connDECVPRODSQL2005" criteria="&quot;STUDENT_ID = &quot; &amp;  DataItem.STUDENT_ID.GetFormattedValue() &amp; &quot;&quot;" domain="&quot;[view_StudentSummary_Alerts]&quot;" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="143"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="144" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_SUPER_NAME" fieldSource="SCHOOL_SUPERVISOR_NAME" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSCHOOL_SUPER_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="145" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_SUPER_PHONE" fieldSource="SCHOOL_SUPERVISOR_PHONE" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSCHOOL_SUPER_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="146" fieldSourceType="DBColumn" dataType="Text" html="False" name="SCHOOL_SUPER_EMAIL" fieldSource="SCHOOL_SUPERVISOR_EMAIL" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridSCHOOL_SUPER_EMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="SCHOOL_SUPERVISOR_EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="147" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="149" fieldSourceType="DBColumn" dataType="Text" html="False" name="PARENT_NAME" fieldSource="PARENT_A_NAME" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridPARENT_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="150" fieldSourceType="DBColumn" dataType="Text" html="False" name="PARENT_MOBILE" fieldSource="PARENT_A_MOBILE" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridPARENT_MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="151" fieldSourceType="DBColumn" dataType="Text" html="False" name="PARENT_PHONE" fieldSource="PARENT_A_HOMEPHONE" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridPARENT_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="152" fieldSourceType="DBColumn" dataType="Text" html="False" name="PARENT_EMAIL" fieldSource="PARENT_A_EMAIL" wizardCaption="SCHOOL NAME" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Students_GridPARENT_EMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="GET" hrefSource="PARENT_A_EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="153"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="155" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="ENROLMENT_DATE" PathID="Students_GridENROLMENT_DATE" fieldSource="ENROLMENT_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="156" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAD" PathID="Students_GridLAD" fieldSource="LAd">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeExecuteSelect" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="138" name="showallflag" type="Text" initialValue="&quot;&quot;"/>
						<Action actionName="Retrieve Value for Variable" actionCategory="General" id="137" name="showallflag" sourceType="URL" sourceName="showall"/>
						<Action actionName="Custom Code" actionCategory="General" id="135"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="158" conditionType="Expression" useIsNull="False" dataType="Float" expression="ENROLMENT_YEAR =year(getdate())" field="ENROLMENT_YEAR" logicOperator="And" parameterSource="year(getdate())" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="159" conditionType="Expression" useIsNull="False" dataType="Integer" expression="SUBJECT_ID in (921,922,923,924)" field="SUBJECT_ID" logicOperator="And" parameterSource="List_Subject_id" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="160" conditionType="Parameter" useIsNull="False" dataType="Text" field="LAd" logicOperator="And" parameterSource="DBUtility.UserLogin.ToUpper" parameterType="Expression" searchConditionType="Equal"/>
</TableParameters>
			<JoinTables>
				<JoinTable id="157" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="view_Class_Contact_List_04022011"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="161" fieldName="*"/>
</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_AdvisoryGroup_Export.aspx" forShow="True" url="Student_AdvisoryGroup_Export.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_AdvisoryGroup_Export.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_AdvisoryGroup_ExportDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnInitializeView" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="116"/>
			</Actions>
		</Event>
	</Events>
</Page>
