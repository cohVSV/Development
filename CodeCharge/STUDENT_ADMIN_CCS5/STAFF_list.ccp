<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<Record id="2" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STAFFSearch" returnPage="STAFF_list.ccp" wizardCaption="Search STAFF " wizardOrientation="Vertical" wizardFormMethod="post" PathID="STAFFSearch">
			<Components>
				<Button id="3" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="STAFFSearchButton_DoSearch">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<TextBox id="4" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_keyword" wizardCaption="Keyword" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" PathID="STAFFSearchs_keyword">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="74" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="rbStatus" PathID="STAFFSearchrbStatus" connection="connDECVPRODSQL2005" _valueOfList="[1,0]" _nameOfList="All" dataSource="[1];Yes;[1,0];All" defaultValue="&quot;[1]&quot;">
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
			</Components>
			<Events/>
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
		<Grid id="5" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" name="STAFF" connection="connDECVPRODSQL2005" pageSizeLimit="100" wizardCaption="List of STAFF " wizardGridType="Tabular" wizardAllowSorting="True" wizardSortingType="SimpleDir" wizardUsePageScroller="True" wizardAllowInsert="True" wizardAltRecord="True" wizardRecordSeparator="False" wizardAltRecordType="Controls" dataSource="STAFF, SECURITY_GROUP" activeCollection="TableParameters" PathID="STAFF">
			<Components>
				<Link id="11" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="STAFF_Insert" hrefSource="STAFF_maint.ccp" removeParameters="STAFF_ID" wizardThemeItem="NavigatorLink" wizardDefaultValue="Add New" PathID="STAFFSTAFF_Insert">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="19" visible="True" name="Sorter_STAFF_ID" column="STAFF_ID" wizardCaption="ID" wizardSortingType="SimpleDir" wizardControl="STAFF_ID" wizardAddNbsp="False" PathID="STAFFSorter_STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="22" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" wizardAddNbsp="False" PathID="STAFFSorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="23" visible="True" name="Sorter_FIRSTNAME" column="FIRSTNAME" wizardCaption="FIRSTNAME" wizardSortingType="SimpleDir" wizardControl="FIRSTNAME" wizardAddNbsp="False" PathID="STAFFSorter_FIRSTNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="25" visible="True" name="Sorter_TEACHER_FLAG" column="TEACHER_FLAG" wizardCaption="TEACHER FLAG" wizardSortingType="SimpleDir" wizardControl="TEACHER_FLAG" wizardAddNbsp="False" PathID="STAFFSorter_TEACHER_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="26" visible="True" name="Sorter_GROUP_NAME" column="GROUP_NAME" wizardCaption="GROUP NAME" wizardSortingType="SimpleDir" wizardControl="GROUP_NAME" wizardAddNbsp="False" PathID="STAFFSorter_GROUP_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="27" visible="True" name="Sorter_STATUS" column="STATUS" wizardCaption="STATUS" wizardSortingType="SimpleDir" wizardControl="STATUS" wizardAddNbsp="False" PathID="STAFFSorter_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="28" visible="True" name="Sorter_LAST_ALTERED_BY" column="STAFF.LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_BY" wizardAddNbsp="False" PathID="STAFFSorter_LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="29" visible="True" name="Sorter_LAST_ALTERED_DATE" column="STAFF.LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSortingType="SimpleDir" wizardControl="LAST_ALTERED_DATE" wizardAddNbsp="False" PathID="STAFFSorter_LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="31" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="STAFF_ID" fieldSource="LOGIN_ID" wizardCaption="ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="STAFF_maint.ccp" PathID="STAFFSTAFF_ID">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="32" sourceType="DataField" format="yyyy-mm-dd" name="STAFF_ID" source="STAFF_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="38" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRSTNAME" fieldSource="FIRSTNAME" wizardCaption="FIRSTNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="44" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="TEACHER_FLAG" fieldSource="TEACHER_FLAG" wizardCaption="TEACHER FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="GROUP_NAME" fieldSource="GROUP_NAME" wizardCaption="GROUP NAME" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="48" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="50" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="STAFF_LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="52" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="STAFF_LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="53" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Alt_STAFF_ID" fieldSource="LOGIN_ID" wizardCaption="ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True" hrefSource="STAFF_maint.ccp" PathID="STAFFAlt_STAFF_ID">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="54" sourceType="DataField" format="yyyy-mm-dd" name="STAFF_ID" source="STAFF_ID"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="57" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="58" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_FIRSTNAME" fieldSource="FIRSTNAME" wizardCaption="FIRSTNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="60" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="Alt_TEACHER_FLAG" fieldSource="TEACHER_FLAG" wizardCaption="TEACHER FLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="61" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_GROUP_NAME" fieldSource="GROUP_NAME" wizardCaption="GROUP NAME" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="62" fieldSourceType="DBColumn" dataType="Boolean" html="False" name="Alt_STATUS" fieldSource="STATUS" wizardCaption="STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="63" fieldSourceType="DBColumn" dataType="Text" html="False" name="Alt_LAST_ALTERED_BY" fieldSource="STAFF_LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="64" fieldSourceType="DBColumn" dataType="Date" html="False" name="Alt_LAST_ALTERED_DATE" fieldSource="STAFF_LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="81" size="6" type="Centered" pageSizes="50;100;250;5000" name="Navigator1" PathID="STAFFNavigator1" wizardPagingType="Custom" wizardPageNumbers="Centered" wizardTotalPages="True" wizardImages="Images" wizardHideDisabled="False" wizardFirst="True" wizardPrev="True" wizardNext="True" wizardLast="True" wizardPageSize="True" wizardFirstText="First" wizardPrevText="Prev" wizardNextText="Next" wizardLastText="Last" wizardOfText="of">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="85" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF.STAFF_ID" leftBrackets="1" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
				<TableParameter id="86" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF.LOGIN_ID" leftBrackets="0" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
				<TableParameter id="87" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF.SURNAME" leftBrackets="0" logicOperator="Or" parameterSource="s_keyword" parameterType="URL" rightBrackets="0" searchConditionType="Contains"/>
				<TableParameter id="88" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF.FIRSTNAME" leftBrackets="0" logicOperator="And" parameterSource="s_keyword" parameterType="URL" rightBrackets="1" searchConditionType="Contains"/>
				<TableParameter id="89" conditionType="Parameter" useIsNull="False" dataType="Text" field="STAFF.STATUS" leftBrackets="0" logicOperator="And" parameterSource="rbStatus" parameterType="URL" rightBrackets="0" searchConditionType="BeginsWith"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="82" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STAFF"/>
				<JoinTable id="83" posHeight="120" posLeft="358" posTop="10" posWidth="146" tableName="SECURITY_GROUP"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="84" conditionType="Equal" fieldLeft="STAFF.GROUP_ID" fieldRight="SECURITY_GROUP.GROUP_ID" joinType="left" tableLeft="STAFF" tableRight="SECURITY_GROUP"/>
			</JoinLinks>
			<Fields>
				<Field id="90" fieldName="STAFF.STAFF_ID" tableName="STAFF"/>
				<Field id="91" fieldName="STAFF.SALUTATION" tableName="STAFF"/>
				<Field id="92" fieldName="STAFF.SURNAME" tableName="STAFF"/>
				<Field id="93" fieldName="STAFF.FIRSTNAME" tableName="STAFF"/>
				<Field id="94" fieldName="STAFF.MIDDLENAME" tableName="STAFF"/>
				<Field id="95" fieldName="STAFF.TEACHER_FLAG" tableName="STAFF"/>
				<Field id="96" fieldName="SECURITY_GROUP.GROUP_NAME" tableName="SECURITY_GROUP"/>
				<Field id="97" fieldName="STAFF.STATUS" tableName="STAFF"/>
				<Field id="98" alias="STAFF_LAST_ALTERED_BY" fieldName="STAFF.LAST_ALTERED_BY" tableName="STAFF"/>
				<Field id="99" alias="STAFF_LAST_ALTERED_DATE" fieldName="STAFF.LAST_ALTERED_DATE" tableName="STAFF"/>
				<Field id="100" fieldName="LOGIN_ID" tableName="STAFF"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<IncludePage id="66" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<IncludePage id="67" name="Footer" page="Footer.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Link id="69" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_AddNew" PathID="Link_AddNew" hrefSource="STAFF_maint.ccp" wizardUseTemplateBlock="False" removeParameters="STAFF_ID">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="STAFF_list.aspx" forShow="True" url="STAFF_list.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="STAFF_list.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="STAFF_listDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="68" form="STAFFSearch" name="s_keyword"/>
			</Actions>
		</Event>
	</Events>
</Page>
