<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" pasteActions="pasteActions">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" dataSource="STUDENT_SMS_LOG" activeCollection="TableParameters" orderBy="id desc" name="STUDENT_SMS_LOG" pageSizeLimit="100" wizardCaption="List of STUDENT SMS LOG " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="True" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No SMS Messsages found in previous 3 months" PathID="STUDENT_SMS_LOG">
			<Components>
				<Sorter id="11" visible="True" name="Sorter_mobileno_sendto" column="mobileno_sendto" wizardCaption="Mobileno Sendto" wizardSortingType="SimpleDir" wizardControl="mobileno_sendto" wizardAddNbsp="False" PathID="STUDENT_SMS_LOGSorter_mobileno_sendto">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="12" visible="True" name="Sorter_sms_text" column="sms_text" wizardCaption="Sms Text" wizardSortingType="SimpleDir" wizardControl="sms_text" wizardAddNbsp="False" PathID="STUDENT_SMS_LOGSorter_sms_text">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="13" visible="True" name="Sorter_datetime_created" column="datetime_created" wizardCaption="Datetime Created" wizardSortingType="SimpleDir" wizardControl="datetime_created" wizardAddNbsp="False" PathID="STUDENT_SMS_LOGSorter_datetime_created">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="16" visible="True" name="Sorter_sent_by" column="sent_by" wizardCaption="Sent By" wizardSortingType="SimpleDir" wizardControl="sent_by" wizardAddNbsp="False" PathID="STUDENT_SMS_LOGSorter_sent_by">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="mobileno_sendto" fieldSource="mobileno_sendto" wizardCaption="Mobileno Sendto" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_SMS_LOGmobileno_sendto">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="sms_text" fieldSource="sms_text" wizardCaption="Sms Text" wizardSize="50" wizardMaxLength="160" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_SMS_LOGsms_text">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Date" html="False" name="datetime_created" fieldSource="datetime_created" wizardCaption="Datetime Created" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_SMS_LOGdatetime_created" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="30" fieldSourceType="DBColumn" dataType="Text" html="False" name="sent_by" fieldSource="sent_by" wizardCaption="Sent By" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_SMS_LOGsent_by">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Navigator id="31" size="10" type="Simple" pageSizes="1;5;10;25;50" name="Navigator" wizardPagingType="Simple" wizardFirst="True" wizardFirstText="First" wizardPrev="True" wizardPrevText="Prev" wizardNext="True" wizardNextText="Next" wizardLast="True" wizardLastText="Last" wizardImages="Images" wizardPageNumbers="Simple" wizardSize="10" wizardTotalPages="True" wizardHideDisabled="False" wizardOfText="of" wizardPageSize="False" wizardImagesScheme="Blueprint" PathID="STUDENT_SMS_LOGNavigator">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Navigator>
				<Link id="66" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="STUDENT_SMS_LOGLink1" hrefSource="Student_Comments_maintain.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Comments page','textSourceDB':'','hrefSource':'Student_Comments_maintain.ccp','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}"><Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="4" conditionType="Parameter" useIsNull="False" field="student_id" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="student_id"/>
				<TableParameter id="7" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="datetime_created &gt; DATEADD(M, -3, getdate())"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="3" tableName="STUDENT_SMS_LOG" posLeft="10" posTop="10" posWidth="132" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="55" tableName="STUDENT_SMS_LOG" fieldName="sent_by"/>
				<Field id="57" tableName="STUDENT_SMS_LOG" fieldName="datetime_created"/>
				<Field id="58" tableName="STUDENT_SMS_LOG" fieldName="sms_text"/>
				<Field id="59" tableName="STUDENT_SMS_LOG" fieldName="mobileno_sendto"/>
				<Field id="60" tableName="STUDENT_SMS_LOG" fieldName="id"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Record id="33" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="NewSMSRecord" dataSource="STUDENT_SMS_LOG" errorSummator="Error" wizardCaption="Add/Edit STUDENT SMS LOG " wizardFormMethod="post" PathID="NewSMSRecord" visible="Dynamic" features="(assigned)" pasteActions="pasteActions" generateDiv="False">
			<Components>
				<Button id="34" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" operation="Insert" wizardCaption="Add" PathID="NewSMSRecordButton_Insert">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="35" urlType="Relative" enableValidation="False" isDefault="False" name="Button_Cancel" operation="Cancel" wizardCaption="Cancel" PathID="NewSMSRecordButton_Cancel">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<RadioButton id="37" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" html="True" returnValueType="Number" name="mobileno_sendto" fieldSource="mobileno_sendto" caption="SEND TO NUMBER" wizardCaption="Mobileno Sendto" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewSMSRecordmobileno_sendto" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="--declare @studentID int = 56794;

