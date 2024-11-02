<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<Link id="43" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="45" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link_BacktoPastoralList" PathID="Link_BacktoPastoralList" hrefSource="PastoralTeacher_StudentList.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Panel id="46" visible="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" wizardTheme="Blueprint" wizardThemeVersion="3.0">
			<Components>
				<IncludePage id="47" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp" wizardTheme="Blueprint" wizardThemeVersion="3.0">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="48"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
		<Link id="49" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_Menu" hrefSource="Menu.ccp" wizardUseTemplateBlock="False" PathID="link_Menu">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_SearchRequest" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False" PathID="Link_SearchRequest">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_Assignments" hrefSource="AssignmentSubmissionList.ccp" wizardUseTemplateBlock="False" PathID="link_Assignments">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link10" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="Link10" hrefSource="Send_SMS_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link6" PathID="Link6" hrefSource="Student_Future_Intentions.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link5" PathID="Link5" hrefSource="Student_Comments_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="AssignmentSubmissionList.aspx" forShow="True" url="AssignmentSubmissionListLMS.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="AssignmentSubmissionList.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="AssignmentSubmissionListDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
