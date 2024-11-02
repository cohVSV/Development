<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="86" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT" dataSource="STUDENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" returnPage="StudentSummary.ccp" parameterTypeListName="ParameterTypeList" activeCollection="USQLParameters" customUpdateType="SQL" customUpdate="insert STUDENT_ENROLMENT (STUDENT_ID,ENROLMENT_YEAR,CAMPUS,YEAR_LEVEL,RECEIPT_NO,ENROLMENT_DATE,ENROLMENT_STATUS,ELIGIBLE_FOR_DISCOUNT,PAID_ON_ENROLMENT 
,ELIGIBLE_FOR_FUNDING,DECV_BALANCE,DOCS_LAST_REVIEWED_DATE,NEW_DOCS_REQUIRED,VSL_BALANCE,SUB_SCHOOL,PASTORAL_CARE_ID,LAST_ALTERED_BY,LAST_ALTERED_DATE, REGION_APPROVAL_NUMBER, PRIVACY_PERMISSION)
values({STUDENT_ID},{txtEnrolYear},'D',{listYearLevel},'',getdate() ,'E',0,0,1,0,getdate(),0,0,'','N-A','{UserLogin}', getdate(), {RegionApprovalNumber},{PRIVACY_PERMISSION})" PathID="STUDENT">
			<Components>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="79" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="EnrolDate" caption="ENROLMENT DATE" format="dd/mm/yyyy" defaultValue="now()" required="True" PathID="STUDENTEnrolDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MIDDLE_NAME" fieldSource="MIDDLE_NAME" required="False" caption="MIDDLE NAME" wizardCaption="MIDDLE NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="BIRTH_DATE" fieldSource="BIRTH_DATE" required="True" caption="DATE OF BIRTH" wizardCaption="BIRTH DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="SEX" fieldSource="SEX" required="False" caption="GENDER" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="M" _nameOfList="Male" dataSource="F;Female;M;Male;X;Self-described" PathID="STUDENTSEX">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes>
					</Attributes>
					<Features/>
					<PKFields/>
				</RadioButton>
				<ListBox id="65" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="listYearLevel" wizardEmptyCaption="Select Value" caption="YEAR LEVEL" required="True" connection="connDECVPRODSQL2005" _valueOfList="12" _nameOfList="12" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled" PathID="STUDENTlistYearLevel">
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
				<TextBox id="80" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EnrolYear" defaultValue="(IIF((month(now())&lt;=9),(year(now())), (year(now())+1)))" required="True" caption="ENROLMENT YEAR" PathID="STUDENTEnrolYear">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="82" fieldSourceType="DBColumn" dataType="Text" html="False" name="category" fieldSource="CATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="83" fieldSourceType="DBColumn" dataType="Text" html="False" name="subcategory" fieldSource="SUBCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="ATTENDING_SCHOOL_ID" fieldSource="ATTENDING_SCHOOL_ID" required="False" caption="ATTENDING SCHOOL ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblAttendingSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="HOME_SCHOOL_ID" fieldSource="HOME_SCHOOL_ID" required="True" caption="HOME SCHOOL ID" wizardCaption="HOME SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHomeSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" returnPage="StudentEnrolment_InitialCheck.ccp" PathID="STUDENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Add" PathID="STUDENTButton_Update">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="85" message="Are you sure you want to add a new Enrolment Year?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="81" fieldSourceType="DBColumn" dataType="Text" name="hidden_STUDENT_ID" fieldSource="STUDENT_ID" PathID="STUDENThidden_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="84" fieldSourceType="CodeExpression" dataType="Text" name="hidden_LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper" PathID="STUDENThidden_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="78" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblErrorMessages">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="102" visible="Dynamic" fieldSourceType="DBColumn" dataType="Integer" name="inputREgionID" PathID="STUDENTinputREgionID" caption="REGION APPROVAL CODE" required="True" defaultValue="0" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
					</Features>
				</Hidden>
				<RadioButton id="182" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Boolean" html="True" returnValueType="Number" name="PRIVACY_PERMISSION" caption="PRIVACY PERMISSION" dataSource="Yes;Yes;No;No" PathID="STUDENTPRIVACY_PERMISSION" required="True">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</RadioButton>
				<TextBox id="184" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SEX_SELF_DESCRIBED" PathID="STUDENTSEX_SELF_DESCRIBED" fieldSource="SEX_SELF_DESCRIBED" required="False" unique="False" html="False">
					<Components/>
					<Events/>
					<Attributes>
					</Attributes>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="63"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="92"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="187" conditionType="Parameter" useIsNull="False" dataType="Float" defaultValue="53767" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="186" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="188" alias="MIDDLE_NAME" fieldName="MIDDLE_NAME" isExpression="False" tableName="STUDENT"/>
				<Field id="189" fieldName="STUDENT_ID" tableName="STUDENT"/>
				<Field id="190" alias="SURNAME" fieldName="SURNAME" isExpression="False" tableName="STUDENT"/>
				<Field id="191" alias="FIRST_NAME" fieldName="FIRST_NAME" isExpression="False" tableName="STUDENT"/>
				<Field id="192" fieldName="BIRTH_DATE" tableName="STUDENT"/>
				<Field id="193" fieldName="SEX" tableName="STUDENT"/>
				<Field id="194" fieldName="CATEGORY_CODE" tableName="STUDENT"/>
				<Field id="195" fieldName="SUBCATEGORY_CODE" tableName="STUDENT"/>
				<Field id="196" fieldName="ATTENDING_SCHOOL_ID" tableName="STUDENT"/>
				<Field id="197" fieldName="HOME_SCHOOL_ID" tableName="STUDENT"/>
				<Field id="198" fieldName="SEX_SELF_DESCRIBED" tableName="STUDENT"/>
			</Fields>
			<ISPParameters/>
			<ISQLParameters>
				<SQLParameter id="87" variable="STUDENT_ID" parameterType="Control" defaultValue="0" dataType="Float" parameterSource="hidden_STUDENT_ID"/>
				<SQLParameter id="88" variable="txtEnrolYear" parameterType="Control" defaultValue="year(now())" dataType="Integer" parameterSource="EnrolYear"/>
				<SQLParameter id="89" variable="listYearLevel" parameterType="Control" defaultValue="0" dataType="Integer" parameterSource="listYearLevel"/>
				<SQLParameter id="90" variable="enroldate" parameterType="Control" defaultValue="now()" dataType="Date" parameterSource="EnrolDate"/>
				<SQLParameter id="91" variable="UserLogin" parameterType="Control" defaultValue="&quot;UNKNOWN&quot;" dataType="Text" parameterSource="hidden_LAST_ALTERED_BY"/>
			</ISQLParameters>
			<IFormElements>
				<CustomParameter id="66" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="67" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="68" field="MIDDLE_NAME" dataType="Text" parameterType="Control" parameterSource="MIDDLE_NAME"/>
				<CustomParameter id="69" field="BIRTH_DATE" dataType="Date" parameterType="Control" parameterSource="BIRTH_DATE" format="dd/mm/yyyy"/>
				<CustomParameter id="70" field="SEX" dataType="Text" parameterType="Control" parameterSource="SEX"/>
				<CustomParameter id="71" field="ATTENDING_SCHOOL_ID" dataType="Float" parameterType="Control" parameterSource="ATTENDING_SCHOOL_ID"/>
				<CustomParameter id="72" field="HOME_SCHOOL_ID" dataType="Float" parameterType="Control" parameterSource="HOME_SCHOOL_ID"/>
				<CustomParameter id="73" field="CATEGORY_CODE" dataType="Text" parameterType="Control" parameterSource="CATEGORY_CODE"/>
				<CustomParameter id="74" field="SUBCATEGORY_CODE" dataType="Text" parameterType="Control" parameterSource="SUBCATEGORY_CODE"/>
			</IFormElements>
			<USPParameters/>
			<USQLParameters>
				<SQLParameter id="97" variable="STUDENT_ID" parameterType="Control" dataType="Text" parameterSource="hidden_STUDENT_ID"/>
				<SQLParameter id="98" variable="txtEnrolYear" parameterType="Control" defaultValue="year(now())" dataType="Integer" parameterSource="EnrolYear"/>
				<SQLParameter id="99" variable="listYearLevel" parameterType="Control" defaultValue="-1" dataType="Integer" parameterSource="listYearLevel"/>
				<SQLParameter id="101" variable="UserLogin" parameterType="Control" defaultValue="&quot;unknown&quot;" dataType="Text" parameterSource="hidden_LAST_ALTERED_BY"/>
				<SQLParameter id="103" variable="RegionApprovalNumber" parameterType="Control" dataType="Text" parameterSource="inputREgionID"/>
				<SQLParameter id="183" variable="PRIVACY_PERMISSION" parameterType="Control" defaultValue="0" dataType="Boolean" parameterSource="PRIVACY_PERMISSION"/>
			</USQLParameters>
			<UConditions/>
			<UFormElements>
				<CustomParameter id="95" field="SEX" dataType="Text" parameterType="Control" parameterSource="SEX"/>
				<CustomParameter id="96" field="STUDENT_ID" dataType="Text" parameterType="Control" parameterSource="hidden_STUDENT_ID"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="199" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT"/>
			</PKFields>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolment_AddNewYear.aspx" forShow="True" url="StudentEnrolment_AddNewYear.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolment_AddNewYear.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolment_AddNewYearDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="20" groupID="2"/>
		<Group id="21" groupID="3"/>
		<Group id="22" groupID="4"/>
		<Group id="23" groupID="5"/>
		<Group id="24" groupID="6"/>
		<Group id="25" groupID="7"/>
		<Group id="26" groupID="9"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
