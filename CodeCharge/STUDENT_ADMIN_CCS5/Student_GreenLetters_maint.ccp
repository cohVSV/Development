<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="3" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="SQL" defaultPageSize="20" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewMaintainSearchRequest" connection="connDECVPRODSQL2005" dataSource="SELECT GREEN_AMBER_RED_LETTERS.*, SURNAME, FIRST_NAME, YEAR_LEVEL, PASTORAL_CARE_ID, datediff(DAY, isnull(GREEN_AMBER_RED_LETTERS.GREEN_LETTER_SENT_DATE, getdate()), getdate()) AS DaysSince_Green,
datediff(DAY, isnull(GREEN_AMBER_RED_LETTERS.AMBER_LETTER_SENT_DATE, getdate()), getdate()) AS DaysSince_Amber, datediff(DAY, isnull(FIRST_ADDED_DATE, getdate()), getdate()) AS DaysSince_Added 
FROM viewMaintainSearchRequest_SupportTeacher INNER JOIN GREEN_AMBER_RED_LETTERS ON
viewMaintainSearchRequest_SupportTeacher.ENROLMENT_YEAR = GREEN_AMBER_RED_LETTERS.ENROLMENT_YEAR AND viewMaintainSearchRequest_SupportTeacher.STUDENT_ID = GREEN_AMBER_RED_LETTERS.STUDENT_ID
WHERE viewMaintainSearchRequest_SupportTeacher.PASTORAL_CARE_ID LIKE '%{s_STAFF_ID}%'
AND GREEN_AMBER_RED_LETTERS.STUDENT_ID = (case when {s_STUDENT_ID}=0 then GREEN_AMBER_RED_LETTERS.STUDENT_ID else {s_STUDENT_ID} end) 
AND ( GREEN_AMBER_RED_LETTERS.ENROLMENT_YEAR = YEAR(GETDATE()) ) 
and YEAR_LEVEL &gt;= (case when '{s_SUBSCHOOL}'='F-9' then 0 else 10 end)
and YEAR_LEVEL &lt;= (case when '{s_SUBSCHOOL}'='F-9' then 9 else 12 end)" pageSizeLimit="100" wizardGridPageSize="True" wizardUseSearch="True" allowCancel="True" wizardSubmitConfirmation="False" wizardCaption="Maintain Amber / Red Letters" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Students with Green Letters found for that Student ID or Support Teacher!" wizardGridKey="ID" wizardGridPaging="Centered" wizardAddNbsp="False" wizardTotalRecords="True" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="viewMaintainSearchRequest" deleteControl="CheckBox_Delete" composition="4" isParent="True" customUpdateType="Table" activeCollection="UFormElements" activeTableType="GREEN_AMBER_RED_LETTERS" customUpdate="GREEN_AMBER_RED_LETTERS">
			<Components>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="viewMaintainSearchRequest_TotalRecords" wizardUseTemplateBlock="False" PathID="viewMaintainSearchRequestviewMaintainSearchRequest_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="15"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="18" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="19" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="21" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="22" visible="True" name="Sorter_PASTORAL_CARE_ID" column="PASTORAL_CARE_ID" wizardCaption="PASTORAL CARE ID" wizardSortingType="SimpleDir" wizardControl="PASTORAL_CARE_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_PASTORAL_CARE_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="23" visible="True" name="Sorter_FIRST_ADDED_DATE" column="FIRST_ADDED_DATE" wizardCaption="FIRST ADDED DATE" wizardSortingType="SimpleDir" wizardControl="FIRST_ADDED_DATE" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_FIRST_ADDED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="24" visible="True" name="Sorter_GREEN_LETTER_SENT_FLAG" column="GREEN_LETTER_SENT_FLAG" wizardCaption="GREEN LETTER SENT FLAG" wizardSortingType="SimpleDir" wizardControl="GREEN_LETTER_SENT_FLAG" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_GREEN_LETTER_SENT_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="25" visible="True" name="Sorter_GREEN_LETTER_SENT_DATE" column="GREEN_LETTER_SENT_DATE" wizardCaption="GREEN LETTER SENT DATE" wizardSortingType="SimpleDir" wizardControl="GREEN_LETTER_SENT_DATE" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_GREEN_LETTER_SENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_AMBER_LETTER_SENT_FLAG" column="AMBER_LETTER_SENT_FLAG" wizardCaption="AMBER LETTER SENT FLAG" wizardSortingType="SimpleDir" wizardControl="AMBER_LETTER_SENT_FLAG" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_AMBER_LETTER_SENT_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_AMBER_LETTER_SENT_DATE" column="AMBER_LETTER_SENT_DATE" wizardCaption="AMBER LETTER SENT DATE" wizardSortingType="SimpleDir" wizardControl="AMBER_LETTER_SENT_DATE" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_AMBER_LETTER_SENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_RED_LETTER_SENT_FLAG" column="RED_LETTER_SENT_FLAG" wizardCaption="RED LETTER SENT FLAG" wizardSortingType="SimpleDir" wizardControl="RED_LETTER_SENT_FLAG" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_RED_LETTER_SENT_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="29" visible="True" name="Sorter_RED_LETTER_SENT_DATE" column="RED_LETTER_SENT_DATE" wizardCaption="RED LETTER SENT DATE" wizardSortingType="SimpleDir" wizardControl="RED_LETTER_SENT_DATE" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_RED_LETTER_SENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="30" visible="True" name="Sorter_LAST_ALTERED_BY" column="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="32" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="STUDENT ID" PathID="viewMaintainSearchRequestSTUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="StudentSummary.ccp" linkProperties="{'textSource':'','textSourceDB':'STUDENT_ID','hrefSource':'StudentSummary.ccp','hrefSourceDB':'','title':'open Summary in new tab','target':'_blank','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID'},'1':{'sourceType':'DataField','parameterSource':'ENROLMENT_YEAR','parameterName':'ENROLMENT_YEAR'},'length':2,'objectType':'linkParameters'}}"><Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="284" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="285" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SURNAME" PathID="viewMaintainSearchRequestSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="34" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="FIRST NAME" PathID="viewMaintainSearchRequestFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="35" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="YEAR LEVEL" PathID="viewMaintainSearchRequestYEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="36" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="PASTORAL_CARE_ID" fieldSource="PASTORAL_CARE_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="PASTORAL CARE ID" PathID="viewMaintainSearchRequestPASTORAL_CARE_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="37" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="FIRST_ADDED_DATE" fieldSource="FIRST_ADDED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="FIRST ADDED DATE" format="dd mmm yyyy" PathID="viewMaintainSearchRequestFIRST_ADDED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="38" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="GREEN_LETTER_SENT_FLAG" fieldSource="GREEN_LETTER_SENT_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="GREEN LETTER SENT FLAG" caption="GREEN LETTER SEND" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="viewMaintainSearchRequestGREEN_LETTER_SENT_FLAG" dataSource="Y;&lt;font color='green'&gt;YES - Send&lt;/font&gt;;N;Do Not Send"><Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="137"/>
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
				</RadioButton>
				<TextBox id="39" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="GREEN_LETTER_SENT_DATE" fieldSource="GREEN_LETTER_SENT_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="GREEN LETTER SENT DATE" caption="GREEN LETTER SENT DATE" required="False" format="dd/mm/yyyy" unique="False" wizardSize="10" wizardMaxLength="100" PathID="viewMaintainSearchRequestGREEN_LETTER_SENT_DATE" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="41" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="AMBER_LETTER_SENT_FLAG" fieldSource="AMBER_LETTER_SENT_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="AMBER LETTER SENT FLAG" caption="AMBER LETTER SENT" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="viewMaintainSearchRequestAMBER_LETTER_SENT_FLAG" dataSource="Y;&lt;font color='orange'&gt;YES - Sent&lt;/font&gt;;N;Not sent"><Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="136"/>
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
				</RadioButton>
				<TextBox id="42" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="AMBER_LETTER_SENT_DATE" fieldSource="AMBER_LETTER_SENT_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="AMBER LETTER SENT DATE" caption="AMBER LETTER SENT DATE" required="False" format="dd/mm/yyyy" unique="False" wizardSize="10" wizardMaxLength="100" PathID="viewMaintainSearchRequestAMBER_LETTER_SENT_DATE" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="44" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="RED_LETTER_SENT_FLAG" fieldSource="RED_LETTER_SENT_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="RED LETTER SENT FLAG" caption="RED LETTER SENT" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="viewMaintainSearchRequestRED_LETTER_SENT_FLAG" dataSource="Y;&lt;font color='red'&gt;YES - Sent&lt;/font&gt;;N;Not sent"><Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="135"/>
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
				</RadioButton>
				<TextBox id="45" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="RED_LETTER_SENT_DATE" fieldSource="RED_LETTER_SENT_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="RED LETTER SENT DATE" caption="RED LETTER SENT DATE" required="False" format="dd/mm/yyyy" unique="False" wizardSize="10" wizardMaxLength="100" PathID="viewMaintainSearchRequestRED_LETTER_SENT_DATE" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Label id="47" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="LAST ALTERED BY" PathID="viewMaintainSearchRequestLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="49" visible="Dynamic" fieldSourceType="CodeExpression" dataType="Boolean" defaultValue="Unchecked" name="CheckBox_Delete" checkedValue="true" uncheckedValue="false" wizardCaption="Delete" wizardAddNbsp="True" PathID="viewMaintainSearchRequestCheckBox_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Navigator id="50" size="10" type="Centered" pageSizes="20;50;100;250;500" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardPageSize="True" wizardImagesScheme="Blueprint">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Button id="51" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="viewMaintainSearchRequestButton_Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="52" urlType="Relative" enableValidation="False" isDefault="False" name="Cancel" operation="Cancel" wizardCaption="Cancel" PathID="viewMaintainSearchRequestCancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<DatePicker id="70" name="DatePicker_GREEN_LETTER_SENT_DATE1" PathID="viewMaintainSearchRequestDatePicker_GREEN_LETTER_SENT_DATE1" control="GREEN_LETTER_SENT_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<DatePicker id="71" name="DatePicker_AMBER_LETTER_SENT_DATE1" PathID="viewMaintainSearchRequestDatePicker_AMBER_LETTER_SENT_DATE1" control="AMBER_LETTER_SENT_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<DatePicker id="72" name="DatePicker_RED_LETTER_SENT_DATE1" PathID="viewMaintainSearchRequestDatePicker_RED_LETTER_SENT_DATE1" control="RED_LETTER_SENT_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
				<Hidden id="102" fieldSourceType="DBColumn" dataType="Integer" name="hidden_DaysSince_Green" PathID="viewMaintainSearchRequesthidden_DaysSince_Green" fieldSource="DaysSince_Green" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="103" fieldSourceType="DBColumn" dataType="Integer" name="hidden_DaysSince_Amber" PathID="viewMaintainSearchRequesthidden_DaysSince_Amber" fieldSource="DaysSince_Amber" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="48" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="LAST ALTERED DATE" format="dd mmm yyyy" PathID="viewMaintainSearchRequestLAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="152" visible="True" name="Sorter_LAST_ALTERED_DATE1" column="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_LAST_ALTERED_DATE1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="118" name="intDaysSince_Green" type="Integer" initialValue="0"/>
						<Action actionName="Declare Variable" actionCategory="General" id="119" name="intDaysSince_Amber" type="Integer" initialValue="0"/>
						<Action actionName="Custom Code" actionCategory="General" id="120"/>
						<Action actionName="Save Control Value" actionCategory="General" id="104" name="hidden_DaysSince_Green" sourceType="Variable" sourceName="intDaysSince_Green"/>
						<Action actionName="Save Control Value" actionCategory="General" id="105" name="hidden_DaysSince_Amber" sourceType="Variable" sourceName="intDaysSince_Amber"/>
						<Action actionName="Custom Code" actionCategory="General" id="73"/>
					</Actions>
				</Event>
				<Event name="AfterSubmit" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="176"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="290" dataType="Text" parameterSource="s_STAFF_ID" parameterType="URL" variable="s_STAFF_ID"/>
