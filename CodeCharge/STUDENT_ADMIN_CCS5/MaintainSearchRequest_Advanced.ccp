<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="500" connection="connDECVPRODSQL2005" dataSource="viewMaintainSearchRequest_Schools" name="viewMaintainSearchRequest1" orderBy="STUDENT_ID" pageSizeLimit="500" wizardCaption="List of View Maintain Search Request Schools " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Students found" pasteActions="pasteActions" pasteAsReplace="pasteAsReplace" activeCollection="TableParameters" PathID="viewMaintainSearchRequest1">
			<Components>
				<Label id="9" fieldSourceType="DBColumn" dataType="Text" html="False" name="viewMaintainSearchRequest1_TotalRecords" wizardUseTemplateBlock="False" PathID="viewMaintainSearchRequest1viewMaintainSearchRequest1_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="10"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="13" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="15" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="16" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="17" visible="True" name="Sorter_ENROLMENT_STATUS" column="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_STATUS" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="18" visible="True" name="Sorter_ENROLMENT_DATE" column="ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_DATE" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="19" visible="True" name="Sorter_HOME_SCHOOL_ID" column="HOME_SCHOOL_ID" wizardCaption="HOME SCHOOL ID" wizardSortingType="SimpleDir" wizardControl="HOME_SCHOOL_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_HOME_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="20" visible="True" name="Sorter_ATTENDING_SCHOOL_ID" column="ATTENDING_SCHOOL_ID" wizardCaption="ATTENDING SCHOOL ID" wizardSortingType="SimpleDir" wizardControl="ATTENDING_SCHOOL_ID" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_ATTENDING_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="21" visible="True" name="Sorter_ENROLMENT_YEAR" column="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_YEAR" wizardAddNbsp="False" PathID="viewMaintainSearchRequest1Sorter_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="22" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1STUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="StudentSummary.ccp" removeParameters="s_HOME_SCHOOL_ID;s_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="31" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="32" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
				</Link>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="27" fieldSourceType="DBColumn" dataType="Date" html="False" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" wizardCaption="ENROLMENT DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1ENROLMENT_DATE" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="28" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_SCHOOL_ID" fieldSource="HOME_SCHOOL_ID" wizardCaption="HOME SCHOOL ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1HOME_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="ATTENDING_SCHOOL_ID" fieldSource="ATTENDING_SCHOOL_ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1ATTENDING_SCHOOL_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Float" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="41"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="81" conditionType="Parameter" useIsNull="False" dataType="Text" field="ATTENDING_SCHOOL_ID" leftBrackets="1" logicOperator="Or" orderNumber="1" parameterSource="s_HOME_SCHOOL_ID" parameterType="URL" searchConditionType="Contains"/>
<TableParameter id="82" conditionType="Parameter" useIsNull="False" dataType="Text" field="ORGANISATION_SCHOOL_ID" logicOperator="And" parameterSource="s_HOME_SCHOOL_ID" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
<TableParameter id="83" conditionType="Parameter" useIsNull="False" dataType="Float" field="ENROLMENT_YEAR" logicOperator="And" orderNumber="2" parameterSource="s_ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
<TableParameter id="84" conditionType="Expression" useIsNull="False" expression="ENROLMENT_STATUS in ('E', 'N', 'F')" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
</TableParameters>
			<JoinTables>
				<JoinTable id="80" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="viewMaintainSearchRequest_Schools"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="85" fieldName="*"/>
