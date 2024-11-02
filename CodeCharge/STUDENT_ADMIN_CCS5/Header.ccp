<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" wizardTheme="Blueprint" wizardThemeVersion="3.0" isService="False" pasteActions="pasteActions" PathID="Header">
	<Components>
		<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="LinkMenu" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" hrefSource="Menu.ccp" wizardUseTemplateBlock="False" PathID="HeaderLinkMenu">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<ImageLink id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ImageLink1" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" hrefSource="mailto:pcsupport@vsv.vic.edu.au" PathID="HeaderImageLink1">
			<Components/>
			<Events/>
			<LinkParameters>
				<LinkParameter id="9" sourceType="Expression" format="yyyy-mm-dd" name="subject" source="&quot;New_SQLDB_Query&quot;"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</ImageLink>
		<ImageLink id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" preserveParameters="None" name="ImageLink2" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" hrefSource="http://intranet/REPORTS/Pages/Folder.aspx" PathID="HeaderImageLink2">
			<Components/>
			<Events/>
			<LinkParameters>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</ImageLink>
		<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblnotifymessage" PathID="Headerlblnotifymessage">
			<Components/>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="12" name="lblnotifymessage" sourceType="Session" sourceName="notifymessage" eventType="Server"/>
						<Action actionName="Save Variable Value" actionCategory="General" id="13" name="&quot;&quot;" sourceType="Session" sourceName="notifymessage" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Label>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Header.ascx" forShow="True" url="Header.ascx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Header.ascx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="HeaderDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
