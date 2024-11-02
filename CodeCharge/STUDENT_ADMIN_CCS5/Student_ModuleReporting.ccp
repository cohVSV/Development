<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<Link id="2" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_Menu" hrefSource="Menu.ccp" wizardUseTemplateBlock="False" PathID="link_Menu">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_SearchRequest" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False" PathID="Link_SearchRequest">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_Assignments" hrefSource="AssignmentSubmissionList.ccp" wizardUseTemplateBlock="False" PathID="link_Assignments">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link10" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="Link10" hrefSource="Send_SMS_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link6" PathID="Link6" hrefSource="Student_Future_Intentions.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link5" PathID="Link5" hrefSource="Student_Comments_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Panel id="14" visible="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
			<Components>
				<IncludePage id="15" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="16"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
		<Link id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="22" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_BacktoPastoralList" PathID="Link_BacktoPastoralList" hrefSource="PastoralTeacher_StudentList.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Report id="23" secured="False" enablePrint="False" showMode="Web" sourceType="SQL" returnValueType="Number" linesPerWebPage="200" linesPerPhysicalPage="10" name="SCAFFOLD_MODULE_GRADE_SCA" connection="connDECVPRODSQL2005" dataSource="SELECT * 
FROM view_Student_ModuleReporting
WHERE SCAFFOLD_USER_student_student_id = '{STUDENT_ID}' " composition="7" isParent="True" pageSizeLimit="200" wizardCaption=" SCAFFOLD MODULE GRADE, SCAFFOLD USER, SCAFFOLD COURSE, SCAFFOLD USER Student " changedCaptionReport="False" wizardLayoutType="GroupAbove" wizardGridPaging="Simple" wizardHideDetail="False" wizardPercentForSums="False" wizardEnablePrintMode="False" wizardReportSeparator="False" wizardReportAddTotalRecords="False" wizardReportAddPageNumbers="False" wizardReportAddNbsp="False" wizardReportAddDateTime="False" wizardReportDateTimeAs="CurrentDate" wizardReportAddRowNumber="False" wizardReportRowNumberResetAt="Report" wizardUseSearch="True" wizardNoRecords="No Student Reporting found!" wizardUseInterVariables="False" wizardThemeApplyTo="Page" reportAddTemplatePanel="False">
			<Components>
				<Section id="45" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" wizardAllowSorting="True">
					<Components>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="46" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="48" visible="True" lines="1" name="SCAFFOLD_USER_student_id_Header">
					<Components>
						<ReportLabel id="57" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SCAFFOLD_USER_student_id" fieldSource="SCAFFOLD_USER_student_student_id" fieldTableSource="SCAFFOLD_USER_student" wizardCaption="SCAFFOLD USER Student Id" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCASCAFFOLD_USER_student_id_HeaderSCAFFOLD_USER_student_id">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="67" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SCAFFOLD_USER_student_firstname" fieldSource="SCAFFOLD_USER_student_firstname" fieldTableSource="SCAFFOLD_USER_student" wizardCaption="SCAFFOLD USER Student Firstname" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCASCAFFOLD_USER_student_id_HeaderSCAFFOLD_USER_student_firstname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="68" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SCAFFOLD_USER_student_lastname" fieldSource="SCAFFOLD_USER_student_lastname" fieldTableSource="SCAFFOLD_USER_student" wizardCaption="SCAFFOLD USER Student Lastname" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCASCAFFOLD_USER_student_id_HeaderSCAFFOLD_USER_student_lastname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="50" visible="True" lines="2" name="shortname_Header" wizardAllowSorting="True">
					<Components>
						<ReportLabel id="58" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="shortname" fieldSource="shortname" fieldTableSource="SCAFFOLD_COURSE" wizardCaption="Shortname" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCAshortname_Headershortname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="69" fieldSourceType="DBColumn" dataType="Text" html="True" hideDuplicates="False" resetAt="Report" name="fullname" fieldSource="fullname" fieldTableSource="SCAFFOLD_COURSE" wizardCaption="Fullname" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCAshortname_Headerfullname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="51" visible="True" lines="1" name="Detail">
					<Components>
						<Link id="61" fieldSourceType="DBColumn" dataType="Text" html="True" hideDuplicates="False" resetAt="Report" name="name" fieldSource="name" fieldTableSource="SCAFFOLD_MODULE_GRADE" wizardCaption="Name" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCADetailname" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="https://lms.decvonline.vic.edu.au/mod/assign/view.php" linkProperties="{'textSource':'','textSourceDB':'name','hrefSource':'https://lms.decvonline.vic.edu.au/mod/assign/view.php','hrefSourceDB':'','title':'open Scaffold Module Report page','target':'_blank','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'activityid','parameterName':'id'},'length':1,'objectType':'linkParameters'}}"><Components/>
							<Events/>
							<Attributes/>
							<Features/>
							<LinkParameters>
								<LinkParameter id="184" sourceType="DataField" name="id" source="activityid"/>
							</LinkParameters>
						</Link>
						<ReportLabel id="62" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="dategraded" fieldSource="dategraded" fieldTableSource="SCAFFOLD_MODULE_GRADE" wizardCaption="Dategraded" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCADetaildategraded" format="d/mm/yyyy h:nn AM/PM">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="63" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="str_long_grade" fieldSource="str_long_grade" fieldTableSource="SCAFFOLD_MODULE_GRADE" wizardCaption="Str Long Grade" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCADetailstr_long_grade" emptyValue="=Ungraded=">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="64" fieldSourceType="DBColumn" dataType="Text" html="True" hideDuplicates="False" resetAt="Report" name="str_feedback" fieldSource="str_feedback" fieldTableSource="SCAFFOLD_MODULE_GRADE" wizardCaption="Str Feedback" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCADetailstr_feedback">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="141"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="65" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="firstname" fieldSource="SCAFFOLD_USER_firstname" fieldTableSource="SCAFFOLD_USER_student" wizardCaption="Firstname" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCADetailfirstname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="66" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="lastname" fieldSource="SCAFFOLD_USER_lastname" fieldTableSource="SCAFFOLD_USER_student" wizardCaption="Lastname" wizardIsPassword="False" visible="Yes" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="SCAFFOLD_MODULE_GRADE_SCADetaillastname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="208" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="lblgradestyle" PathID="SCAFFOLD_MODULE_GRADE_SCADetaillblgradestyle" emptyValue="ungraded" fieldSource="str_long_grade">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="232" fieldSourceType="DBColumn" dataType="Text" html="True" hideDuplicates="False" resetAt="Report" name="essentialquestion" PathID="SCAFFOLD_MODULE_GRADE_SCADetailessentialquestion" fieldSource="QUESTION_TEXT">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="52" visible="True" lines="0" name="shortname_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="53" visible="True" lines="0" name="SCAFFOLD_USER_student_id_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="54" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter">
					<Components>
						<Panel id="55" visible="True" generateDiv="False" name="NoRecords" wizardNoRecords="No Student Reporting found!">
							<Components>
								<Link id="239" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="linkExternalReport" PathID="SCAFFOLD_MODULE_GRADE_SCAReport_FooterNoRecordslinkExternalReport" hrefSource="http://intranet/ReportServer?/Staff+Reports/Module+Reporting&amp;rs:Command=Render&amp;" wizardUseTemplateBlock="False" linkProperties="{&quot;textSource&quot;:&quot; click here &quot;,&quot;textSourceDB&quot;:&quot;&quot;,&quot;hrefSource&quot;:&quot;http://intranet/ReportServer?/Staff+Reports/Module+Reporting&amp;rs:Command=Render&amp;&quot;,&quot;hrefSourceDB&quot;:&quot;&quot;,&quot;title&quot;:&quot;open in new window&quot;,&quot;target&quot;:&quot;_blank&quot;,&quot;name&quot;:&quot;&quot;,&quot;linkParameters&quot;:{&quot;0&quot;:{&quot;sourceType&quot;:&quot;URL&quot;,&quot;parameterSource&quot;:&quot;STUDENT_ID&quot;,&quot;parameterName&quot;:&quot;StudentID&quot;},&quot;1&quot;:{&quot;sourceType&quot;:&quot;URL&quot;,&quot;parameterSource&quot;:&quot;STUDENT_ID&quot;,&quot;parameterName&quot;:&quot;StudentID&quot;},&quot;length&quot;:2,&quot;objectType&quot;:&quot;linkParameters&quot;}}">
									<Components/>
									<Events>
										<Event name="BeforeShow" type="Server">
											<Actions>
												<Action actionName="Custom Code" actionCategory="General" id="240"/>
											</Actions>
										</Event>
									</Events>
									<LinkParameters>
										<LinkParameter id="241" sourceType="URL" name="StudentID" source="STUDENT_ID"/>
									</LinkParameters>
									<Attributes/>
									<Features/>
								</Link>
							</Components>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="56" visible="True" lines="1" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True">
					<Components>
						<Navigator id="59" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Navigator>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
			</Fields>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
