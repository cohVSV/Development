<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="AssignmentReturns" actionPage="Despatch_AssignmentReturn" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" customInsertType="Procedure" parameterTypeListName="ParameterTypeList" customInsert="sp_upd_assignment_return;1" activeCollection="ISPParameters" dataSource="ASSIGNMENT_SUBMISSION" returnPage="Despatch_AssignmentReturn.ccp" PathID="AssignmentReturns">
			<Components>
				<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="staffid" required="True" caption="Staff ID" PathID="AssignmentReturnsstaffid">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="staffid" sourceType="Session" sourceName="sessSTAFFID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="studentid" required="True" caption="Student ID" PathID="AssignmentReturnsstudentid">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_popupStudentSearch" hrefSource="#" wizardUseTemplateBlock="False" PathID="AssignmentReturnslink_popupStudentSearch">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<TextBox id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="subjectid" caption="Subject ID" required="True" PathID="AssignmentReturnssubjectid">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Link id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_popupStudentSubjectSearch" hrefSource="#" wizardUseTemplateBlock="False" PathID="AssignmentReturnslink_popupStudentSubjectSearch">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="markerid" caption="Marker ID" required="True" PathID="AssignmentReturnsmarkerid">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="10" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblReceiptDate" defaultValue="now()" format="dd/mm/yy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="9" urlType="Relative" enableValidation="True" isDefault="True" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="AssignmentReturnsButton_Insert">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Save Control Value" actionCategory="General" id="19" sourceType="Session" sourceName="sessSTAFFID" name="staffid"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENrolmentYear" defaultValue="year(now())" PathID="AssignmentReturnsENrolmentYear">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Clear" PathID="AssignmentReturnsLink_Clear" wizardUseTemplateBlock="False" removeParameters="studentid;subjectid;markerid;" hrefSource="Despatch_AssignmentReturn.ccp">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="15"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="23"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key12" parameterName="@RETURN_VALUE" parameterSource="0" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10" defaultValue="0"/>
				<SPParameter id="Key13" parameterName="@pnStudentID" parameterSource="studentid" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key14" parameterName="@pnEnrolmentYear" parameterSource="ENrolmentYear" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18" designDefaultValue="2007"/>
				<SPParameter id="Key15" parameterName="@psiSubjectID" parameterSource="subjectid" dataType="SmallInt" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="5"/>
				<SPParameter id="Key16" parameterName="@psiAssignmentID" parameterSource="0" dataType="SmallInt" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="5"/>
				<SPParameter id="Key17" parameterName="@pcStaffID" parameterSource="markerid" dataType="Char" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="5"/>
			</ISPParameters>
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
		<CodeFile id="3" language="VB" name="Despatch_AssignmentReturn.aspx" forShow="True" url="Despatch_AssignmentReturn.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Despatch_AssignmentReturn.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Despatch_AssignmentReturnDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="13" form="AssignmentReturns" name="staffid"/>
			</Actions>
		</Event>
	</Events>
</Page>
