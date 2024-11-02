<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" useDesign="False" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Menu_Student_maintain" PathID="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="3" name="StudentNamePlate" PathID="StudentNamePlate" page="StudentNamePlate.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="STUDENT_CARER_CONTACT3" dataSource="STUDENT_CARER_CONTACT, STUDENT" errorSummator="Error" wizardCaption="Add/Edit STUDENT CARER CONTACT " wizardFormMethod="post" PathID="STUDENT_CARER_CONTACT3" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" parameterTypeListName="ParameterTypeList" activeCollection="UConditions" returnPage="Student_Carer_FamilyGrouping.ccp" removeParameters="STUDENT_ID_OTHER" customUpdateType="Table" activeTableType="customUpdate" customUpdate="STUDENT">
			<Components>
				<Button id="5" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="STUDENT_CARER_CONTACT3Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENT_CARER_CONTACT3Button_Update">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="282" message="Update Both to This Carer?"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="7" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" wizardCaption="Delete" PathID="STUDENT_CARER_CONTACT3Button_Delete">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="13" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="RELATIONSHIP" fieldSource="RELATIONSHIP" required="True" caption="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardEmptyCaption="Select Value" PathID="STUDENT_CARER_CONTACT3RELATIONSHIP" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other">
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
				<Label id="15" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="WORK_PHONE" fieldSource="WORK_PHONE" required="False" caption="WORK PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3WORK_PHONE" html="False">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="MOBILE" fieldSource="MOBILE" required="False" caption="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3MOBILE" html="False">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="EMAIL" fieldSource="EMAIL" required="False" caption="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3EMAIL" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" required="True" caption="LAST ALTERED BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" required="True" caption="LAST ALTERED DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="21" fieldSourceType="DBColumn" dataType="Text" name="Hidden_STUDENT_ID" PathID="STUDENT_CARER_CONTACT3Hidden_STUDENT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="22" name="Hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="23" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT3Hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3FIRST_NAME" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME / FAMILY" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="STUDENT_CARER_CONTACT3SURNAME" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
					</Features>
				</Label>
				<Label id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="HOME_PHONE" caption="HOME PHONE" fieldSource="HOME_PHONE" required="False" PathID="STUDENT_CARER_CONTACT3HOME_PHONE" html="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="48" fieldSourceType="DBColumn" dataType="Text" name="Hidden_STUDENT_ID_OTHER" PathID="STUDENT_CARER_CONTACT3Hidden_STUDENT_ID_OTHER">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="49" name="Hidden_STUDENT_ID_OTHER" sourceType="URL" sourceName="STUDENT_ID_OTHER" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="59" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Student_Firstname" PathID="STUDENT_CARER_CONTACT3Student_Firstname" fieldSource="STUDENT_FIRST_NAME" defaultValue="&quot;No Carer Yet!&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="60" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Student_Surname" PathID="STUDENT_CARER_CONTACT3Student_Surname" fieldSource="STUDENT_SURNAME" defaultValue="&quot;Search and add to family group&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="196" fieldSourceType="DBColumn" dataType="Integer" name="Dupe_CARER_ID" PathID="STUDENT_CARER_CONTACT3Dupe_CARER_ID" html="False" fieldSource="CARER_ID" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="27" name="Hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="194"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="238" action="Hide" conditionType="Parameter" dataType="Text" componentName="Button_Update" condition="Equal" name1="STUDENT_ID_OTHER" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="251" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="248" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_CARER_CONTACT"/>
				<JoinTable id="249" posHeight="180" posLeft="191" posTop="10" posWidth="160" tableName="STUDENT"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="250" conditionType="Equal" fieldLeft="STUDENT_CARER_CONTACT.CARER_ID" fieldRight="STUDENT.CARER_ID_PARENT_A" joinType="inner" tableLeft="STUDENT_CARER_CONTACT" tableRight="STUDENT"/>
			</JoinLinks>
			<Fields>
				<Field id="252" alias="STUDENT_SURNAME" fieldName="rtrim(STUDENT.SURNAME)" isExpression="True"/>
				<Field id="253" alias="STUDENT_FIRST_NAME" fieldName="rtrim(STUDENT.FIRST_NAME)" isExpression="True"/>
				<Field id="254" fieldName="STUDENT_ID" tableName="STUDENT"/>
				<Field id="255" fieldName="STUDENT_CARER_CONTACT.*" tableName="STUDENT_CARER_CONTACT"/>
			</Fields>
			<ISPParameters>
				<SPParameter id="Key197" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key198" parameterName="@Contact_ID" parameterSource="CARER_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18" defaultValue="0"/>
				<SPParameter id="Key199" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key200" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key201" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key202" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key203" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key204" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key205" parameterName="@Home_Phone" parameterSource="HOME_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key206" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key207" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key208" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key209" parameterName="@Last_Altered_By" parameterSource="Hidden_LAST_ALTERED_BY" dataType="VarChar" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="29" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="30" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="31" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="32" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="33" field="HOME_PHONE" dataType="Text" parameterType="Control" parameterSource="HOME_PHONE"/>
				<CustomParameter id="34" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="35" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="36" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="37" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="Key218" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key219" parameterName="@Contact_ID" parameterSource="CARER_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18" defaultValue="0"/>
				<SPParameter id="Key220" parameterName="@Student_ID" parameterSource="Student_ID" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key221" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Numeric" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key222" parameterName="@Title" parameterSource="TITLE" dataType="VarChar" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key223" parameterName="@Surname" parameterSource="SURNAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key224" parameterName="@FirstName" parameterSource="FIRST_NAME" dataType="VarChar" parameterType="Control" dataSize="30" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key225" parameterName="@Relation" parameterSource="RELATIONSHIP" dataType="VarChar" parameterType="Control" dataSize="2" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key226" parameterName="@Home_Phone" parameterSource="HOME_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key227" parameterName="@Work_Phone" parameterSource="WORK_PHONE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key228" parameterName="@Mobile" parameterSource="MOBILE" dataType="VarChar" parameterType="Control" dataSize="20" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key229" parameterName="@Email" parameterSource="EMAIL" dataType="VarChar" parameterType="Control" dataSize="250" direction="Input" scale="0" precision="18"/>
				<SPParameter id="Key230" parameterName="@Last_Altered_By" parameterSource="Hidden_LAST_ALTERED_BY" dataType="VarChar" parameterType="Control" dataSize="8" direction="Input" scale="0" precision="18"/>
			</USPParameters>
			<USQLParameters>
				<SQLParameter id="188" variable="thisCarerID" parameterType="DataSourceColumn" defaultValue="0" dataType="Integer" parameterSource="CARER_ID"/>
				<SQLParameter id="189" variable="Hidden_STUDENT_ID_OTHER" parameterType="Control" dataType="Text" parameterSource="Hidden_STUDENT_ID_OTHER"/>
			</USQLParameters>
			<UConditions>
				<TableParameter id="191" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="Control" logicOperator="And" parameterSource="Hidden_STUDENT_ID_OTHER"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="190" field="CARER_ID_PARENT_A" dataType="Integer" parameterType="Control" parameterSource="Dupe_CARER_ID" omitIfEmpty="True" defaultValue="0"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Record>
		<Grid id="61" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="15" name="viewMaintainSearchRequest" connection="connDECVPRODSQL2005" dataSource="viewMaintainSearchRequest" pageSizeLimit="100" pageSize="False" wizardCaption="Students to add to Family Group" wizardThemeApplyTo="Page" wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Student Details found!" wizardGridPagingType="Centered" wizardUseSearch="True" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" PathID="viewMaintainSearchRequest" composition="1" isParent="True">
			<Components>
				<Sorter id="65" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="66" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="67" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="68" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="69" visible="True" name="Sorter_ENROLMENT_STATUS" column="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_STATUS" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="70" visible="True" name="Sorter_PASTORAL_CARE_ID" column="PASTORAL_CARE_ID" wizardCaption="PASTORAL CARE ID" wizardSortingType="SimpleDir" wizardControl="PASTORAL_CARE_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequestSorter_PASTORAL_CARE_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="71" visible="Yes" fieldSourceType="DBColumn" dataType="Float" html="False" hrefType="Page" preserveParameters="GET" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardIsPassword="False" wizardUseTemplateBlock="False" hrefSource="Student_Carer_FamilyGrouping.ccp" linkProperties="{'textSource':'','textSourceDB':'STUDENT_ID','hrefSource':'Student_Carer_FamilyGrouping.ccp','hrefSourceDB':'STUDENT_ID','title':'','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID_OTHER'},'1':{'sourceType':'DataField','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID_OTHER'},'length':2,'objectType':'linkParameters'}}" wizardAddNbsp="True" PathID="viewMaintainSearchRequestSTUDENT_ID" removeParameters="s_SURNAME;s_STUDENT_ID" urlType="Relative">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="83" sourceType="DataField" name="STUDENT_ID_OTHER" source="STUDENT_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="72" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequestSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="73" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequestFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="74" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewMaintainSearchRequestYEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="75" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequestENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="76" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="PASTORAL_CARE_ID" fieldSource="PASTORAL_CARE_ID" wizardCaption="PASTORAL CARE ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequestPASTORAL_CARE_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="77" size="10" type="Centered" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Centered" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardPageNumbers="Centered" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="186" action="Hide" conditionType="Parameter" dataType="Text" componentName="viewMaintainSearchRequest" condition="NotEqual" name1="STUDENT_ID_OTHER" sourceType1="URL" sourceType2="Expression" name2="&quot;&quot;"/>
						<Action actionName="Custom Code" actionCategory="General" id="237"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="90" conditionType="Parameter" useIsNull="False" dataType="Text" field="SURNAME" leftBrackets="1" logicOperator="Or" orderNumber="1" parameterSource="s_SURNAME" parameterType="URL" searchConditionType="Contains" searchFormParameter="True"/>
				<TableParameter id="91" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" orderNumber="2" parameterSource="s_STUDENT_ID" parameterType="URL" rightBrackets="1" searchConditionType="Equal" searchFormParameter="True"/>
				<TableParameter id="92" conditionType="Parameter" useIsNull="False" dataType="Float" expression="ENROLMENT_YEAR = YEAR(getdate())" field="ENROLMENT_YEAR" logicOperator="And" parameterSource="ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="89" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="viewMaintainSearchRequest"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="93" fieldName="STUDENT_ID" tableName="viewMaintainSearchRequest"/>
				<Field id="94" fieldName="SURNAME" tableName="viewMaintainSearchRequest"/>
				<Field id="95" fieldName="FIRST_NAME" tableName="viewMaintainSearchRequest"/>
				<Field id="96" fieldName="YEAR_LEVEL" tableName="viewMaintainSearchRequest"/>
				<Field id="97" fieldName="ENROLMENT_STATUS" tableName="viewMaintainSearchRequest"/>
				<Field id="98" fieldName="PASTORAL_CARE_ID" tableName="viewMaintainSearchRequest"/>
			</Fields>
			<PKFields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Grid>
		<Record id="78" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewMaintainSearchRequestSearch" searchIds="78" fictitiousConnection="connDECVPRODSQL2005" wizardCaption="Search  " wizardOrientation="Vertical" wizardFormMethod="post" gridSearchClearLink="True" wizardTypeComponent="Search" gridSearchType="And" wizardInteractiveSearch="False" gridSearchRecPerPage="False" wizardTypeButtons="button" wizardDefaultButton="True" gridSearchSortField="False" wizardUseInterVariables="False" wizardThemeApplyTo="Page" addTemplatePanel="False" wizardType="Grid" returnPage="Student_Carer_FamilyGrouping.ccp" PathID="viewMaintainSearchRequestSearch" composition="1">
			<Components>
				<Link id="79" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="Student_Carer_FamilyGrouping.ccp" removeParameters="s_SURNAME;s_STUDENT_ID;STUDENT_ID_OTHER" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="viewMaintainSearchRequestSearchClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="80" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="viewMaintainSearchRequestSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="81" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardCaption="SURNAME" caption="SURNAME" required="False" unique="False" wizardSize="30" wizardMaxLength="30" PathID="viewMaintainSearchRequestSearchs_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="82" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_STUDENT_ID" fieldSource="STUDENT_ID" wizardIsPassword="False" wizardCaption="STUDENT ID" caption="STUDENT ID" required="False" unique="False" wizardSize="12" wizardMaxLength="12" PathID="viewMaintainSearchRequestSearchs_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
			</Events>
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
		<Record id="99" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT_CARER_CONTACT4" connection="connDECVPRODSQL2005" dataSource="STUDENT_CARER_CONTACT, STUDENT" returnPage="Student_Carer_FamilyGrouping.ccp" removeParameters="STUDENT_ID_OTHER" PathID="STUDENT_CARER_CONTACT4" customUpdateType="Table" activeCollection="UConditions" activeTableType="customUpdate" customUpdate="STUDENT">
			<Components>
				<Button id="100" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" PathID="STUDENT_CARER_CONTACT4Button_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="101" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" PathID="STUDENT_CARER_CONTACT4Button_Update">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="102" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Delete" operation="Delete" PathID="STUDENT_CARER_CONTACT4Button_Delete">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<ListBox id="106" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="RELATIONSHIP" caption="RELATIONSHIP" fieldSource="RELATIONSHIP" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other" required="True" PathID="STUDENT_CARER_CONTACT4RELATIONSHIP">
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
				<Label id="107" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="WORK_PHONE" fieldSource="WORK_PHONE" PathID="STUDENT_CARER_CONTACT4WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="108" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="MOBILE" fieldSource="MOBILE" PathID="STUDENT_CARER_CONTACT4MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="109" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="EMAIL" fieldSource="EMAIL" PathID="STUDENT_CARER_CONTACT4EMAIL">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="111" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT4LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="112" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM" PathID="STUDENT_CARER_CONTACT4LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="113" fieldSourceType="DBColumn" dataType="Text" name="Hidden_STUDENT_ID" PathID="STUDENT_CARER_CONTACT4Hidden_STUDENT_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="184" name="Hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="115" fieldSourceType="DBColumn" dataType="Text" name="Hidden_LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" defaultValue="DBUtility.UserLogin.ToUpper" PathID="STUDENT_CARER_CONTACT4Hidden_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="116" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" PathID="STUDENT_CARER_CONTACT4FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="117" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" PathID="STUDENT_CARER_CONTACT4SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="118" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="HOME_PHONE" fieldSource="HOME_PHONE" PathID="STUDENT_CARER_CONTACT4HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="119" fieldSourceType="DBColumn" dataType="Text" name="Hidden_STUDENT_ID_OTHER" PathID="STUDENT_CARER_CONTACT4Hidden_STUDENT_ID_OTHER">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve Value for Control" actionCategory="General" id="185" name="Hidden_STUDENT_ID_OTHER" sourceType="URL" sourceName="STUDENT_ID_OTHER"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="121" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Student_Firstname" fieldSource="STUDENT_FIRST_NAME" PathID="STUDENT_CARER_CONTACT4Student_Firstname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="122" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Student_Surname" fieldSource="STUDENT_SURNAME" PathID="STUDENT_CARER_CONTACT4Student_Surname">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="197" fieldSourceType="DBColumn" dataType="Integer" name="Dupe_CARER_ID" PathID="STUDENT_CARER_CONTACT4Dupe_CARER_ID" html="False" fieldSource="CARER_ID" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="279" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lblNoCarer" PathID="STUDENT_CARER_CONTACT4lblNoCarer" defaultValue="&quot;No Carer - &lt;strong&gt;Use main Student [Update] button&lt;/strong&gt; if you&lt;br&gt; want to add Student to Family Group&quot;">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="281"/>
						<Action actionName="Hide-Show Component" actionCategory="General" id="179" action="Hide" conditionType="Parameter" dataType="Text" componentName="STUDENT_CARER_CONTACT4" condition="Equal" name1="STUDENT_ID_OTHER" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
					</Actions>
				</Event>
				<Event name="BeforeUpdate" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="180" name="Hidden_LAST_ALTERED_BY" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
						<Action actionName="Custom Code" actionCategory="General" id="195"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="274" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID_OTHER" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="271" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_CARER_CONTACT"/>
				<JoinTable id="272" posHeight="217" posLeft="235" posTop="11" posWidth="240" tableName="STUDENT"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="273" conditionType="Equal" fieldLeft="STUDENT_CARER_CONTACT.CARER_ID" fieldRight="STUDENT.CARER_ID_PARENT_A" joinType="right" tableLeft="STUDENT_CARER_CONTACT" tableRight="STUDENT"/>
			</JoinLinks>
			<Fields>
				<Field id="275" fieldName="STUDENT_CARER_CONTACT.*" tableName="STUDENT_CARER_CONTACT"/>
				<Field id="276" alias="STUDENT_SURNAME" fieldName="rtrim(STUDENT.SURNAME)" isExpression="True"/>
				<Field id="277" alias="STUDENT_FIRST_NAME" fieldName="rtrim(STUDENT.FIRST_NAME)" isExpression="True"/>
			</Fields>
			<PKFields/>
			<ISPParameters>
				<SPParameter id="134" parameterName="@RETURN_VALUE" dataType="Int" dataSize="0" direction="ReturnValue" parameterType="URL" parameterSource="RETURN_VALUE" scale="0" precision="10"/>
				<SPParameter id="135" parameterName="@Contact_ID" dataType="Numeric" dataSize="0" direction="Input" parameterType="URL" parameterSource="CARER_ID" defaultValue="0" scale="0" precision="18"/>
				<SPParameter id="136" parameterName="@Student_ID" dataType="Numeric" dataSize="0" direction="Input" parameterType="URL" parameterSource="Student_ID" scale="0" precision="18"/>
				<SPParameter id="137" parameterName="@EnrolmentYear" dataType="Numeric" dataSize="0" direction="Input" parameterType="URL" parameterSource="ENROLMENT_YEAR" scale="0" precision="18"/>
				<SPParameter id="138" parameterName="@Title" dataType="VarChar" dataSize="10" direction="Input" parameterType="Control" parameterSource="TITLE" scale="0" precision="18"/>
				<SPParameter id="139" parameterName="@Surname" dataType="VarChar" dataSize="30" direction="Input" parameterType="Control" parameterSource="SURNAME" scale="0" precision="18"/>
				<SPParameter id="140" parameterName="@FirstName" dataType="VarChar" dataSize="30" direction="Input" parameterType="Control" parameterSource="FIRST_NAME" scale="0" precision="18"/>
				<SPParameter id="141" parameterName="@Relation" dataType="VarChar" dataSize="2" direction="Input" parameterType="Control" parameterSource="RELATIONSHIP" scale="0" precision="18"/>
				<SPParameter id="142" parameterName="@Home_Phone" dataType="VarChar" dataSize="20" direction="Input" parameterType="Control" parameterSource="HOME_PHONE" scale="0" precision="18"/>
				<SPParameter id="143" parameterName="@Work_Phone" dataType="VarChar" dataSize="20" direction="Input" parameterType="Control" parameterSource="WORK_PHONE" scale="0" precision="18"/>
				<SPParameter id="144" parameterName="@Mobile" dataType="VarChar" dataSize="20" direction="Input" parameterType="Control" parameterSource="MOBILE" scale="0" precision="18"/>
				<SPParameter id="145" parameterName="@Email" dataType="VarChar" dataSize="250" direction="Input" parameterType="Control" parameterSource="EMAIL" scale="0" precision="18"/>
				<SPParameter id="146" parameterName="@Last_Altered_By" dataType="VarChar" dataSize="8" direction="Input" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY" scale="0" precision="18"/>
			</ISPParameters>
			<ISQLParameters/>
			<IFormElements>
				<CustomParameter id="147" field="TITLE" dataType="Text" parameterType="Control" parameterSource="TITLE"/>
				<CustomParameter id="148" field="SURNAME" dataType="Text" parameterType="Control" parameterSource="SURNAME"/>
				<CustomParameter id="149" field="FIRST_NAME" dataType="Text" parameterType="Control" parameterSource="FIRST_NAME"/>
				<CustomParameter id="150" field="RELATIONSHIP" dataType="Text" parameterType="Control" parameterSource="RELATIONSHIP"/>
				<CustomParameter id="151" field="HOME_PHONE" dataType="Text" parameterType="Control" parameterSource="HOME_PHONE"/>
				<CustomParameter id="152" field="WORK_PHONE" dataType="Text" parameterType="Control" parameterSource="WORK_PHONE"/>
				<CustomParameter id="153" field="MOBILE" dataType="Text" parameterType="Control" parameterSource="MOBILE"/>
				<CustomParameter id="154" field="EMAIL" dataType="Text" parameterType="Control" parameterSource="EMAIL"/>
				<CustomParameter id="155" field="LAST_ALTERED_BY" dataType="Text" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY"/>
			</IFormElements>
			<USPParameters>
				<SPParameter id="156" parameterName="@RETURN_VALUE" dataType="Int" dataSize="0" direction="ReturnValue" parameterType="URL" parameterSource="RETURN_VALUE" scale="0" precision="10"/>
				<SPParameter id="157" parameterName="@Contact_ID" dataType="Numeric" dataSize="0" direction="Input" parameterType="URL" parameterSource="CARER_ID" defaultValue="0" scale="0" precision="18"/>
				<SPParameter id="158" parameterName="@Student_ID" dataType="Numeric" dataSize="0" direction="Input" parameterType="URL" parameterSource="Student_ID" scale="0" precision="18"/>
				<SPParameter id="159" parameterName="@EnrolmentYear" dataType="Numeric" dataSize="0" direction="Input" parameterType="URL" parameterSource="ENROLMENT_YEAR" scale="0" precision="18"/>
				<SPParameter id="160" parameterName="@Title" dataType="VarChar" dataSize="10" direction="Input" parameterType="Control" parameterSource="TITLE" scale="0" precision="18"/>
				<SPParameter id="161" parameterName="@Surname" dataType="VarChar" dataSize="30" direction="Input" parameterType="Control" parameterSource="SURNAME" scale="0" precision="18"/>
				<SPParameter id="162" parameterName="@FirstName" dataType="VarChar" dataSize="30" direction="Input" parameterType="Control" parameterSource="FIRST_NAME" scale="0" precision="18"/>
				<SPParameter id="163" parameterName="@Relation" dataType="VarChar" dataSize="2" direction="Input" parameterType="Control" parameterSource="RELATIONSHIP" scale="0" precision="18"/>
				<SPParameter id="164" parameterName="@Home_Phone" dataType="VarChar" dataSize="20" direction="Input" parameterType="Control" parameterSource="HOME_PHONE" scale="0" precision="18"/>
				<SPParameter id="165" parameterName="@Work_Phone" dataType="VarChar" dataSize="20" direction="Input" parameterType="Control" parameterSource="WORK_PHONE" scale="0" precision="18"/>
				<SPParameter id="166" parameterName="@Mobile" dataType="VarChar" dataSize="20" direction="Input" parameterType="Control" parameterSource="MOBILE" scale="0" precision="18"/>
				<SPParameter id="167" parameterName="@Email" dataType="VarChar" dataSize="250" direction="Input" parameterType="Control" parameterSource="EMAIL" scale="0" precision="18"/>
				<SPParameter id="168" parameterName="@Last_Altered_By" dataType="VarChar" dataSize="8" direction="Input" parameterType="Control" parameterSource="Hidden_LAST_ALTERED_BY" scale="0" precision="18"/>
			</USPParameters>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="192" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" parameterType="Control" searchConditionType="Equal" logicOperator="And" parameterSource="Hidden_STUDENT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="193" field="CARER_ID_PARENT_A" dataType="Integer" parameterType="Control" parameterSource="Dupe_CARER_ID" omitIfEmpty="True"/>
			</UFormElements>
			<DSPParameters/>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</Record>
		<Grid id="256" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="20" name="Grid_FamilyGroup" connection="connDECVPRODSQL2005" dataSource="select top 20 * 
