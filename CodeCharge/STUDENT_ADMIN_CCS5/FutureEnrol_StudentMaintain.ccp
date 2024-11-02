<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="3" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT" dataSource="STUDENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" PathID="STUDENT" pasteActions="pasteActions" visible="Dynamic" generateDiv="False" returnPage="FutureEnrol_StudentMaintain.ccp">
			<Components>
				<Label id="4" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTSURNAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="6"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTFIRST_NAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="8"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="9" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MIDDLE_NAME" fieldSource="MIDDLE_NAME" required="False" caption="MIDDLE NAME" wizardCaption="MIDDLE NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTMIDDLE_NAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="10"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="BIRTH_DATE" fieldSource="BIRTH_DATE" required="True" caption="BIRTH DATE" wizardCaption="BIRTH DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy" validationRule="(DateDiff(DateInterval.Month,(BIRTH_DATE.Value),Today()) &gt; 60)" validationText="The Date of Birth must be at least 5 years ago." PathID="STUDENTBIRTH_DATE">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="220"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="12" name="DatePicker_BIRTH_DATE" control="BIRTH_DATE" wizardSatellite="True" wizardControl="BIRTH_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STUDENTDatePicker_BIRTH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<RadioButton id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="SEX" fieldSource="SEX" required="True" caption="SEX" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="M" _nameOfList="Male" dataSource="F;Female;M;Male" PathID="STUDENTSEX">
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
				<ListBox id="14" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="ListBox_SubCategory" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="select rtrim(SUBCATEGORY_FULL_TITLE) as SUBCATEGORY_FULL_TITLE from ENROLMENT_CATEGORY where STATUS=1 order by rtrim(SUBCATEGORY_FULL_TITLE)" boundColumn="SUBCATEGORY_FULL_TITLE" textColumn="SUBCATEGORY_FULL_TITLE" required="True" caption="Category / SubCategory dropdown" PathID="STUDENTListBox_SubCategory">
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
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="ATTENDING_SCHOOL_ID" fieldSource="ATTENDING_SCHOOL_ID" required="False" caption="ATTENDING SCHOOL ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTATTENDING_SCHOOL_ID" format="#0.00" defaultValue="16261.00">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="16" name="tmpATTENDINGCount" type="Integer" initialValue="-1" eventType="Server"/>
								<Action actionName="DLookup" actionCategory="Database" id="17" typeOfTarget="Variable" expression="&quot;count(SCHOOL_ID)&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;status=1 and school_type_code!='X' and SCHOOL_ID=&quot; &amp; ATTENDING_SCHOOL_ID.Value.ToString()" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpATTENDINGCount" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="18"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblAttendingSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="20" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="HOME_SCHOOL_ID" fieldSource="HOME_SCHOOL_ID" required="True" caption="HOME SCHOOL ID" wizardCaption="HOME SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTHOME_SCHOOL_ID" format="#0.00" defaultValue="16261.00">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="21" name="tmpHOMECount" type="Integer" initialValue="-1" eventType="Server"/>
								<Action actionName="DLookup" actionCategory="Database" id="22" typeOfTarget="Variable" expression="&quot;COUNT(*)&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;status=1 and school_type_code!='X' and SCHOOL_ID=&quot; &amp; HOME_SCHOOL_ID.Value.ToString()" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpHOMECount" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="23"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHomeSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="25" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="26" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENTButton_Update">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="27"/>
								<Action actionName="Custom Code" actionCategory="General" id="28"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="29" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="30" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" required="False" caption="CATEGORY CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBCATEGORY_CODE" fieldSource="SUBCATEGORY_CODE" required="False" caption="SUBCATEGORY CODE" wizardCaption="SUBCATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTSUBCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EnrolmentCategoryTemp" PathID="STUDENTEnrolmentCategoryTemp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="33" fieldSourceType="CodeExpression" dataType="Float" name="hidden_old_ATTENDING_SCHOOL_ID" PathID="STUDENThidden_old_ATTENDING_SCHOOL_ID" format="#0.00">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="34" name="hidden_old_ATTENDING_SCHOOL_ID" sourceType="Expression" sourceName="item.ATTENDING_SCHOOL_ID.GetFormattedValue()" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="VSN" PathID="STUDENTVSN" fieldSource="VSN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="36" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PREFERRED_NAME" PathID="STUDENTPREFERRED_NAME" fieldSource="PREFERRED_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="37" fieldSourceType="DBColumn" dataType="Text" name="ENROLLEDBEFORE" PathID="STUDENTENROLLEDBEFORE" caption="ENROLLEDBEFORE" fieldSource="ENROLLEDBEFORE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="42" fieldSourceType="DBColumn" dataType="Date" name="hidden_DATE_STUDENTFOLDER_CREATED" PathID="STUDENThidden_DATE_STUDENTFOLDER_CREATED" fieldSource="DATE_STUDENTFOLDER_CREATED" format="yyyy-mm-dd H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENTLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="44" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENTLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="45" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" PathID="STUDENThidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserID.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="48" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" PathID="STUDENThidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="yyyy-mm-dd H:nn" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="62" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STUDENT_EMAIL" PathID="STUDENTSTUDENT_EMAIL" required="False" fieldSource="STUDENT_EMAIL" caption="STUDENT EMAIL ADDRESS">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="63" name="STUDENT_EMAIL" regExp="^[\w\.\+-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$" errorMessage="The STUDENT Email Address is not a valid Email Address eg: bob.student@example.com" eventType="Server"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="64"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="65" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STUDENT_MOBILE" PathID="STUDENTSTUDENT_MOBILE" fieldSource="STUDENT_MOBILE" caption="STUDENT MOBILE">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="66" regExp="(^04\d{2,3}[\s\-]{0,1}\d{3}[\s\-]{0,1}\d{3}$)|(^0011[\s\-]{0,1}[0-9]{7,12}$)" errorMessage="STUDENT MOBILE Phone Number must be an Australian number, with numbers, spaces, or hyphens only. eg: 0412 345 678 or 0412-345-678, or International number starting with 0011..." name="STUDENT_MOBILE" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="67" fieldSourceType="DBColumn" dataType="Text" name="Hidden_CURR_RESID_ADDRESS_ID" PathID="STUDENTHidden_CURR_RESID_ADDRESS_ID" fieldSource="CURR_RESID_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="70" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="listORG_SCHOOL_ID" wizardEmptyCaption="Select Value" PathID="STUDENTlistORG_SCHOOL_ID" caption="Extra Organisation" connection="connDECVPRODSQL2005" dataSource="SCHOOL" orderBy="SCHOOL_NAME" boundColumn="SCHOOL_ID" textColumn="SCHOOL_NAME" defaultValue="&quot;0&quot;" required="False" fieldSource="ORGANISATION_SCHOOL_ID">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="71" conditionType="Expression" useIsNull="False" expression="status=1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="72" conditionType="Expression" useIsNull="False" dataType="Text" expression="SCHOOL_TYPE_CODE ='X'" field="SCHOOL_TYPE_CODE" logicOperator="And" parameterSource="SCHOOL_TYPE_CODE" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="73" posHeight="180" posLeft="10" posTop="10" posWidth="160" schemaName="dbo" tableName="SCHOOL"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="74" fieldName="SCHOOL_ID" tableName="SCHOOL"/>
						<Field id="75" fieldName="SCHOOL_NAME" tableName="SCHOOL"/>
					</Fields>
					<PKFields>
						<PKField id="76" dataType="Float" fieldName="SCHOOL_ID" tableName="SCHOOL"/>
					</PKFields>
					<Attributes/>
					<Features/>
				</ListBox>
				<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="VCE_CANDIDATE_NUMBER" fieldSource="VCE_CANDIDATE_NUMBER" required="False" unique="True" PathID="STUDENTVCE_CANDIDATE_NUMBER">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="132" id_oncopy="132"/>
							</Actions>
						</Event>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="133" name="VCE_CANDIDATE_NUMBER" regExp="\d{8}[a-zA-Z]" errorMessage="The VCE CANDIDATE NUMBER must be 8 digits then a letter (eg: 12345678A)" id_oncopy="133"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="DLookup" actionCategory="Database" id="77" typeOfTarget="Control" expression="&quot;rtrim(SCHOOL_NAME) as [SCHOOL_NAME]&quot;" domain="&quot;SCHOOL&quot;" dataType="Text" target="lblAttendingSchoolName" connection="connDECVPRODSQL2005" criteria="&quot;SCHOOL_ID = &quot; &amp; item.ATTENDING_SCHOOL_ID.GetFormattedValue()" eventType="Server"/>
						<Action actionName="DLookup" actionCategory="Database" id="78" typeOfTarget="Control" expression="&quot;rtrim(SCHOOL_NAME) as [SCHOOL_NAME]&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;SCHOOL_ID = &quot; &amp; item.HOME_SCHOOL_ID.GetFormattedValue()" connection="connDECVPRODSQL2005" dataType="Text" target="lblHomeSchoolName" eventType="Server"/>
						<Action actionName="DLookup" actionCategory="Database" id="79" typeOfTarget="Control" expression="&quot;rtrim(SUBCATEGORY_FULL_TITLE)&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;CATEGORY_CODE='&quot; &amp; item.CATEGORY_CODE.GetFormattedValue() &amp; &quot;' AND SUBCATEGORY_CODE='&quot; &amp; item.SUBCATEGORY_CODE.GetFormattedValue() &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="EnrolmentCategoryTemp" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="80"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="82"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="83" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="84" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()" eventType="Server"/>
						<Action actionName="DLookup" actionCategory="Database" id="85" typeOfTarget="Control" expression="&quot;CATEGORY_CODE&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="CATEGORY_CODE" eventType="Server"/>
						<Action actionName="DLookup" actionCategory="Database" id="86" typeOfTarget="Control" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" expression="&quot;SUBCATEGORY_CODE&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="SUBCATEGORY_CODE" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="DLookup" actionCategory="Database" id="87" typeOfTarget="Control" expression="&quot;CATEGORY_CODE&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="CATEGORY_CODE" eventType="Server"/>
						<Action actionName="DLookup" actionCategory="Database" id="88" typeOfTarget="Control" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" expression="&quot;SUBCATEGORY_CODE&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="SUBCATEGORY_CODE" eventType="Server"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="90"/>
					</Actions>
				</Event>
				<Event name="AfterExecuteInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="91"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="219" name="&quot;Student Record Updated&quot;" sourceType="Session" sourceName="notifymessage"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="222" conditionType="Parameter" useIsNull="False" dataType="Float" defaultValue="0" field="STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="221" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="223" alias="MIDDLE_NAME" fieldName="MIDDLE_NAME" isExpression="False" tableName="STUDENT"/>
				<Field id="224" fieldName="STUDENT_ID" tableName="STUDENT"/>
				<Field id="225" alias="SURNAME" fieldName="SURNAME" isExpression="False" tableName="STUDENT"/>
				<Field id="226" alias="FIRST_NAME" fieldName="FIRST_NAME" isExpression="False" tableName="STUDENT"/>
				<Field id="227" fieldName="BIRTH_DATE" tableName="STUDENT"/>
				<Field id="228" fieldName="SEX" tableName="STUDENT"/>
				<Field id="229" fieldName="CATEGORY_CODE" tableName="STUDENT"/>
				<Field id="230" fieldName="SUBCATEGORY_CODE" tableName="STUDENT"/>
				<Field id="231" fieldName="ATTENDING_SCHOOL_ID" tableName="STUDENT"/>
				<Field id="232" fieldName="HOME_SCHOOL_ID" tableName="STUDENT"/>
				<Field id="233" fieldName="FULL_TIME" tableName="STUDENT"/>
				<Field id="234" fieldName="REGION" tableName="STUDENT"/>
				<Field id="235" fieldName="VSN" tableName="STUDENT"/>
				<Field id="236" fieldName="PREFERRED_NAME" tableName="STUDENT"/>
				<Field id="237" fieldName="ENROLLEDBEFORE" tableName="STUDENT"/>
				<Field id="238" fieldName="LAST_ALTERED_BY" tableName="STUDENT"/>
				<Field id="239" fieldName="LAST_ALTERED_DATE" tableName="STUDENT"/>
				<Field id="240" fieldName="DATE_STUDENTFOLDER_CREATED" tableName="STUDENT"/>
				<Field id="241" fieldName="VCE_CANDIDATE_NUMBER" tableName="STUDENT"/>
				<Field id="242" fieldName="STUDENT_EMAIL" tableName="STUDENT"/>
				<Field id="243" fieldName="STUDENT_MOBILE" tableName="STUDENT"/>
				<Field id="244" fieldName="CURR_RESID_ADDRESS_ID" tableName="STUDENT"/>
				<Field id="245" fieldName="PORTAL_ACCESS" tableName="STUDENT"/>
				<Field id="246" fieldName="ORGANISATION_SCHOOL_ID" tableName="STUDENT"/>
			</Fields>
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
			<Features>
			</Features>
			<PKFields>
				<PKField id="247" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT"/>
			</PKFields>
		</Record>
		<Record id="134" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_ENROLMENT" connection="connDECVPRODSQL2005" dataSource="STUDENT_ENROLMENT" errorSummator="Error" allowCancel="False" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="STUDENT_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Edit STUDENT ENROLMENT " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Horizontal" templatePageRecord="C:\Program Files (x86)\CodeChargeStudio5//Templates//Record//Horizontal.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="STUDENT_ENROLMENT">
			<Components>
				<Label id="138" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="lblENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ENROLMENT YEAR" wizardAddNbsp="True" PathID="STUDENT_ENROLMENTlblENROLMENT_YEAR">
					<Components/>
					<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="252" name="lblENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