<SQLParameter id="291" dataType="Float" defaultValue="0" parameterSource="s_STUDENT_ID" parameterType="URL" variable="s_STUDENT_ID"/>
<SQLParameter id="292" dataType="Text" defaultValue="&quot;F-9&quot;" parameterSource="s_SUBSCHOOL" parameterType="URL" variable="s_SUBSCHOOL"/>
</SQLParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks>
			</JoinLinks>
			<Fields>
			</Fields>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="115" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="116" conditionType="Parameter" useIsNull="False" field="ID" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="108" field="GREEN_LETTER_SENT_FLAG" dataType="Text" parameterType="Control" parameterSource="GREEN_LETTER_SENT_FLAG"/>
				<CustomParameter id="109" field="GREEN_LETTER_SENT_DATE" dataType="Date" parameterType="Control" parameterSource="GREEN_LETTER_SENT_DATE" format="dd/mm/yyyy"/>
				<CustomParameter id="110" field="AMBER_LETTER_SENT_FLAG" dataType="Text" parameterType="Control" parameterSource="AMBER_LETTER_SENT_FLAG"/>
				<CustomParameter id="111" field="AMBER_LETTER_SENT_DATE" dataType="Date" parameterType="Control" parameterSource="AMBER_LETTER_SENT_DATE" format="dd/mm/yyyy"/>
				<CustomParameter id="112" field="RED_LETTER_SENT_FLAG" dataType="Text" parameterType="Control" parameterSource="RED_LETTER_SENT_FLAG"/>
				<CustomParameter id="113" field="RED_LETTER_SENT_DATE" dataType="Date" parameterType="Control" parameterSource="RED_LETTER_SENT_DATE" format="dd/mm/yyyy"/>
				<CustomParameter id="114" field="LAST_ALTERED_DATE" dataType="Text" parameterType="Expression" defaultValue="NOW()" omitIfEmpty="False" parameterSource="NOW()"/>
				<CustomParameter id="117" field="LAST_ALTERED_BY" dataType="Text" parameterType="Expression" omitIfEmpty="True" parameterSource="DBUtility.UserID.ToUpper"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Record id="53" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="GREEN_AMBER_RED_LETTERS_v" searchIds="53" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="False" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="EditableGrid" returnPage="Student_GreenLetters_maint.ccp" PathID="GREEN_AMBER_RED_LETTERS_v" composition="4">
			<Components>
				<Button id="54" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="GREEN_AMBER_RED_LETTERS_vButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="55" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="s_STAFF_ID" fieldSource="PASTORAL_CARE_ID" wizardIsPassword="False" wizardEmptyCaption="Select Value" wizardCaption="PASTORAL CARE ID" caption="Support Teacher" required="False" unique="False" PathID="GREEN_AMBER_RED_LETTERS_vs_STAFF_ID" connection="connDECVPRODSQL2005" dataSource="View_StaffList_Active_Inactive" orderBy="staffname" boundColumn="staff_ID" textColumn="staffname">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="58" conditionType="Expression" useIsNull="False" expression="status = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="57" posHeight="152" posLeft="10" posTop="10" posWidth="125" schemaName="dbo" tableName="View_StaffList_Active_Inactive"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="59" fieldName="staff_ID" tableName="View_StaffList_Active_Inactive"/>
						<Field id="60" fieldName="staffname" tableName="View_StaffList_Active_Inactive"/>
					</Fields>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<TextBox id="56" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardCaption="STUDENT ID" caption="STUDENT ID" required="False" unique="False" wizardSize="12" wizardMaxLength="12" PathID="GREEN_AMBER_RED_LETTERS_vs_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="289" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="s_SUBSCHOOL" PathID="GREEN_AMBER_RED_LETTERS_vs_SUBSCHOOL" caption="Sub School" dataSource="F-9;F to Yr 9;VCE;Senior (10-11-12)" defaultValue="&quot;F-9&quot;">
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
			</Components>
			<Events/>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
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
		<Record id="177" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="GREEN_AMBER_RED_LETTERS" connection="connDECVPRODSQL2005" dataSource="GREEN_AMBER_RED_LETTERS" errorSummator="Error" allowCancel="True" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add Green Letter Student" wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="True" recordDirection="Vertical" templatePageRecord="C:/Users/decv_development/Documents/CodeCharge Studio 5 Projects/svn_STUDENT_ADMIN_CCS5/Templates/Record/Horizontal.ccp|userTemplate" recordAddTemplatePanel="False" PathID="GREEN_AMBER_RED_LETTERS" customInsertType="SQL" parameterTypeListName="ParameterTypeList" activeCollection="ISQLParameters" customInsert="INSERT into GREEN_AMBER_RED_LETTERS (STUDENT_ID, ENROLMENT_YEAR, GREEN_LETTER_SENT_FLAG, GREEN_LETTER_SENT_DATE,  LAST_ALTERED_BY, LAST_ALTERED_DATE, FIRST_ADDED_DATE)