from view_FamilyGrouping
where student_id &lt;&gt; {STUDENT_ID}
and CARER_ID_PARENT_AB in (select CARER_ID_PARENT_AB from view_FamilyGrouping where Student_id = {STUDENT_ID})
order by surname, first_name" pageSizeLimit="100" pageSize="False" wizardCaption="Family Group" wizardThemeApplyTo="Page" wizardGridType="Gallery" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No other Students in this Family Group" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" numberOfColumns="1" rowsPerPage="20" recordsNumber="20" PathID="Grid_FamilyGroup">
			<Components>
				<Panel id="260" visible="True" generateDiv="False" name="RowOpenTag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="261" visible="True" generateDiv="False" name="RowComponents">
					<Components>
						<Link id="262" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentsSTUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="StudentSummary.ccp" linkProperties="{'textSource':'','textSourceDB':'STUDENT_ID','hrefSource':'StudentSummary.ccp','hrefSourceDB':'','title':'show Student Summary','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID'},'1':{'sourceType':'DataField','parameterSource':'last_enrol_year','parameterName':'ENROLMENT_YEAR'},'length':2,'objectType':'linkParameters'}}"><Components/>
							<Events/>
							<Attributes/>
							<Features/>
							<LinkParameters>
								<LinkParameter id="268" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
								<LinkParameter id="269" sourceType="DataField" name="ENROLMENT_YEAR" source="last_enrol_year"/>
							</LinkParameters>
						</Link>
						<Label id="263" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentsfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="264" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="surname" fieldSource="surname" wizardCaption="Surname" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentssurname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="266" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="last_enrol_year" fieldSource="last_enrol_year" wizardCaption="Last Enrol Year" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentslast_enrol_year">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="267" visible="True" generateDiv="False" name="RowCloseTag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Gallery Layout" actionCategory="General" id="259" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<PKFields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="257" dataType="Integer" defaultValue="0" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes>
				<Attribute id="283" name="numberOfColumns" sourceType="Expression" source="1"/>
			</Attributes>
			<Features/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Carer_FamilyGrouping.aspx" forShow="True" url="Student_Carer_FamilyGrouping.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Carer_FamilyGrouping.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Carer_FamilyGroupingDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