</Actions>
</Event>
</Events>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="139" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ENROLMENT STATUS" caption="ENROLMENT STATUS" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" PathID="STUDENT_ENROLMENTENROLMENT_STATUS" dataSource="E;Enrolled;N;Not Enrolled;F;Future Enrolment" defaultValue="&quot;F&quot;">
					<Components/>
					<Events>
<Event name="OnChange" type="Client">
<Actions>
<Action actionName="Confirmation Message" actionCategory="General" id="287" message="Add a comment for why the Status is changing"/>
</Actions>
</Event>
</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<TextBox id="141" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="ENROLMENT DATE" caption="ENROLMENT DATE" required="True" format="dd/mm/yyyy" unique="False" wizardSize="10" wizardMaxLength="100" PathID="STUDENT_ENROLMENTENROLMENT_DATE" defaultValue="CurrentDate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="144" fieldSourceType="DBColumn" dataType="Date" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED DATE" caption="LAST ALTERED DATE" required="True" unique="False" PathID="STUDENT_ENROLMENTLAST_ALTERED_DATE" defaultValue="CurrentDateTime" format="yyyy-mm-dd H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="143" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" required="True" unique="False" PathID="STUDENT_ENROLMENTLAST_ALTERED_BY" defaultValue="DBUtility.UserID.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<ListBox id="140" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Integer" returnValueType="Number" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="YEAR LEVEL" caption="YEAR LEVEL" required="True" unique="False" connection="connDECVPRODSQL2005" wizardEmptyCaption="Select Value" PathID="STUDENT_ENROLMENTYEAR_LEVEL" dataSource="0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled">
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
				</ListBox>
				<Label id="145" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY1" PathID="STUDENT_ENROLMENTLAST_ALTERED_BY1" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="146" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE1" PathID="STUDENT_ENROLMENTLAST_ALTERED_DATE1" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="180" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Add" PathID="STUDENT_ENROLMENTButton_Add" operation="Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="181" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" PathID="STUDENT_ENROLMENTButton_Update" operation="Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="248" fieldSourceType="DBColumn" dataType="Text" name="STUDENT_ID" PathID="STUDENT_ENROLMENTSTUDENT_ID" fieldSource="STUDENT_ID">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="249" name="STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Hidden>