</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewMaintainSearchRequest" wizardCaption="Search View Maintain Search Request " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="MaintainSearchRequest_Advanced.ccp" PathID="viewMaintainSearchRequest" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" connection="connDECVPRODSQL2005" visible="Dynamic" features="(assigned)">
			<Components>
				<Button id="6" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="viewMaintainSearchRequestButton_DoSearch" removeParameters="export">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="7" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_HOME_SCHOOL_ID" wizardCaption="HOME SCHOOL ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="viewMaintainSearchRequests_HOME_SCHOOL_ID" caption="HOME SCHOOL ID" required="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="8" visible="Yes" fieldSourceType="DBColumn" dataType="Float" name="s_ENROLMENT_YEAR" wizardCaption="ENROLMENT YEAR" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" PathID="viewMaintainSearchRequests_ENROLMENT_YEAR" required="True" caption="ENROLMENT YEAR" defaultValue="Year(Date.Today)">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="79"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="33" visible="Dynamic" fieldSourceType="DBColumn" dataType="Text" name="s_SCHOOLNAME" PathID="viewMaintainSearchRequests_SCHOOLNAME" features="(assigned)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features>
						<PTAutocomplete id="60" enabled="True" sourceType="Table" name="PTAutocomplete1" category="Prototype" featureNameChanged="No" servicePage="services/MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutocomplete1.ccp">
							<Components/>
							<Events/>
							<TableParameters/>
							<SPParameters/>
							<SQLParameters/>
							<JoinTables/>
							<JoinLinks/>
							<Fields/>
							<Features/>
						</PTAutocomplete>
					</Features>
				</TextBox>
				<Link id="5" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="ClearParameters" hrefSource="MaintainSearchRequest_Advanced.ccp" removeParameters="s_HOME_SCHOOL_ID;s_ENROLMENT_YEAR;s_SCHOOLNAME;export" wizardThemeItem="SorterLink" wizardDefaultValue="Clear" PathID="viewMaintainSearchRequestClearParameters">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Hidden id="47" fieldSourceType="DBColumn" dataType="Text" name="hidden_auto" PathID="viewMaintainSearchRequesthidden_auto">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Link id="63" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link1" PathID="viewMaintainSearchRequestLink1" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
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
			<Features>
				<Condition id="48" name="Condition1" category="Ajax" featureNameChanged="No" condition="does not equal (&lt;&gt;)" sourceType1="Control" name2="&quot;&quot;" sourceType2="Expression" name1="MaintainSearchRequest_Advanceds_SCHOOLNAME" ccsIdsOnly="False" start="viewMaintainSearchRequests_SCHOOLNAME.onkeypress;">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="49" name="viewMaintainSearchRequests_SCHOOLNAME.onkeypress" relProperty="start">
							<Items>
								<ControlPointItem id="50" name="MaintainSearchRequest_Advanced" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="51" name="viewMaintainSearchRequest" ccpId="4" type="Record" isFeature="False" PathID="viewMaintainSearchRequest"/>
								<ControlPointItem id="52" name="s_SCHOOLNAME" ccpId="33" type="TextBox" isFeature="False" PathID="viewMaintainSearchRequests_SCHOOLNAME"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</Condition>
				<PTAutoFill id="54" enabled="True" valueField="value" sourceType="Table" name="PTAutoFill1" category="Prototype" featureNameChanged="No" ccsIdsOnly="False" start="viewMaintainSearchRequestCondition1.ontrue;" servicePage="services/MaintainSearchRequest_Advanced_viewMaintainSearchRequest_s_SCHOOLNAME_PTAutoFill1.ccp">
					<Components/>
					<Events/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Controls>
						<Control id="61" name="viewMaintainSearchRequests_HOME_SCHOOL_ID" source="SCHOOL_ID" propertyValue="value"/>
					</Controls>
					<ControlPoints>
						<ControlPoint id="55" name="viewMaintainSearchRequestCondition1.ontrue" relProperty="start">
							<Items>
								<ControlPointItem id="56" name="MaintainSearchRequest_Advanced" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="57" name="viewMaintainSearchRequest" ccpId="4" type="Record" isFeature="False" PathID="viewMaintainSearchRequest"/>
								<ControlPointItem id="58" name="Condition1" ccpId="48" type="Condition" isFeature="True" PathID="viewMaintainSearchRequestCondition1"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<Features/>
				</PTAutoFill>
			</Features>
			<PKFields/>
		</Record>
		<Link id="64" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="LinkExportToExcel" PathID="LinkExportToExcel" hrefSource="MaintainSearchRequest_Advanced.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters>
				<LinkParameter id="65" sourceType="Expression" format="yyyy-mm-dd" name="export" source="1"/>
			</LinkParameters>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="MaintainSearchRequest_Advanced.aspx" forShow="True" url="MaintainSearchRequest_Advanced.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="MaintainSearchRequest_Advanced.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="MaintainSearchRequest_AdvancedDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="Page1" language="VB" name="MaintainSearchRequest_Advanced_style.css" forShow="False" comment="/*" commentEnd="*/" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="62" form="viewMaintainSearchRequest" name="s_SCHOOLNAME"/>
			</Actions>
		</Event>
		<Event name="OnInitializeView" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="67"/>
			</Actions>
		</Event>
	</Events>
</Page>
