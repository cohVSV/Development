<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="53" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="UpdateForm" actionPage="Despatch_UpdatebyYear" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" PathID="UpdateForm">
			<Components>
				<TextBox id="78" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="txtEnrolYear1" defaultValue="year(now())" PathID="UpdateFormtxtEnrolYear1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="75" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoUpdate1" PathID="UpdateFormButton_DoUpdate1">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="76" id_oncopy="52"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="82" name="txtEnrolYear1" errorMessage="The [Enrolment Year] is required."/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="79" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoUpdate3" PathID="UpdateFormButton_DoUpdate3">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="80" message="Are you SURE you wish to run the Update Time Fraction?"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="81"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="77" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="txtEnrolYear2" defaultValue="year(now())" PathID="UpdateFormtxtEnrolYear2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="49" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_1" checkedValue="true" uncheckedValue="false" defaultValue="Checked" PathID="UpdateFormsemester_1">
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
				</CheckBox>
				<CheckBox id="50" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_2" checkedValue="true" uncheckedValue="false" defaultValue="Checked" PathID="UpdateFormsemester_2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="51" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_both" checkedValue="true" uncheckedValue="false" defaultValue="Checked" PathID="UpdateFormsemester_both">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextBox id="74" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="txtGrace" required="False" defaultValue="4" PathID="UpdateFormtxtGrace">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="45" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoUpdate2" PathID="UpdateFormButton_DoUpdate2">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="52" eventType="Server"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="83" name="txtEnrolYear2" errorMessage="The [Enrolment Year] is required."/>
								<Action actionName="Validate Required Value" actionCategory="Validation" id="84" name="txtGrace" errorMessage="The [Grace Period] is required."/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<CheckBox id="70" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox0" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox1" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox2" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="60" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox3" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox3">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="61" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox4" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox4">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox5" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox5">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox6" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox6">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox7" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox7">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox8" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox8">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="66" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox9" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox9">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox10" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox10">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="68" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox11" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox11">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="69" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox12" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormCheckBox12">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="73" visible="Yes" fieldSourceType="DBColumn" dataType="Boolean" name="CheckBox_All" PathID="UpdateFormCheckBox_All" defaultValue="Unchecked">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSelections">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
			</Events>
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
		<Label id="87" fieldSourceType="CodeExpression" dataType="Text" html="False" generateSpan="False" name="lblModified" PathID="lblModified" fieldSource="System.IO.File.GetLastWriteTime(Request.PhysicalPath).ToString(&quot;dd MMM yy HH:mm&quot;)">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Update_Utilities.aspx" forShow="True" url="Update_Utilities.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Update_Utilities.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Update_UtilitiesDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="86"/>
			</Actions>
		</Event>
	</Events>
</Page>