<Hidden id="250" fieldSourceType="DBColumn" dataType="Text" name="ENROLMENT_YEAR" PathID="STUDENT_ENROLMENTENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Retrieve Value for Control" actionCategory="General" id="251" name="ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Hidden>
</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="182" name="LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserID.ToUpper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="183" name="LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="218" name="&quot;Student Enrolment Record Updated&quot;" sourceType="Session" sourceName="notifymessage"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="148" conditionType="Parameter" useIsNull="False" dataType="Text" field="STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="149" conditionType="Parameter" useIsNull="False" dataType="Float" field="ENROLMENT_YEAR" logicOperator="And" parameterSource="ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="147" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_ENROLMENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="150" fieldName="*"/>
			</Fields>
			<PKFields>
				<PKField id="151" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT_ENROLMENT"/>
				<PKField id="152" dataType="Float" fieldName="ENROLMENT_YEAR" tableName="STUDENT_ENROLMENT"/>
			</PKFields>
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
		</Record>
		<EditableGrid id="184" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="SQL" defaultPageSize="25" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="EditableGrid1" connection="connDECVPRODSQL2005" dataSource="SELECT sck.id, ec.description, sck.option_received, sck.notes_public, sck.last_altered_when
		, sck.student_id, sck.last_altered_by
 FROM STUDENT_ENROL_CHECKLIST SCK join ENROL_CHECKLIST EC
	on sck.enrol_checklist_id = ec.id
