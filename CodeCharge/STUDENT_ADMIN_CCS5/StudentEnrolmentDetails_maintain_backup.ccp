<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_ENROLMENT" dataSource="STUDENT_ENROLMENT, STUDENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT ENROLMENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" returnPage="StudentSummary.ccp" activeCollection="TableParameters" customUpdateType="Table" PathID="STUDENT_ENROLMENT">
			<Components>
				<Label id="7" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" required="True" caption="ENROLMENT DATE" wizardCaption="ENROLMENT DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yy" PathID="STUDENT_ENROLMENTENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="9" name="DatePicker_ENROLMENT_DATE" control="ENROLMENT_DATE" wizardSatellite="True" wizardControl="ENROLMENT_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STUDENT_ENROLMENTDatePicker_ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="WITHDRAWAL_DATE" fieldSource="WITHDRAWAL_DATE" required="False" caption="WITHDRAWAL DATE" wizardCaption="WITHDRAWAL DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yy" PathID="STUDENT_ENROLMENTWITHDRAWAL_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="11" name="DatePicker_WITHDRAWAL_DATE" control="WITHDRAWAL_DATE" wizardSatellite="True" wizardControl="WITHDRAWAL_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STUDENT_ENROLMENTDatePicker_WITHDRAWAL_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<ListBox id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" required="True" caption="ENROLMENT STATUS" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="N" _nameOfList="Not Enrolled" dataSource="E;Enrolled;N;Not Enrolled" PathID="STUDENT_ENROLMENTENROLMENT_STATUS">
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
				<ListBox id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Float" returnValueType="Number" name="WITHDRAWAL_REASON_ID" fieldSource="WITHDRAWAL_REASON_ID" required="False" caption="WITHDRAWAL REASON ID" wizardCaption="WITHDRAWAL REASON ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="WITHDRAWAL_REASON" boundColumn="WITHDRAWAL_REASON_ID" textColumn="WITHDRAWAL_REASON" activeCollection="TableParameters" PathID="STUDENT_ENROLMENTWITHDRAWAL_REASON_ID">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="19" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="18" tableName="WITHDRAWAL_REASON" posLeft="10" posTop="10" posWidth="160" posHeight="136"/>
					</JoinTables>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="14" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" required="True" caption="YEAR LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" _valueOfList="12" _nameOfList="12" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12" PathID="STUDENT_ENROLMENTYEAR_LEVEL">
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
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="15" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="CAMPUS" fieldSource="CAMPUS" required="True" caption="CAMPUS" wizardCaption="CAMPUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="D" _nameOfList="DECV" dataSource="D;DECV" PathID="STUDENT_ENROLMENTCAMPUS">
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
				</RadioButton>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="RECEIPT_NO" fieldSource="RECEIPT_NO" required="False" caption="RECEIPT NO" wizardCaption="RECEIPT NO" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_ENROLMENTRECEIPT_NO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="59" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="ELIGIBLE_FOR_DISCOUNT" fieldSource="ELIGIBLE_FOR_DISCOUNT" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTELIGIBLE_FOR_DISCOUNT">
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
				</RadioButton>
				<RadioButton id="62" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="PAID_ON_ENROLMENT" fieldSource="PAID_ON_ENROLMENT" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTPAID_ON_ENROLMENT">
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
				</RadioButton>
				<RadioButton id="60" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="FULL_TIME_STUDENT" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" fieldSource="FULL_TIME" PathID="STUDENT_ENROLMENTFULL_TIME_STUDENT">
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
				</RadioButton>
				<RadioButton id="63" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="OS_FULL_FEE_PAYING" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" fieldSource="OS_FULL_FEE_PAYING" PathID="STUDENT_ENROLMENTOS_FULL_FEE_PAYING">
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
				</RadioButton>
				<RadioButton id="61" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="ADDRESS_REVIEW_FLAG" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" fieldSource="ADDRESS_REVIEW_FLAG" PathID="STUDENT_ENROLMENTADDRESS_REVIEW_FLAG">
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
				</RadioButton>
				<RadioButton id="64" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="ELIGIBLE_FOR_FUNDING" fieldSource="ELIGIBLE_FOR_FUNDING" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTELIGIBLE_FOR_FUNDING">
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
				</RadioButton>
				<TextBox id="50" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="VCE_CANDIDATE_NO" fieldSource="VCE_CANDIDATE_NUMBER" PathID="STUDENT_ENROLMENTVCE_CANDIDATE_NO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="BULLETIN_NO" fieldSource="BULLETIN_NUMBER" PathID="STUDENT_ENROLMENTBULLETIN_NO">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="51" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUB_SCHOOL" fieldSource="SUB_SCHOOL" PathID="STUDENT_ENROLMENTSUB_SCHOOL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="54" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="PASTORAL_CARE_ID" wizardEmptyCaption="Select Value" fieldSource="PASTORAL_CARE_ID" connection="connDECVPRODSQL2005" dataSource="STAFF" boundColumn="STAFF_ID" textColumn="STAFF_ID" activeCollection="TableParameters" orderBy="STAFF_ID" PathID="STUDENT_ENROLMENTPASTORAL_CARE_ID">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="56" conditionType="Expression" useIsNull="False" field="STATUS" dataType="Boolean" searchConditionType="Equal" parameterType="Expression" logicOperator="And" expression="STATUS = 1" parameterSource="1"/>
						<TableParameter id="57" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="TEACHER_FLAG = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="55" tableName="STAFF" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="58" tableName="STAFF" fieldName="STAFF_ID"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<TextBox id="52" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="DOCS_LAST_REVIEWED_DATE" fieldSource="DOCS_LAST_REVIEWED_DATE" format="dd/mm/yy" PathID="STUDENT_ENROLMENTDOCS_LAST_REVIEWED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="65" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="NEW_DOCS_REQUIRED" fieldSource="NEW_DOCS_REQUIRED" connection="connDECVPRODSQL2005" _valueOfList="0" _nameOfList="No" dataSource="Yes;Yes;No;No" PathID="STUDENT_ENROLMENTNEW_DOCS_REQUIRED">
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
				</RadioButton>
				<TextArea id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="ENROLMENT_COMMENTS" fieldSource="ENROLMENT_COMMENTS" PathID="STUDENT_ENROLMENTENROLMENT_COMMENTS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Label id="77" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="STUDENT_ENROLMENT_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="78" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="STUDENT_ENROLMENT_LAST_ALTERED_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_ENROLMENTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_ENROLMENTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_ENROLMENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="70" conditionType="Expression" useIsNull="False" field="STUDENT.STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STUDENT.STUDENT_ID = STUDENT_ENROLMENT.STUDENT_ID" parameterSource="STUDENT_STUDENT_ID"/>
				<TableParameter id="28" conditionType="Parameter" useIsNull="False" field="STUDENT_ENROLMENT.STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="6" conditionType="Parameter" useIsNull="False" field="STUDENT_ENROLMENT.ENROLMENT_YEAR" parameterSource="ENROLMENT_YEAR" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="27" tableName="STUDENT_ENROLMENT" posLeft="220" posTop="10" posWidth="277" posHeight="269"/>
				<JoinTable id="67" tableName="STUDENT" schemaName="dbo" posLeft="34" posTop="21" posWidth="171" posHeight="233"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="68" tableLeft="STUDENT_ENROLMENT" tableRight="STUDENT" fieldLeft="STUDENT_ENROLMENT.STUDENT_ID" fieldRight="STUDENT.STUDENT_ID" joinType="inner" conditionType="Equal"/>
			</JoinLinks>
			<Fields>
				<Field id="29" tableName="STUDENT_ENROLMENT" fieldName="STUDENT_ENROLMENT.STUDENT_ID" alias="STUDENT_ENROLMENT_STUDENT_ID"/>
				<Field id="30" tableName="STUDENT_ENROLMENT" fieldName="ENROLMENT_YEAR"/>
				<Field id="31" tableName="STUDENT_ENROLMENT" fieldName="CAMPUS"/>
				<Field id="32" tableName="STUDENT_ENROLMENT" fieldName="YEAR_LEVEL"/>
				<Field id="33" tableName="STUDENT_ENROLMENT" fieldName="RECEIPT_NO"/>
				<Field id="34" tableName="STUDENT_ENROLMENT" fieldName="ENROLMENT_DATE"/>
				<Field id="35" tableName="STUDENT_ENROLMENT" fieldName="WITHDRAWAL_DATE"/>
				<Field id="36" tableName="STUDENT_ENROLMENT" fieldName="ENROLMENT_STATUS"/>
				<Field id="37" tableName="STUDENT_ENROLMENT" fieldName="WITHDRAWAL_REASON_ID"/>
				<Field id="39" tableName="STUDENT_ENROLMENT" fieldName="ELIGIBLE_FOR_DISCOUNT"/>
				<Field id="40" tableName="STUDENT_ENROLMENT" fieldName="PAID_ON_ENROLMENT"/>
				<Field id="41" tableName="STUDENT_ENROLMENT" fieldName="SUB_SCHOOL"/>
				<Field id="42" tableName="STUDENT_ENROLMENT" fieldName="ELIGIBLE_FOR_FUNDING"/>
				<Field id="43" tableName="STUDENT_ENROLMENT" fieldName="DECV_BALANCE"/>
				<Field id="44" tableName="STUDENT_ENROLMENT" fieldName="VSL_BALANCE"/>
				<Field id="45" tableName="STUDENT_ENROLMENT" fieldName="DOCS_LAST_REVIEWED_DATE"/>
				<Field id="46" tableName="STUDENT_ENROLMENT" fieldName="NEW_DOCS_REQUIRED"/>
				<Field id="47" tableName="STUDENT_ENROLMENT" fieldName="STUDENT_ENROLMENT.LAST_ALTERED_BY" alias="STUDENT_ENROLMENT_LAST_ALTERED_BY"/>
				<Field id="48" tableName="STUDENT_ENROLMENT" fieldName="STUDENT_ENROLMENT.LAST_ALTERED_DATE" alias="STUDENT_ENROLMENT_LAST_ALTERED_DATE"/>
				<Field id="49" tableName="STUDENT_ENROLMENT" fieldName="PASTORAL_CARE_ID"/>
				<Field id="71" tableName="STUDENT" fieldName="FULL_TIME"/>
				<Field id="72" tableName="STUDENT" fieldName="BULLETIN_NUMBER"/>
				<Field id="73" tableName="STUDENT" fieldName="OS_FULL_FEE_PAYING"/>
				<Field id="74" tableName="STUDENT" fieldName="ENROLMENT_COMMENTS"/>
				<Field id="75" tableName="STUDENT" fieldName="VCE_CANDIDATE_NUMBER"/>
				<Field id="76" tableName="STUDENT" fieldName="ADDRESS_REVIEW_FLAG"/>
				<Field id="80" tableName="STUDENT" fieldName="STUDENT.STUDENT_ID" alias="STUDENT_STUDENT_ID"/>
			</Fields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="101" conditionType="Expression" useIsNull="False" field="STUDENT.STUDENT_ID" dataType="Float" parameterType="URL" parameterSource="STUDENT_STUDENT_ID" searchConditionType="Equal" logicOperator="And" expression="STUDENT.STUDENT_ID = STUDENT_ENROLMENT.STUDENT_ID"/>
				<TableParameter id="102" conditionType="Parameter" useIsNull="False" field="STUDENT_ENROLMENT.STUDENT_ID" dataType="Float" parameterType="URL" parameterSource="STUDENT_ID" searchConditionType="Equal" logicOperator="And"/>
				<TableParameter id="103" conditionType="Parameter" useIsNull="False" field="STUDENT_ENROLMENT.ENROLMENT_YEAR" dataType="Float" parameterType="URL" parameterSource="ENROLMENT_YEAR" searchConditionType="Equal" logicOperator="And" orderNumber="1"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="81" field="ENROLMENT_DATE" dataType="Date" parameterType="Control" parameterSource="ENROLMENT_DATE" format="dd/mm/yy"/>
				<CustomParameter id="82" field="WITHDRAWAL_DATE" dataType="Date" parameterType="Control" parameterSource="WITHDRAWAL_DATE" format="dd/mm/yy"/>
				<CustomParameter id="83" field="ENROLMENT_STATUS" dataType="Text" parameterType="Control" parameterSource="ENROLMENT_STATUS"/>
				<CustomParameter id="84" field="WITHDRAWAL_REASON_ID" dataType="Float" parameterType="Control" parameterSource="WITHDRAWAL_REASON_ID"/>
				<CustomParameter id="85" field="YEAR_LEVEL" dataType="Integer" parameterType="Control" parameterSource="YEAR_LEVEL"/>
				<CustomParameter id="86" field="CAMPUS" dataType="Text" parameterType="Control" parameterSource="CAMPUS"/>
				<CustomParameter id="87" field="RECEIPT_NO" dataType="Text" parameterType="Control" parameterSource="RECEIPT_NO"/>
				<CustomParameter id="88" field="ELIGIBLE_FOR_DISCOUNT" dataType="Text" parameterType="Control" parameterSource="ELIGIBLE_FOR_DISCOUNT"/>
				<CustomParameter id="89" field="PAID_ON_ENROLMENT" dataType="Text" parameterType="Control" parameterSource="PAID_ON_ENROLMENT"/>
				<CustomParameter id="90" field="FULL_TIME" dataType="Text" parameterType="Control" parameterSource="FULL_TIME_STUDENT"/>
				<CustomParameter id="91" field="OS_FULL_FEE_PAYING" dataType="Text" parameterType="Control" parameterSource="OS_FULL_FEE_PAYING"/>
				<CustomParameter id="92" field="ADDRESS_REVIEW_FLAG" dataType="Text" parameterType="Control" parameterSource="ADDRESS_REVIEW_FLAG"/>
				<CustomParameter id="93" field="ELIGIBLE_FOR_FUNDING" dataType="Text" parameterType="Control" parameterSource="ELIGIBLE_FOR_FUNDING"/>
				<CustomParameter id="94" field="VCE_CANDIDATE_NUMBER" dataType="Text" parameterType="Control" parameterSource="VCE_CANDIDATE_NO"/>
				<CustomParameter id="95" field="BULLETIN_NUMBER" dataType="Text" parameterType="Control" parameterSource="BULLETIN_NO"/>
				<CustomParameter id="96" field="SUB_SCHOOL" dataType="Text" parameterType="Control" parameterSource="SUB_SCHOOL"/>
				<CustomParameter id="97" field="PASTORAL_CARE_ID" dataType="Text" parameterType="Control" parameterSource="PASTORAL_CARE_ID"/>
				<CustomParameter id="98" field="DOCS_LAST_REVIEWED_DATE" dataType="Date" parameterType="Control" parameterSource="DOCS_LAST_REVIEWED_DATE" format="dd/mm/yy"/>
				<CustomParameter id="99" field="NEW_DOCS_REQUIRED" dataType="Text" parameterType="Control" parameterSource="NEW_DOCS_REQUIRED"/>
				<CustomParameter id="100" field="ENROLMENT_COMMENTS" dataType="Text" parameterType="Control" parameterSource="ENROLMENT_COMMENTS"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<IncludePage id="79" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolmentDetails_maintain_backup.aspx" forShow="True" url="StudentEnrolmentDetails_maintain_backup.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolmentDetails_maintain_backup.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolmentDetails_maintain_backupDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="20" groupID="2"/>
		<Group id="21" groupID="3"/>
		<Group id="22" groupID="4"/>
		<Group id="23" groupID="6"/>
		<Group id="24" groupID="7"/>
		<Group id="25" groupID="9"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