select
   st.STUDENT_ID,
   concat(
            st.STUDENT_MOBILE,
            ' - ',
            isnull(nullif(st.PREFERRED_NAME, ''), rtrim(st.FIRST_NAME)),
            ' ',
            rtrim(st.SURNAME),
            ' (Student Mobile)'
         ) as ContactName,
   st.STUDENT_MOBILE as ContactMobile,
   1 as ContactOrder
 from
   dbo.STUDENT as st
 where
   (
      (st.STUDENT_MOBILE like '04%')
      or (st.STUDENT_MOBILE like '0011%')
      or (st.STUDENT_MOBILE like '+61 4%')
   )
   and (st.STUDENT_ID = {student_id})
union all
select
   st.STUDENT_ID,
   concat(
            paddr.PHONE_A,
            ' - ',
            dbo.ProperCase(rtrim(paddr.ADDRESSEE)),
            ' ',
            dbo.ProperCase(rtrim(paddr.AGENT)),
            ' (Addressee Phone A)'
         ) as ContactName,
   paddr.PHONE_A as ContactMobile,
   2 as ContactOrder
 from
   dbo.STUDENT as st
   inner join dbo.ADDRESS as paddr
      on st.POSTAL_ADDRESS_ID = paddr.ADDRESS_ID
         and st.CURR_RESID_ADDRESS_ID = paddr.ADDRESS_ID
 where
   (
      (paddr.PHONE_A like '04%')
      or (paddr.PHONE_A like '+61 4%')
   )
   and (st.STUDENT_ID = {student_id})
union all
select
   st.STUDENT_ID,
   concat(
            paddr.PHONE_B,
            ' - ',
            dbo.ProperCase(rtrim(paddr.ADDRESSEE)),
            ' ',
            dbo.ProperCase(rtrim(paddr.AGENT)),
            ' (Addressee Phone B)'
         ) as ContactName,
   paddr.PHONE_B as ContactMobile,
   3 as ContactOrder
 from
   dbo.STUDENT as st
   inner join dbo.ADDRESS as paddr
      on st.POSTAL_ADDRESS_ID = paddr.ADDRESS_ID
         and st.CURR_RESID_ADDRESS_ID = paddr.ADDRESS_ID
 where
   (
      (paddr.PHONE_B like '04%')
      or (paddr.PHONE_B like '+61 4%')
   )
   and (st.STUDENT_ID = {student_id})
union all
select
   st.STUDENT_ID,
   concat(
            scca.MOBILE,
            ' - ',
            dbo.ProperCase(rtrim(scca.FIRST_NAME)),
            ' ',
            dbo.ProperCase(rtrim(scca.SURNAME)),
            ' (',
            isnull(vrt.RelationshipType, 'Other'),
            ')'
         ) as ContactName,
   scca.MOBILE as ContactMobile,
   4 as ContactOrder
 from
   dbo.STUDENT as st
   inner join dbo.STUDENT_CARER_CONTACT as scca
      on st.CARER_ID_PARENT_A = scca.CARER_ID
   left join dbo.vwRelationshipType as vrt
      on (vrt.RelationshipTypeID = scca.RELATIONSHIP)
 where
   (
      (scca.MOBILE like '04%')
      or (scca.MOBILE like '+61 4%')
   )
   and (st.STUDENT_ID = {student_id})
union all
select
   st.STUDENT_ID,
   concat(
            sccb.MOBILE,
            ' - ',
            dbo.ProperCase(rtrim(sccb.FIRST_NAME)),
            ' ',
            dbo.ProperCase(rtrim(sccb.SURNAME)),
            ' (',
            isnull(vrt.RelationshipType, 'Other'),
            ')'
         ) as ContactName,
   sccb.MOBILE as ContactMobile,
   5 as ContactOrder
 from
   dbo.STUDENT as st
   inner join dbo.STUDENT_CARER_CONTACT as sccb
      on st.CARER_ID_PARENT_B = sccb.CARER_ID
   left join dbo.vwRelationshipType as vrt
      on (vrt.RelationshipTypeID = sccb.RELATIONSHIP)
 where
   (
      (sccb.MOBILE like '04%')
      or (sccb.MOBILE like '+61 4%')
   )
   and (st.STUDENT_ID = {student_id})
union all
select
   st.STUDENT_ID,
   concat(
            sccsv.MOBILE,
            ' - ',
            dbo.ProperCase(rtrim(sccsv.FIRST_NAME)),
            ' ',
            dbo.ProperCase(rtrim(sccsv.SURNAME)),
            ' (',
            isnull(vrt.RelationshipType, 'Other'),
            ')'
         ) as ContactName,
   sccsv.MOBILE as ContactMobile,
   6 as ContactOrder
 from
   dbo.STUDENT as st
   inner join dbo.STUDENT_ENROLMENT as se
      on st.STUDENT_ID = se.STUDENT_ID
   inner join dbo.STUDENT_CARER_CONTACT as sccsv
      on se.CARER_ID_SCHOOL_SUPERVISOR = sccsv.CARER_ID
   left join dbo.vwRelationshipType as vrt
      on (vrt.RelationshipTypeID = sccsv.RELATIONSHIP)
 where
   (se.ENROLMENT_YEAR = year(getdate()))
   and
   (
      (sccsv.MOBILE like '04%')
      or (sccsv.MOBILE like '+61 4%')
   )
   and (st.STUDENT_ID = {student_id})
 order by
   ContactOrder;" boundColumn="ContactMobile" textColumn="ContactName" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="52"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="73" dataType="Text" defaultValue="0" designDefaultValue="56766" parameterSource="STUDENT_ID" parameterType="URL" variable="student_id"/>