where sck.student_id = {STUDENT_ID} 
	and sck.enrolment_year = {ENROLMENT_YEAR}" pageSizeLimit="100" wizardGridPageSize="False" wizardUseSearch="False" allowCancel="True" wizardSubmitConfirmation="False" wizardCaption="Student Enrolment Checklist" wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Student Enrolment items found!" wizardGridKey="id" wizardAddNbsp="False" wizardTotalRecords="False" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="EditableGrid1" deleteControl="CheckBox_Delete" customUpdateType="Table" activeCollection="UFormElements" activeTableType="STUDENT_ENROL_CHECKLIST" customUpdate="STUDENT_ENROL_CHECKLIST" customDeleteType="Table" customDelete="STUDENT_ENROL_CHECKLIST">
			<Components>
				<Label id="188" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="id" fieldSource="id" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="Id" PathID="EditableGrid1id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="189" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="description" fieldSource="description" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="Description" PathID="EditableGrid1description">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="190" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="option_received" fieldSource="option_received" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="Option Received" caption="Option Received" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="EditableGrid1option_received" dataSource="Y;Yes;N;No;W;Waiting;X;N/A">
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
				<TextBox id="191" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="notes_public" fieldSource="notes_public" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="Notes Public" caption="Notes Public" required="False" unique="False" wizardSize="50" wizardMaxLength="200" PathID="EditableGrid1notes_public">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="192" fieldSourceType="DBColumn" dataType="Date" name="last_altered_when" fieldSource="last_altered_when" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" wizardCaption="Last Altered When" caption="Last Altered When" required="False" format="dd/mm/yyyy h:nn AM/PM" unique="False" PathID="EditableGrid1last_altered_when">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<CheckBox id="193" visible="Dynamic" fieldSourceType="CodeExpression" dataType="Boolean" defaultValue="Unchecked" name="CheckBox_Delete" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardAddNbsp="True" PathID="EditableGrid1CheckBox_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Button id="194" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="EditableGrid1Button_Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="195" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel" PathID="EditableGrid1Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="196" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="lblWhen" PathID="EditableGrid1lblWhen" fieldSource="last_altered_when" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="199" fieldSourceType="DBColumn" dataType="Text" name="last_altered_by" PathID="EditableGrid1last_altered_by" fieldSource="last_altered_by">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="200" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblWho" PathID="EditableGrid1lblWho" fieldSource="last_altered_by">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="209" fieldSourceType="DBColumn" dataType="Text" name="hidden_hashchanges" PathID="EditableGrid1hidden_hashchanges" visible="Yes">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="210"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Button id="253" urlType="Relative" enableValidation="False" isDefault="False" name="Button_LoadChecklist" PathID="EditableGrid1Button_LoadChecklist">
