<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="40" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT" dataSource="STUDENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" PathID="STUDENT" pasteActions="pasteActions" visible="Dynamic" generateDiv="False">
			<Components>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTSURNAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="82"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTFIRST_NAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="83" eventType="Server"/>
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
								<Action actionName="Custom Code" actionCategory="General" id="84"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="10" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="BIRTH_DATE" fieldSource="BIRTH_DATE" required="True" caption="BIRTH DATE" wizardCaption="BIRTH DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy" validationRule="(DateDiff(DateInterval.Month,(BIRTH_DATE.Value),Today()) &gt; 60)" validationText="The Date of Birth must be at least 5 years ago." PathID="STUDENTBIRTH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<DatePicker id="11" name="DatePicker_BIRTH_DATE" control="BIRTH_DATE" wizardSatellite="True" wizardControl="BIRTH_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css" PathID="STUDENTDatePicker_BIRTH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<RadioButton id="12" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="SEX" fieldSource="SEX" required="True" caption="SEX" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="M" _nameOfList="Male" dataSource="F;Female;M;Male;X;Self-described" PathID="STUDENTSEX" validationRule="(((SEX.Value IsNot Nothing) AndAlso (Not SEX.Value.ToString().Equals(&quot;X&quot;))) OrElse ((SEX_SELF_DESCRIBED.Value IsNot Nothing) AndAlso (SEX_SELF_DESCRIBED.Value.ToString().Trim().Length &gt; 0)))" validationText="Self-described gender must be specified">
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
				<ListBox id="64" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="ListBox_SubCategory" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="select rtrim(SUBCATEGORY_FULL_TITLE) as SUBCATEGORY_FULL_TITLE from ENROLMENT_CATEGORY where STATUS=1 order by rtrim(SUBCATEGORY_FULL_TITLE)" boundColumn="SUBCATEGORY_FULL_TITLE" textColumn="SUBCATEGORY_FULL_TITLE" required="True" caption="Category / SubCategory dropdown" PathID="STUDENTListBox_SubCategory">
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
				<TextBox id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="ATTENDING_SCHOOL_ID" fieldSource="ATTENDING_SCHOOL_ID" required="False" caption="ATTENDING SCHOOL ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTATTENDING_SCHOOL_ID" format="#0.00">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="70" name="tmpATTENDINGCount" type="Integer" initialValue="-1"/>
								<Action actionName="DLookup" actionCategory="Database" id="68" typeOfTarget="Variable" expression="&quot;count(SCHOOL_ID)&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;status=1 and school_type_code!='X' and SCHOOL_ID=&quot; &amp; ATTENDING_SCHOOL_ID.Value.ToString()" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpATTENDINGCount"/>
								<Action actionName="Custom Code" actionCategory="General" id="69"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblAttendingSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="HOME_SCHOOL_ID" fieldSource="HOME_SCHOOL_ID" required="True" caption="HOME SCHOOL ID" wizardCaption="HOME SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTHOME_SCHOOL_ID" format="#0.00">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="292" name="tmpHOMECount" type="Integer" initialValue="-1"/>
								<Action actionName="DLookup" actionCategory="Database" id="293" typeOfTarget="Variable" expression="&quot;COUNT(*)&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;status=1 and school_type_code!='X' and SCHOOL_ID=&quot; &amp; HOME_SCHOOL_ID.Value.ToString()" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpHOMECount"/>
								<Action actionName="Custom Code" actionCategory="General" id="294"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblHomeSchoolName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENTButton_Insert" returnPage="StudentSummary.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="4" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENTButton_Update" returnPage="StudentSummary.ccp">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="87"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="5" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="STUDENTButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" required="False" caption="CATEGORY CODE" wizardCaption="CATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SUBCATEGORY_CODE" fieldSource="SUBCATEGORY_CODE" required="False" caption="SUBCATEGORY CODE" wizardCaption="SUBCATEGORY CODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENTSUBCATEGORY_CODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="55" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EnrolmentCategoryTemp" PathID="STUDENTEnrolmentCategoryTemp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="65" fieldSourceType="CodeExpression" dataType="Float" name="hidden_old_ATTENDING_SCHOOL_ID" PathID="STUDENThidden_old_ATTENDING_SCHOOL_ID" format="#0.00">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="67" name="hidden_old_ATTENDING_SCHOOL_ID" sourceType="Expression" sourceName="item.ATTENDING_SCHOOL_ID.GetFormattedValue()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<TextBox id="78" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="VSN" PathID="STUDENTVSN" fieldSource="VSN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="79" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="PREFERRED_NAME" PathID="STUDENTPREFERRED_NAME" fieldSource="PREFERRED_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="85" fieldSourceType="DBColumn" dataType="Text" name="ENROLLEDBEFORE" PathID="STUDENTENROLLEDBEFORE" caption="ENROLLEDBEFORE" fieldSource="ENROLLEDBEFORE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="89" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Absolute" preserveParameters="None" name="link_showstudentfolder" PathID="STUDENTlink_showstudentfolder" wizardUseTemplateBlock="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="115" name="tmpStudentID" type="Text" initialValue="&quot;0unknown&quot;" eventType="Server"/>
								<Action actionName="Save Control Value" actionCategory="General" id="117" name="lblStudentID" sourceType="Variable" sourceName="tmpStudentID" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="121" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Hidden id="91" fieldSourceType="DBColumn" dataType="Date" name="hidden_DATE_STUDENTFOLDER_CREATED" PathID="STUDENThidden_DATE_STUDENTFOLDER_CREATED" fieldSource="DATE_STUDENTFOLDER_CREATED" format="yyyy-mm-dd H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="95" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENTLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="96" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENTLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="97" fieldSourceType="DBColumn" dataType="Text" name="hidden_LAST_ALTERED_BY" PathID="STUDENThidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserID.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="118" fieldSourceType="DBColumn" dataType="Text" html="True" name="labelContactPCSupport" PathID="STUDENTlabelContactPCSupport" defaultValue="&quot;&lt;em&gt;Contact PC Support for Student Files&lt;/em&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="98" fieldSourceType="DBColumn" dataType="Date" name="hidden_LAST_ALTERED_DATE" PathID="STUDENThidden_LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="yyyy-mm-dd H:nn" defaultValue="CurrentDateTime">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Button id="171" urlType="Relative" enableValidation="True" isDefault="False" name="Button_CreateStudentWorkFolder" PathID="STUDENTButton_CreateStudentWorkFolder" operation="Update" returnPage="StudentDetails_maintain.ccp">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="187" name="tmpSTUDENT_ID" type="Text" initialValue="&quot;0unknown&quot;"/>
								<Action actionName="Retrieve Value for Variable" actionCategory="General" id="186" name="tmpSTUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
								<Action actionName="Custom Code" actionCategory="General" id="185"/>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="191" name="hidden_DATE_STUDENTFOLDER_CREATED" sourceType="Expression" sourceName="Now()"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="188" fieldSourceType="DBColumn" dataType="Date" html="False" name="label_StudentFilesCreated" PathID="STUDENTlabel_StudentFilesCreated" fieldSource="DATE_STUDENTFOLDER_CREATED" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="74" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="list_REGION" PathID="STUDENTlist_REGION" sourceType="Table" fieldSource="REGION" connection="connDECVPRODSQL2005" dataSource="REGION" orderBy="REGION_NAME" boundColumn="REGION_ID" textColumn="REGION_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="75" tableName="REGION" schemaName="dbo" posLeft="10" posTop="10" posWidth="160" posHeight="246"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="76" tableName="REGION" fieldName="REGION_ID"/>
						<Field id="77" tableName="REGION" fieldName="REGION_NAME"/>
					</Fields>
					<PKFields/>
				</ListBox>
				<TextBox id="195" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="VCE_CANDIDATE_NUMBER" PathID="STUDENTVCE_CANDIDATE_NUMBER" fieldSource="VCE_CANDIDATE_NUMBER" required="False" unique="True">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="199" name="VCE_CANDIDATE_NUMBER" errorMessage="The VCE CANDIDATE NUMBER must be 8 digits then a letter (eg: 12345678A)" regExp="^\d{8}[a-zA-Z]$"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="198"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="200" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STUDENT_EMAIL" PathID="STUDENTSTUDENT_EMAIL" fieldSource="STUDENT_EMAIL" caption="STUDENT EMAIL ADDRESS" unique="False" required="True">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="257" name="STUDENT_EMAIL" regExp="^[\w\.\+-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$" errorMessage="The STUDENT Email Address is not a valid Email Address eg: bob.student@example.com"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="212"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="201" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="STUDENT_MOBILE" PathID="STUDENTSTUDENT_MOBILE" fieldSource="STUDENT_MOBILE" caption="STUDENT MOBILE">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Regular Expression Validation" actionCategory="Validation" id="205" regExp="(^04\d{2,3}[\s\-]{0,1}\d{3}[\s\-]{0,1}\d{3}$)|(^0011[\s\-]{0,1}[0-9]{7,12}$)" errorMessage="STUDENT MOBILE Phone Number must be an Australian number, with numbers, spaces, or hyphens only. eg: 0412 345 678 or 0412-345-678, or International number starting with 0011..." name="STUDENT_MOBILE"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="208" fieldSourceType="DBColumn" dataType="Text" name="Hidden_CURR_RESID_ADDRESS_ID" PathID="STUDENTHidden_CURR_RESID_ADDRESS_ID" fieldSource="CURR_RESID_ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<CheckBox id="255" visible="Yes" fieldSourceType="DBColumn" dataType="Text" defaultValue="Checked" name="cbPORTAL_ACCESS" PathID="STUDENTcbPORTAL_ACCESS" fieldSource="PORTAL_ACCESS" checkedValue="&quot;Y&quot;" uncheckedValue="&quot;N&quot;">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="256"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</CheckBox>
				<ListBox id="258" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="listORG_SCHOOL_ID" wizardEmptyCaption="Select Value" PathID="STUDENTlistORG_SCHOOL_ID" caption="Extra Organisation" connection="connDECVPRODSQL2005" dataSource="SCHOOL" orderBy="SCHOOL_NAME" boundColumn="SCHOOL_ID" textColumn="SCHOOL_NAME" defaultValue="&quot;0&quot;" required="False" fieldSource="ORGANISATION_SCHOOL_ID">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="260" conditionType="Expression" useIsNull="False" expression="status=1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
						<TableParameter id="261" conditionType="Expression" useIsNull="False" dataType="Text" expression="SCHOOL_TYPE_CODE ='X'" field="SCHOOL_TYPE_CODE" logicOperator="And" parameterSource="SCHOOL_TYPE_CODE" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="259" posHeight="180" posLeft="10" posTop="10" posWidth="160" schemaName="dbo" tableName="SCHOOL"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="262" fieldName="SCHOOL_ID" tableName="SCHOOL"/>
						<Field id="263" fieldName="SCHOOL_NAME" tableName="SCHOOL"/>
					</Fields>
					<PKFields>
						<PKField id="264" dataType="Float" fieldName="SCHOOL_ID" tableName="SCHOOL"/>
					</PKFields>
					<Attributes/>
					<Features/>
				</ListBox>
				<TextBox id="296" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="SEX_SELF_DESCRIBED" PathID="STUDENTSEX_SELF_DESCRIBED" fieldSource="SEX_SELF_DESCRIBED" required="False" unique="False" validationRule="((SEX.Value?.ToString().Equals(&quot;X&quot;)) OrElse (SEX_SELF_DESCRIBED.Value Is Nothing) OrElse (SEX_SELF_DESCRIBED.Value.ToString().Trim().Length = 0))" validationText="Self-described gender cannot be specified for male or female">
					<Components/>
					<Events/>
					<Attributes>
						<Attribute id="325" name="placeholder" sourceType="Expression" source="&quot;Specify, if self-described&quot;"/>
					</Attributes>
					<Features/>
				</TextBox>
				<RadioButton id="326" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="SEX_BIRTH" fieldSource="SEX_BIRTH" caption="BIRTH SEX" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" connection="connDECVPRODSQL2005" _valueOfList="M" _nameOfList="Male" dataSource="F;Female;M;Male" PathID="STUDENTSEX_BIRTH" required="False">
					<Components/>
					<Events>
						<Event name="OnValidate" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="356"/>
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
				</RadioButton>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="DLookup" actionCategory="Database" id="41" typeOfTarget="Control" expression="&quot;rtrim(SCHOOL_NAME) as [SCHOOL_NAME]&quot;" domain="&quot;SCHOOL&quot;" dataType="Text" target="lblAttendingSchoolName" connection="connDECVPRODSQL2005" criteria="&quot;SCHOOL_ID = &quot; &amp; item.ATTENDING_SCHOOL_ID.GetFormattedValue()"/>
						<Action actionName="DLookup" actionCategory="Database" id="42" typeOfTarget="Control" expression="&quot;rtrim(SCHOOL_NAME) as [SCHOOL_NAME]&quot;" domain="&quot;SCHOOL&quot;" criteria="&quot;SCHOOL_ID = &quot; &amp; item.HOME_SCHOOL_ID.GetFormattedValue()" connection="connDECVPRODSQL2005" dataType="Text" target="lblHomeSchoolName"/>
						<Action actionName="DLookup" actionCategory="Database" id="56" typeOfTarget="Control" expression="&quot;rtrim(SUBCATEGORY_FULL_TITLE)&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;CATEGORY_CODE='&quot; &amp; item.CATEGORY_CODE.GetFormattedValue() &amp; &quot;' AND SUBCATEGORY_CODE='&quot; &amp; item.SUBCATEGORY_CODE.GetFormattedValue() &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="EnrolmentCategoryTemp"/>
						<Action actionName="Custom Code" actionCategory="General" id="63"/>
						<Action actionName="Custom Code" actionCategory="General" id="120"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="193"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="99" name="hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="dbutility.userid.tostring"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="100" name="hidden_LAST_ALTERED_DATE" sourceType="Expression" sourceName="Now()"/>
						<Action actionName="DLookup" actionCategory="Database" id="57" typeOfTarget="Control" expression="&quot;CATEGORY_CODE&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="CATEGORY_CODE"/>
						<Action actionName="DLookup" actionCategory="Database" id="58" typeOfTarget="Control" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" expression="&quot;SUBCATEGORY_CODE&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="SUBCATEGORY_CODE"/>
					</Actions>
				</Event>
				<Event name="BeforeInsert" type="Server">
					<Actions>
						<Action actionName="DLookup" actionCategory="Database" id="59" typeOfTarget="Control" expression="&quot;CATEGORY_CODE&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="CATEGORY_CODE"/>
						<Action actionName="DLookup" actionCategory="Database" id="60" typeOfTarget="Control" criteria="&quot;SUBCATEGORY_FULL_TITLE='&quot; &amp; STUDENTListBox_SubCategory.Value &amp; &quot;'&quot;" domain="&quot;ENROLMENT_CATEGORY&quot;" expression="&quot;SUBCATEGORY_CODE&quot;" connection="connDECVPRODSQL2005" dataType="Text" target="SUBCATEGORY_CODE"/>
					</Actions>
				</Event>
				<Event name="AfterUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="66"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="190"/>
					</Actions>
				</Event>
				<Event name="AfterExecuteInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="207"/>
					</Actions>
				</Event>
				<Event name="AfterExecuteUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="210"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="328" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="327" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="329" alias="MIDDLE_NAME" fieldName="MIDDLE_NAME" isExpression="False" tableName="STUDENT"/>
				<Field id="330" fieldName="STUDENT_ID" tableName="STUDENT"/>
				<Field id="331" alias="SURNAME" fieldName="SURNAME" isExpression="False" tableName="STUDENT"/>
				<Field id="332" alias="FIRST_NAME" fieldName="FIRST_NAME" isExpression="False" tableName="STUDENT"/>
				<Field id="333" fieldName="BIRTH_DATE" tableName="STUDENT"/>
				<Field id="334" fieldName="SEX" tableName="STUDENT"/>
				<Field id="335" fieldName="CATEGORY_CODE" tableName="STUDENT"/>
				<Field id="336" fieldName="SUBCATEGORY_CODE" tableName="STUDENT"/>
				<Field id="337" fieldName="ATTENDING_SCHOOL_ID" tableName="STUDENT"/>
				<Field id="338" fieldName="HOME_SCHOOL_ID" tableName="STUDENT"/>
				<Field id="339" fieldName="FULL_TIME" tableName="STUDENT"/>
				<Field id="340" fieldName="REGION" tableName="STUDENT"/>
				<Field id="341" fieldName="VSN" tableName="STUDENT"/>
				<Field id="342" fieldName="PREFERRED_NAME" tableName="STUDENT"/>
				<Field id="343" fieldName="ENROLLEDBEFORE" tableName="STUDENT"/>
				<Field id="344" fieldName="LAST_ALTERED_BY" tableName="STUDENT"/>
				<Field id="345" fieldName="LAST_ALTERED_DATE" tableName="STUDENT"/>
				<Field id="346" fieldName="DATE_STUDENTFOLDER_CREATED" tableName="STUDENT"/>
				<Field id="347" fieldName="VCE_CANDIDATE_NUMBER" tableName="STUDENT"/>
				<Field id="348" fieldName="STUDENT_EMAIL" tableName="STUDENT"/>
				<Field id="349" fieldName="STUDENT_MOBILE" tableName="STUDENT"/>
				<Field id="350" fieldName="CURR_RESID_ADDRESS_ID" tableName="STUDENT"/>
				<Field id="351" fieldName="PORTAL_ACCESS" tableName="STUDENT"/>
				<Field id="352" fieldName="ORGANISATION_SCHOOL_ID" tableName="STUDENT"/>
				<Field id="353" fieldName="SEX_SELF_DESCRIBED" tableName="STUDENT"/>
				<Field id="354" fieldName="SEX_BIRTH" tableName="STUDENT"/>
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
				<PKField id="355" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT"/>
			</PKFields>
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentDetails_maintain.aspx" forShow="True" url="StudentDetails_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentDetails_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentDetails_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="221" groupID="2"/>
		<Group id="222" groupID="3"/>
		<Group id="223" groupID="4"/>
		<Group id="224" groupID="5"/>
		<Group id="225" groupID="6"/>
		<Group id="226" groupID="7"/>
		<Group id="227" groupID="9"/>
		<Group id="228" groupID="12"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnInitializeView" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="192"/>
			</Actions>
		</Event>
	</Events>
</Page>