</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
					<PKFields/>
				</RadioButton>
				<TextArea id="38" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="sms_text" fieldSource="sms_text" required="True" caption="SMS MESSAGE TO SEND" wizardCaption="Sms Text" wizardSize="50" wizardMaxLength="160" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewSMSRecordsms_text">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Hidden id="39" fieldSourceType="DBColumn" dataType="Text" name="sms_status" fieldSource="sms_status" required="False" caption="Sms Status" wizardCaption="Sms Status" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewSMSRecordsms_status" defaultValue="&quot;SENT&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="40" fieldSourceType="DBColumn" dataType="Text" name="sent_by" fieldSource="sent_by" required="False" caption="Sent By" wizardCaption="Sent By" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewSMSRecordsent_by" defaultValue="DBUtility.UserLogin.ToUpper">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="41" fieldSourceType="DBColumn" dataType="Float" name="student_id" fieldSource="student_id" required="False" caption="Student Id" wizardCaption="Student Id" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" PathID="NewSMSRecordstudent_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblNoSMSNumbers" PathID="NewSMSRecordlblNoSMSNumbers" defaultValue="&quot;&lt;font color='red'&gt;No Mobile Numbers found for this Student.&lt;/font&gt;&quot;"><Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Image id="55" visible="Yes" fieldSourceType="CodeExpression" dataType="Text" name="ajaxBusy" PathID="NewSMSRecordajaxBusy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Image>
				<Label id="64" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID" PathID="NewSMSRecordlblStudentID" fieldSource="student_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="42" name="student_id" sourceType="URL" sourceName="student_id"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="45" name="sent_by" sourceType="Expression" sourceName="DBUtility.UserLogin.ToUpper"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="65" name="lblStudentID" sourceType="URL" sourceName="student_id"/>
						<Action actionName="Custom Code" actionCategory="General" id="54"/>
					</Actions>
				</Event>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Validate Maximum Length" actionCategory="Validation" id="44" name="sms_text" maximumLength="140" errorMessage="The SMS Message cannot exceed 140 characters in length."/>
						<Action actionName="Validate Required Value" actionCategory="Validation" id="72" name="mobileno_sendto" errorMessage="Please select a number to Send the message to."/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="46"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="36" conditionType="Parameter" useIsNull="False" field="id" parameterSource="id" dataType="Integer" logicOperator="And" searchConditionType="Equal" parameterType="URL" orderNumber="1"/>
			</TableParameters>
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
				<HideShow id="56" enabled="True" name="HideShow_ajaxBusy" category="Ajax" featureNameChanged="No" controlId="NewSMSRecordajaxBusy" ccsIdsOnly="False" show="NewSMSRecord.onsubmit;" hide="NewSMSRecord.onload;" duration="fast">
					<Components/>
					<Events/>
					<ControlPoints>
						<ControlPoint id="61" name="NewSMSRecord.onload" relProperty="hide">
							<Items>
								<ControlPointItem id="62" name="Send_SMS_maintain" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="63" name="NewSMSRecord" ccpId="33" type="Record" isFeature="False" PathID="NewSMSRecord"/>
							</Items>
						</ControlPoint>
						<ControlPoint id="69" name="NewSMSRecord.onsubmit" relProperty="show">
							<Items>
								<ControlPointItem id="70" name="Send_SMS_maintain" ccpId="1" type="Page" isFeature="False"/>
								<ControlPointItem id="71" name="NewSMSRecord" ccpId="33" type="Record" isFeature="False" PathID="NewSMSRecord"/>
							</Items>
						</ControlPoint>
					</ControlPoints>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Features/>
				</HideShow>
			</Features>
			<PKFields/>
		</Record>
		<Link id="48" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_Backtosummary" PathID="Link_Backtosummary" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Panel id="49" visible="False" name="Panel_MenuStudentMaintain" PathID="Panel_MenuStudentMaintain" pasteAsReplace="pasteAsReplace">
			<Components>
				<IncludePage id="50" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
					<Components/>
					<Events/>
					<Features/>
				</IncludePage>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="51"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Send_SMS_maintain.aspx" forShow="True" url="Send_SMS_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Send_SMS_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Send_SMS_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="47"/>
			</Actions>
		</Event>
	</Events>
</Page>