<Components/>
<Events>
<Event name="OnClick" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="254"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Button>
</Components>
			<Events>
				<Event name="BeforeExecuteUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="213"/>
					</Actions>
				</Event>
				<Event name="OnValidateRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="214"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="215"/>
					</Actions>
				</Event>
				<Event name="AfterSubmit" type="Server">
					<Actions>
						<Action actionName="Save Variable Value" actionCategory="General" id="217" name="&quot;Enrol Checklist updated&quot;" sourceType="Session" sourceName="notifymessage"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="197" dataType="Integer" defaultValue="0" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
				<SQLParameter id="198" dataType="Integer" defaultValue="2019" designDefaultValue="2018" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
			</SQLParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="205" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="206" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="207" conditionType="Parameter" useIsNull="False" field="ID" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="id"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="201" field="option_received" dataType="Text" parameterType="Control" parameterSource="option_received"/>
				<CustomParameter id="202" field="notes_public" dataType="Text" parameterType="Control" parameterSource="notes_public"/>
				<CustomParameter id="203" field="last_altered_when" dataType="Date" parameterType="Expression" parameterSource="Now()" omitIfEmpty="True"/>
				<CustomParameter id="204" field="last_altered_by" dataType="Text" parameterType="Expression" parameterSource="DBUtility.UserID.ToUpper" omitIfEmpty="True"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions>
				<TableParameter id="211" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="212" conditionType="Parameter" useIsNull="False" field="ID" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="id"/>
			</DConditions>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="255" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_COMMENT" dataSource="STUDENT_COMMENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT COMMENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" customInsertType="SQL" activeCollection="ISQLParameters" activeTableType="STUDENT_COMMENT" customInsert="insert into STUDENT_COMMENT ([COMMENT_ID],[STUDENT_ID],[COMMENT],[LAST_ALTERED_BY],[LAST_ALTERED_DATE],[ACTIVE_STATUS],[COMMENT_TYPE]) 
