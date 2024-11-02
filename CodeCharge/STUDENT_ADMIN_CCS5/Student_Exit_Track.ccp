<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<Record id="2" sourceType="SQL" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="Student_Exit" actionPage="Student_Exit_Track" errorSummator="Error" wizardFormMethod="post" PathID="Student_Exit" connection="connDECVPRODSQL2005" activeCollection="USPParameters" pasteActions="pasteActions" pasteAsReplace="pasteAsReplace" dataSource="SELECT STUDENT_ID, Name, WITHDRAWAL_DATE, WITHDRAWAL_REASON_ID, Reason, ENROLMENT_STATUS, WITHDRAWAL_EXIT_DESTINATION, COMMENT, LAST_ALTERED_BY,
LAST_ALTERED_DATE, ENROLMENT_YEAR, COMMENT_TYPE, COMMENT_ID 
FROM View_StudentExitTRack
WHERE ENROLMENT_YEAR = {s_ENROLMENT_YEAR}
AND STUDENT_ID = {s_STUDENT_ID}
AND ( ENROLMENT_STATUS ='N' )
AND ( COMMENT_TYPE LIKE '%{s_ENROLMENT_YEAR}'
OR COMMENT_TYPE IS NULL ) 
ORDER BY LAST_ALTERED_DATE desc" parameterTypeListName="ParameterTypeList" customUpdateType="Procedure" customUpdate="USP_StudentExitTrack;1" removeParameters="s_STUDENT_ID">
			<Components>
				<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" PathID="Student_ExitButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" PathID="Student_ExitButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="8" fieldSourceType="DBColumn" dataType="Text" html="False" name="Lbl_Name" PathID="Student_ExitLbl_Name" fieldSource="Name">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="Lbl_StudentID" PathID="Student_ExitLbl_StudentID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="Lbl_WithDrawnReason" PathID="Student_ExitLbl_WithDrawnReason" fieldSource="Reason" defaultValue="&quot;not completed&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Date" html="False" name="Lbl_WithDrawnDate" PathID="Student_ExitLbl_WithDrawnDate" fieldSource="WITHDRAWAL_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="17" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="lbEXIT_DESTINATION" wizardEmptyCaption="Select Value" PathID="Student_ExitlbEXIT_DESTINATION" fieldSource="WITHDRAWAL_EXIT_DESTINATION" connection="connDECVPRODSQL2005" dataSource="WITHDRAWAL_EXIT_DESTINATION" activeCollection="TableParameters" orderBy="DISPLAY_ORDER" boundColumn="WD_DEST_ID" textColumn="EXIT_DESTINATION_DESCRIPTION" caption="EXIT DESTINATION" required="True">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="18" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="DISPLAY_ORDER &gt; 0"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="19" tableName="WITHDRAWAL_EXIT_DESTINATION" schemaName="dbo" posLeft="10" posTop="10" posWidth="214" posHeight="190"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="20" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="WD_DEST_ID"/>
						<Field id="21" tableName="WITHDRAWAL_EXIT_DESTINATION" fieldName="EXIT_DESTINATION_DESCRIPTION"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextArea id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="TextAreaComments" PathID="Student_ExitTextAreaComments" fieldSource="COMMENT" required="True" caption="COMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="53" fieldSourceType="DBColumn" dataType="Text" name="TXT_LastAlteredBy" PathID="Student_ExitTXT_LastAlteredBy" defaultValue="DBUTILITY.USERID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="57" fieldSourceType="DBColumn" dataType="Text" name="Hidden_CommentID" PathID="Student_ExitHidden_CommentID" fieldSource="COMMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="51"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="56"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
<SQLParameter id="162" dataType="Float" defaultValue="YEAR(NOW())" designDefaultValue="2015" parameterSource="s_ENROLMENT_YEAR" parameterType="URL" variable="s_ENROLMENT_YEAR"/>
<SQLParameter id="163" dataType="Float" designDefaultValue="62030" parameterSource="s_STUDENT_ID" parameterType="URL" variable="s_STUDENT_ID"/>
</SQLParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields>
			</Fields>
			<ISPParameters>
				<SPParameter id="Key60" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key61" parameterName="@CommentID" parameterSource="Hidden_CommentID" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key62" parameterName="@Student_id" parameterSource="STUDENT_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key63" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key64" parameterName="@ExitDestination" parameterSource="lbEXIT_DESTINATION" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key65" parameterName="@Comment" parameterSource="TextAreaComments" dataType="VarChar" parameterType="Control" dataSize="500" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key66" parameterName="@LastAlteredBy" parameterSource="TXT_LastAlteredBy" dataType="Char" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="10"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="28" field="WITHDRAWAL_EXIT_DESTINATION" dataType="Float" parameterType="Control" parameterSource="lbEXIT_DESTINATION"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key60" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key61" parameterName="@CommentID" parameterSource="Hidden_CommentID" dataType="Numeric" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key62" parameterName="@Student_id" parameterSource="s_STUDENT_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key63" parameterName="@EnrolmentYear" parameterSource="s_ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key64" parameterName="@ExitDestination" parameterSource="lbEXIT_DESTINATION" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key65" parameterName="@Comment" parameterSource="TextAreaComments" dataType="VarChar" parameterType="Control" dataSize="500" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key66" parameterName="@LastAlteredBy" parameterSource="TXT_LastAlteredBy" dataType="Char" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="10"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="54" field="WITHDRAWAL_EXIT_DESTINATION" dataType="Float" parameterType="Control" parameterSource="lbEXIT_DESTINATION"/>
				<CustomParameter id="55" field="COMMENT" dataType="Text" parameterType="Control" parameterSource="TextAreaComments"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<Record id="59" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewMaintainSearchRequest" wizardCaption="Search View Maintain Search Request " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Student_Exit_Track.ccp" PathID="viewMaintainSearchRequest">
			<Components>
				<Link id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" removeParameters="s_STUDENT_ID;s_ENROLMENT_YEAR" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="viewMaintainSearchRequestClearParameters" hrefSource="Student_Exit_Track.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="61" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="viewMaintainSearchRequestButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="viewMaintainSearchRequests_STUDENT_ID" caption="STUDENT ID" required="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="s_ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="viewMaintainSearchRequests_ENROLMENT_YEAR" defaultValue="Year(Today())" required="True" caption="ENROLMENT YEAR" validationRule="s_ENROLMENT_YEAR.Value &gt;= (Year(Today())-2)" validationText="Please, something recent, like in the last 3 years?">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events/>
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
		<IncludePage id="66" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Exit_Track.aspx" forShow="True" url="Student_Exit_Track.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Exit_Track.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Exit_TrackDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="64" form="viewMaintainSearchRequest" name="s_STUDENT_ID"/>
			</Actions>
		</Event>
	</Events>
</Page>
