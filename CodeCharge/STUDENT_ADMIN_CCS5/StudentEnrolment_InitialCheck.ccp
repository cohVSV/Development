<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="10" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENTSearch" wizardCaption="Search STUDENT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="StudentEnrolment_InitialCheck.ccp" PathID="STUDENTSearch">
			<Components>
				<TextBox id="12" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" required="False" caption="Surname" PathID="STUDENTSearchs_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="13" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" required="False" caption="First Name" PathID="STUDENTSearchs_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="14" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="s_BIRTH_DATE" wizardCaption="BIRTH DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" caption="Birth Date" required="False" format="dd/mm/yyyy" PathID="STUDENTSearchs_BIRTH_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="11" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STUDENTSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="37" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_STUDENT_ID" PathID="STUDENTSearchs_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="40"/>
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
		<Grid id="3" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="40" connection="connDECVPRODSQL2005" dataSource="STUDENT" name="STUDENT" pageSizeLimit="100" wizardCaption="List of STUDENT " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="Student Not Previously Enrolled" activeCollection="TableParameters" PathID="STUDENT" pasteActions="pasteActions" pasteAsReplace="pasteAsReplace">
			<Components>
				<Link id="33" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link1" hrefSource="StudentEnrolment_AddNewYear.ccp" wizardUseTemplateBlock="False" PathID="STUDENTLink1">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="34" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="35" sourceType="Expression" format="yyyy-mm-dd" name="ENROLMENT_YEAR" source="year(now())"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="22" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Date" html="False" name="BIRTH_DATE" fieldSource="BIRTH_DATE" wizardCaption="BIRTH DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEX" fieldSource="SEX" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="28" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_AddNewStudent" hrefSource="StudentEnrolment_DetailsWizard.ccp" wizardUseTemplateBlock="False" PathID="STUDENTlink_AddNewStudent">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="36" action="Hide" conditionType="Parameter" dataType="Text" componentName="link_AddNewStudent" name1="s_SURNAME" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression" condition="Equal" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters>
						<LinkParameter id="29" sourceType="URL" name="s_SURNAME" source="s_SURNAME"/>
						<LinkParameter id="30" sourceType="URL" name="s_FIRST_NAME" source="s_FIRST_NAME"/>
						<LinkParameter id="31" sourceType="URL" name="s_BIRTH_DATE" source="s_BIRTH_DATE"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Navigator id="27" size="10" name="Navigator" wizardPagingType="ImageButtons" wizardFirst="False" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="False" wizardLastText="Last" wizardImages="ImagesWithText" wizardSize="10" wizardTotalPages="False" wizardHideDisabled="False" wizardOfText="of" wizardImagesScheme="Blueprint" type="Simple" pageSizes="1;5;10;25;50" PathID="STUDENTNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblWarningExistingStudent" PathID="STUDENTlblWarningExistingStudent" defaultValue="&quot;You are trying to enter a student who has the same first name, last name, and date of birth as a past student. If this is really a different person and they need to be entered please contact PC Support to enter them as a new student. Otherwise please add a new year to the student below.&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="42" action="Hide" conditionType="Parameter" dataType="Boolean" componentName="lblWarningExistingStudent" condition="Equal" sourceType1="SpecialValue" name1="IsEmpty" sourceType2="Expression" name2="true"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Text" html="False" name="PREFERRED_NAME" fieldSource="PREFERRED_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="21" styles="Row;AltRow" name="rowStyle"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="84" conditionType="Parameter" useIsNull="True" dataType="Text" field="SURNAME" leftBrackets="1" logicOperator="And" orderNumber="1" parameterSource="s_SURNAME" parameterType="URL" searchConditionType="Contains"/>
				<TableParameter id="85" conditionType="Parameter" useIsNull="True" dataType="Text" field="FIRST_NAME" leftBrackets="1" logicOperator="Or" orderNumber="2" parameterSource="s_FIRST_NAME" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
				<TableParameter id="86" conditionType="Parameter" useIsNull="True" dataType="Text" field="PREFERRED_NAME" leftBrackets="0" logicOperator="And" parameterSource="s_FIRST_NAME" parameterType="URL" rightBrackets="1" searchConditionType="BeginsWith"/>
				<TableParameter id="87" conditionType="Parameter" useIsNull="False" dataType="Date" defaultValue="now()" field="BIRTH_DATE" logicOperator="Or" orderNumber="3" parameterSource="s_BIRTH_DATE" parameterType="URL" rightBrackets="1" searchConditionType="Equal"/>
				<TableParameter id="88" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="Or" parameterSource="s_STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="83" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="89" fieldName="STUDENT_ID" tableName="STUDENT"/>
				<Field id="90" fieldName="SURNAME" tableName="STUDENT"/>
				<Field id="91" fieldName="FIRST_NAME" tableName="STUDENT"/>
				<Field id="92" fieldName="BIRTH_DATE" tableName="STUDENT"/>
				<Field id="93" fieldName="SEX" tableName="STUDENT"/>
				<Field id="94" fieldName="PREFERRED_NAME" tableName="STUDENT"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="95" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT"/>
			</PKFields>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentEnrolment_InitialCheck.aspx" forShow="True" url="StudentEnrolment_InitialCheck.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentEnrolment_InitialCheck.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentEnrolment_InitialCheckDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="32" form="STUDENTSearch" name="s_SURNAME"/>
			</Actions>
		</Event>
	</Events>
</Page>