select (select (max(COMMENT_ID+1)) from STUDENT_COMMENT) , {STUDENT_ID},'{COMMENTTEXT}',UPPER('{LAST_ALTERED_BY}'), getdate(),'F','{COMMENT_TYPE}'" parameterTypeListName="ParameterTypeList" PathID="STUDENT_COMMENT">
			<Components>
				<Label id="256" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSTUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextArea id="257" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="COMMENT" fieldSource="COMMENT" required="True" caption="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardRows="3" PathID="STUDENT_COMMENTCOMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Button id="258" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_COMMENTButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="259" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENT_COMMENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="260" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_COMMENTSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="261" fieldSourceType="DBColumn" dataType="Text" name="hidden_STATUS" defaultValue="&quot;F&quot;" fieldSource="ACTIVE_STATUS" PathID="STUDENT_COMMENThidden_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="38" fieldSourceType="DBColumn" dataType="Text" name="Hidden_CommentType" PathID="STUDENT_COMMENTHidden_CommentType" defaultValue="&quot;REGULAR&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="262" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblCommentType" PathID="STUDENT_COMMENTlblCommentType" defaultValue="&quot;SPECIAL COMMENT TYPE&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="263" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="lbSpecialCommentType" wizardEmptyCaption="Select Value" PathID="STUDENT_COMMENTlbSpecialCommentType" defaultValue="&quot;&quot;" required="False" caption="Special Comment Type" _valueOfList="MODIFIED_SUBJECT" _nameOfList="Modified Subject (Public)" connection="connDECVPRODSQL2005" dataSource="COMMENT_TYPE" orderBy="PUBLIC_FLAG desc, COMMENT_TYPE_ID" boundColumn="COMMENT_TYPE" textColumn="COMMENT_DESCRIPTION">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="118" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="285" tableName="COMMENT_TYPE"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="265" tableName="COMMENT_TYPE" fieldName="SPECIAL_FLAG"/>
						<Field id="266" tableName="COMMENT_TYPE" fieldName="PUBLIC_FLAG"/>
						<Field id="267" tableName="COMMENT_TYPE" fieldName="COMMENT_DESCRIPTION"/>
						<Field id="268" tableName="COMMENT_TYPE" fieldName="COMMENT_TYPE"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="68" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="lbSpecialCommentType1" wizardEmptyCaption="Select Value" PathID="STUDENT_COMMENTlbSpecialCommentType1" dataSource="COMMENT_TYPE" required="True" caption="Contact Type" defaultValue="&quot;0&quot;" _valueOfList="MODIFIED_SUBJECT" _nameOfList="Modified Subject (Public)" connection="connDECVPRODSQL2005" orderBy="PUBLIC_FLAG desc, COMMENT_TYPE_ID" boundColumn="COMMENT_TYPE" textColumn="COMMENT_DESCRIPTION">
					<Components/>
					<Events>
						<Event name="AfterExecuteSelect" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="94" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="269" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="SPECIAL_FLAG = 0"/>
						<TableParameter id="270" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS = 1"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="286" tableName="COMMENT_TYPE"/>