<SQLParameter id="243" dataType="Text" defaultValue="56794" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
</SQLParameters>
			<ReportGroups>
				<ReportGroup id="47" name="SCAFFOLD_USER_student_id" field="SCAFFOLD_USER_student_student_id" sqlField="view_Student_ModuleReporting.SCAFFOLD_USER_student_student_id" sortOrder="asc"/>
				<ReportGroup id="49" name="shortname" field="shortname" sqlField="view_Student_ModuleReporting.shortname" sortOrder="asc"/>
			</ReportGroups>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Report>
		<Link id="237" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="linkExternalReport" PathID="linkExternalReport" hrefSource="http://intranet/ReportServer?/Staff+Reports/Module+Reporting&amp;rs:Command=Render&amp;" wizardUseTemplateBlock="False" linkProperties="{'textSource':' click here ','textSourceDB':'','hrefSource':'http://intranet/ReportServer?/Staff+Reports/Module+Reporting&amp;rs:Command=Render&amp;','hrefSourceDB':'','title':'open in new window','target':'_blank','name':'','linkParameters':{'0':{'sourceType':'URL','parameterSource':'STUDENT_ID','parameterName':'StudentID'},'1':{'sourceType':'URL','parameterSource':'STUDENT_ID','parameterName':'StudentID'},'2':{'sourceType':'URL','parameterSource':'STUDENT_ID','parameterName':'StudentID'},'3':{'sourceType':'URL','parameterSource':'STUDENT_ID','parameterName':'StudentID'},'length':4,'objectType':'linkParameters'}}"><Components/>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="242"/>
					</Actions>
				</Event>
			</Events>
			<LinkParameters>
				<LinkParameter id="238" sourceType="URL" format="yyyy-mm-dd" name="StudentID" source="STUDENT_ID"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_ModuleReporting.aspx" forShow="True" url="Student_ModuleReporting.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_ModuleReporting.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_ModuleReportingDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
