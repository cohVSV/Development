<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="AssignmentReceipt" actionPage="Despatch_AssignmentReceipt" errorSummator="Error" wizardFormMethod="post" connection="connDECVPRODSQL2005" removeParameters="STUDENT_ID" customInsertType="Procedure" parameterTypeListName="ParameterTypeList" customInsert="sp_upd_assignment_submission;1" activeCollection="ISPParameters" dataSource="ASSIGNMENT_SUBMISSION" PathID="AssignmentReceipt">
			<Components>
				<ListBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="StaffID" sourceType="Table" required="False" connection="connDECVPRODSQL2005" dataSource="STAFF" boundColumn="STAFF_ID" textColumn="STAFF_ID" activeCollection="TableParameters" caption="Staff ID" PathID="AssignmentReceiptStaffID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="18" name="StaffID" sourceType="Session" sourceName="sessSTAFFID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters>
						<TableParameter id="13" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
						<TableParameter id="14" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="TEACHER_FLAG = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="11" tableName="STAFF" posLeft="10" posTop="10" posWidth="215" posHeight="275"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="12" fieldName="rtrim(STAFF_ID)" isExpression="True" alias="STAFF_ID"/>
					</Fields>
					<PKFields/>
				</ListBox>
				<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="studentid" required="False" caption="Student ID" PathID="AssignmentReceiptstudentid">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="6" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="subjectid" required="False" caption="Subject ID" PathID="AssignmentReceiptsubjectid">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="receiptdate" html="False" defaultValue="now()" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="8" urlType="Relative" enableValidation="False" isDefault="True" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="AssignmentReceiptButton_Insert">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="19"/>
								<Action actionName="Save Control Value" actionCategory="General" id="32" name="StaffID" sourceType="Session" sourceName="sessSTAFFID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="10" visible="Yes" fieldSourceType="CodeExpression" dataType="Integer" name="ENrolmentYear" defaultValue="year(now())" fieldSource="year(now())" PathID="AssignmentReceiptENrolmentYear">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="25" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_popupStudentSearch" hrefSource="#" wizardUseTemplateBlock="False" PathID="AssignmentReceiptlink_popupStudentSearch">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_popupStudentSubjectSearch" hrefSource="#" wizardUseTemplateBlock="False" PathID="AssignmentReceiptlink_popupStudentSubjectSearch">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="AssignmentReceiptLink1" hrefSource="Despatch_AssignmentReceipt.ccp" wizardUseTemplateBlock="False" removeParameters="studentid;subjectid;">
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
						<Action actionName="Custom Code" actionCategory="General" id="21"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="29"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="31"/>
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
		<CodeFile id="3" language="VB" name="Despatch_AssignmentReceipt.aspx" forShow="True" url="Despatch_AssignmentReceipt.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Despatch_AssignmentReceipt.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Despatch_AssignmentReceiptDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
	</Events>
</Page>