</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="137" tableName="COMMENT_TYPE" fieldName="SPECIAL_FLAG"/>
						<Field id="136" tableName="COMMENT_TYPE" fieldName="PUBLIC_FLAG"/>
						<Field id="135" tableName="COMMENT_TYPE" fieldName="COMMENT_DESCRIPTION"/>
						<Field id="272" tableName="COMMENT_TYPE" fieldName="COMMENT_TYPE"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields/>
				</ListBox>
				<ListBox id="97" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="lbCannedResponses" wizardEmptyCaption="Select Value" PathID="STUDENT_COMMENTlbCannedResponses" dataSource="Message Left;Message Left;Emailed about outstanding work;Emailed about outstanding work;Tried calling, No answer;Tried calling, No answer;Email bounced back;Email bounced back;Lack of submissions discussed;Lack of submissions discussed;Work issues discussed;Work issues discussed;Change of subjects;Change of subjects;Amber letter sent;Amber letter sent;Red letter sent;Red letter sent;Student Contact Hour;Student Contact Hour" _valueOfList="Student Contact Hour" _nameOfList="Student Contact Hour" required="False">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="98" eventType="Client"/>
								<Action actionName="Set Focus" actionCategory="General" id="99" form="STUDENT_COMMENT" name="COMMENT" eventType="Client"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="100" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
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
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="273" name="STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="274" name="lblSTUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="275"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="276"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="96" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="278" conditionType="Parameter" useIsNull="False" field="COMMENT_ID" parameterSource="COMMENT_ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters/>
			<ISQLParameters>
				<SQLParameter id="279" variable="STUDENT_ID" parameterType="Control" dataType="Text" parameterSource="STUDENT_ID"/>
				<SQLParameter id="280" variable="COMMENTTEXT" parameterType="Control" dataType="Text" parameterSource="COMMENT"/>
				<SQLParameter id="281" variable="LAST_ALTERED_BY" parameterType="Expression" dataType="Text" parameterSource="DBUtility.UserLogin.ToUpper"/>
				<SQLParameter id="39" variable="COMMENT_TYPE" parameterType="Control" defaultValue="'REGULAR'" dataType="Text" parameterSource="Hidden_CommentType"/>
			</ISQLParameters>
			<IFormElements>
				<CustomParameter id="282" field="COMMENT" dataType="Text" parameterType="Control" parameterSource="COMMENT" omitIfEmpty="True"/>
				<CustomParameter id="283" field="STUDENT_ID" dataType="Float" parameterType="Control" parameterSource="STUDENT_ID" omitIfEmpty="True"/>
				<CustomParameter id="284" field="ACTIVE_STATUS" dataType="Text" parameterType="Control" parameterSource="hidden_STATUS" defaultValue="&quot;A&quot;" omitIfEmpty="False"/>
			</IFormElements>
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
<Grid id="288" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="30" name="Grid_DisplayComments" connection="connDECVPRODSQL2005" dataSource="STUDENT_COMMENT" orderBy="LAST_ALTERED_DATE desc" pageSizeLimit="100" activeCollection="TableParameters" PathID="Grid_DisplayComments" wizardUsePageScroller="True">
			<Components>
				<Label id="289" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT" fieldSource="COMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="290" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="291" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="292" size="10" type="Simple" pageSizes="10;30;100;500" name="Navigator1" PathID="Grid_DisplayCommentsNavigator1" wizardPagingType="Custom" wizardPageNumbers="Simple" wizardTotalPages="True" wizardImages="ImagesWithText" wizardHideDisabled="True" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardPageSize="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT_TYPE" PathID="Grid_DisplayCommentsCOMMENT_TYPE" fieldSource="COMMENT_TYPE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="293" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_editcomment" PathID="Grid_DisplayCommentslink_editcomment" hrefSource="Student_Comments_editown.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="294" sourceType="DataField" name="COMMENT_ID" source="COMMENT_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="295"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="299" conditionType="Parameter" useIsNull="False" dataType="Float" defaultValue="0" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="300" conditionType="Expression" useIsNull="False" expression="ACTIVE_STATUS = 'F'" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="301" conditionType="Expression" useIsNull="False" expression="COMMENT_TYPE not like 'CONTACT%'" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
</TableParameters>
			<JoinTables>
				<JoinTable id="298" posHeight="168" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_COMMENT"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
<Field id="302" fieldName="*"/>
</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
<PKField id="303" dataType="Integer" fieldName="COMMENT_ID" tableName="STUDENT_COMMENT"/>
</PKFields>
		</Grid>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="FutureEnrol_StudentMaintain.aspx" forShow="True" url="FutureEnrol_StudentMaintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="FutureEnrol_StudentMaintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="FutureEnrol_StudentMaintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
<Group id="304" groupID="2"/>
<Group id="305" groupID="3"/>
<Group id="306" groupID="4"/>
<Group id="307" groupID="6"/>
<Group id="308" groupID="9"/>
<Group id="309" groupID="11"/>
</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