SELECT student_id, year(getdate()), '{GREEN_LETTER_SENT_FLAG}', '{GREEN_LETTER_SENT_DATE}', '{LAST_ALTERED_BY}' , getdate(), getdate()
FROM STUDENT_ENROLMENT
WHERE student_id = {STUDENT_ID} 
 AND enrolment_status = 'E'
 AND enrolment_year = year(getdate())
 AND student_id not in (select distinct student_id from GREEN_AMBER_RED_LETTERS where enrolment_year = year(getdate()))"><Components><Button id="179" urlType="Relative" enableValidation="True" isDefault="True" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="GREEN_AMBER_RED_LETTERSButton_Insert"><Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="180" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="GREEN_AMBER_RED_LETTERSButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="182" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="STUDENT ID" caption="STUDENT ID" required="True" unique="False" wizardSize="12" wizardMaxLength="12" PathID="GREEN_AMBER_RED_LETTERSSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="184" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="GREEN_LETTER_SENT_FLAG" fieldSource="GREEN_LETTER_SENT_FLAG" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="GREEN LETTER SENT FLAG" caption="GREEN LETTER SEND FLAG" required="False" unique="False" connection="connDECVPRODSQL2005" PathID="GREEN_AMBER_RED_LETTERSGREEN_LETTER_SENT_FLAG" dataSource="Y;&lt;font color='green'&gt;YES - Send&lt;/font&gt;;N;Do Not Send"><Components/>
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
				<TextBox id="185" visible="Dynamic" fieldSourceType="DBColumn" dataType="Date" name="GREEN_LETTER_SENT_DATE" fieldSource="GREEN_LETTER_SENT_DATE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="GREEN LETTER SENT DATE" caption="GREEN LETTER SENT DATE" required="False" format="dd/mm/yyyy" unique="False" wizardSize="10" wizardMaxLength="100" PathID="GREEN_AMBER_RED_LETTERSGREEN_LETTER_SENT_DATE" generateDiv="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Hidden id="187" fieldSourceType="DBColumn" dataType="Text" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardIsPassword="False" wizardUseTemplateBlock="False" visible="Yes" wizardCaption="LAST ALTERED BY" caption="LAST ALTERED BY" required="False" unique="False" PathID="GREEN_AMBER_RED_LETTERSLAST_ALTERED_BY" defaultValue="DBUtility.UserID.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<DatePicker id="190" name="DatePicker_GREEN_LETTER_SENT_DATE1" PathID="GREEN_AMBER_RED_LETTERSDatePicker_GREEN_LETTER_SENT_DATE1" control="GREEN_LETTER_SENT_DATE" wizardDatePickerType="Image" wizardPicture="Styles/Blueprint/Images/DatePicker.gif" style="Styles/Blueprint/Style.css">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</DatePicker>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="203" name="tmpSTUDENT_ID" type="Text"/>
						<Action actionName="Declare Variable" actionCategory="General" id="205" name="tmpCountValid" type="Integer" initialValue="0"/>
						<Action actionName="Custom Code" actionCategory="General" id="204"/>
						<Action actionName="DLookup" actionCategory="Database" id="199" typeOfTarget="Variable" expression="&quot;count(*)&quot;" domain="&quot;student_enrolment&quot;" criteria="&quot;enrolment_year = year(getdate()) and year_level between 0 and 12 and enrolment_status='E' and student_id = &quot;  &amp;  tmpSTUDENT_ID" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpCountValid"/>
						<Action actionName="Custom Code" actionCategory="General" id="202"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="206"/>
						<Action actionName="Custom Code" actionCategory="General" id="208"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="181" conditionType="Parameter" useIsNull="False" field="ID" parameterSource="ID" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="178" schemaName="dbo" tableName="GREEN_AMBER_RED_LETTERS"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters>
				<SQLParameter id="195" variable="STUDENT_ID" parameterType="Control" dataType="Text" parameterSource="STUDENT_ID"/>
				<SQLParameter id="196" variable="GREEN_LETTER_SENT_FLAG" parameterType="Control" dataType="Text" parameterSource="GREEN_LETTER_SENT_FLAG"/>
				<SQLParameter id="197" variable="GREEN_LETTER_SENT_DATE" parameterType="Control" defaultValue="Today()" dataType="Date" DBFormat="yyyy-mm-dd HH:nn:ss" format="dd/mm/yyyy" parameterSource="GREEN_LETTER_SENT_DATE"/>
				<SQLParameter id="198" variable="LAST_ALTERED_BY" parameterType="Control" dataType="Text" parameterSource="LAST_ALTERED_BY"/>
			</ISQLParameters>
			<IFormElements>
				<CustomParameter id="191" field="STUDENT_ID" dataType="Float" parameterType="Control" parameterSource="STUDENT_ID"/>
				<CustomParameter id="192" field="GREEN_LETTER_SENT_FLAG" dataType="Text" parameterType="Control" parameterSource="GREEN_LETTER_SENT_FLAG"/>
				<CustomParameter id="193" field="GREEN_LETTER_SENT_DATE" dataType="Date" parameterType="Control" parameterSource="GREEN_LETTER_SENT_DATE" format="dd/mm/yyyy"/>
				<CustomParameter id="194" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="LAST_ALTERED_BY"/>
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
		</Record>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_GreenLetters_maint.aspx" forShow="True" url="Student_GreenLetters_maint.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_GreenLetters_maint.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_GreenLetters_maintDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="167" groupID="2"/>
		<Group id="168" groupID="3"/>
		<Group id="169" groupID="4"/>
		<Group id="170" groupID="5"/>
		<Group id="171" groupID="6"/>
		<Group id="172" groupID="7"/>
		<Group id="173" groupID="8"/>
		<Group id="174" groupID="9"/>
		<Group id="175" groupID="11"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="207"/>
			</Actions>
		</Event>
	</Events>
</Page>
