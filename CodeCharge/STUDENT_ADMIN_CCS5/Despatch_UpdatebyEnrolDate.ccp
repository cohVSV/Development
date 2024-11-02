<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="53" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="UpdateForm" actionPage="Despatch_UpdatebyYear" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" PathID="UpdateForm">
			<Components>
				<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="studentdatefrom" format="dd/mm/yyyy" caption="Despatch Date for Students FROM" required="True" validationRule="studentdatefrom.value &lt;= studentdateto.value" validationText="[To Enrolment Date] must be later than  [From Enrolment Date]" PathID="UpdateFormstudentdatefrom">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="57" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="studentdateto" caption="Despatch Date for Students TO" format="dd/mm/yyyy" required="True" PathID="UpdateFormstudentdateto">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<CheckBox id="49" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_1" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormsemester_1">
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
				<CheckBox id="50" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_2" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormsemester_2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<CheckBox id="51" visible="Yes" fieldSourceType="CodeExpression" dataType="Boolean" name="semester_both" checkedValue="true" uncheckedValue="false" defaultValue="false" PathID="UpdateFormsemester_both">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<TextBox id="46" visible="Yes" fieldSourceType="CodeExpression" dataType="Date" name="despatchdate" required="True" defaultValue="now()" format="dd/mm/yyyy" caption="Despatch Date" DBFormat="yyyy-mm-dd HH:nn:ss" PathID="UpdateFormdespatchdate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="47" visible="Yes" fieldSourceType="CodeExpression" dataType="Integer" name="book_range_from" caption="Book Range From" required="True" validationRule="book_range_from.value &lt;= book_range_to.value" validationText="[To Book Range] must not be less than [From Book] Range" PathID="UpdateFormbook_range_from">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="48" visible="Yes" fieldSourceType="CodeExpression" dataType="Integer" name="book_range_to" caption="Book Range To" required="True" PathID="UpdateFormbook_range_to">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
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
				<Button id="45" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoUpdate" PathID="UpdateFormButton_DoUpdate">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="52"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSelections">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="55"/>
						<Action actionName="Custom Code" actionCategory="General" id="71"/>
					</Actions>
				</Event>
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
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Despatch_UpdatebyEnrolDate.aspx" forShow="True" url="Despatch_UpdatebyEnrolDate.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Despatch_UpdatebyEnrolDate.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Despatch_UpdatebyEnrolDateDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
