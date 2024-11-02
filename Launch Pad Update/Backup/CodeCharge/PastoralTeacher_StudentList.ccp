<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0">
	<Components>
		<IncludePage id="2" name="Header" PathID="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<EditableGrid id="51" urlType="Relative" secured="True" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" defaultPageSize="100" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="viewMaintainSearchRequest1" pageSizeLimit="100" wizardCaption="List of View Maintain Search Request Support Teacher " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Student found for this Support Teacher were found!" PathID="viewMaintainSearchRequest1" pasteActions="pasteActions" activeCollection="UConditions" parameterTypeListName="CustomTableParameterTypeList" customDeleteType="Procedure" customDelete="spu_SSTeacher_StudentsNoCLP;1" sourceType="SQL" customUpdateType="Table" customUpdate="STUDENT_SUBJECT" activeTableType="customUpdate" dataSource="select
   subq.*,
   concat(subq.PSDFunded, subq.NCCDFunded, subq.HouseholdStatus, subq.ATSIStatus, subq.YouthJustice, subq.AcademicLag) as MandatedCohort
 from
 (
    select
       st.*,
       iif((smd.PSD_FUNDING_ELIGIBLE = 'true') or (substring(smd.PSD_FUNDING_CATEGORY, 3, 10) &lt;&gt; ''),
       'PSD Funded; ',
       '') as PSDFunded,
       iif((smd.NCCD_FUNDING_APPROVED = 'true') or (smd.NCCD_FUNDING_CATEGORY is not null), 'NCCD Funded; ', '') as NCCDFunded,
       iif(scd.HOUSEHOLD_STATUS in (3, 6, 7), concat(vhs.HouseholdStatusDisplayText, '; '), '') as HouseholdStatus,
       iif(scd.KOORITORRESFLAG &lt;&gt; 'N', 'Indigenous; ', '') as ATSIStatus,
       iif(eas.YouthJustice = 'true', 'Youth Justice; ', '') as YouthJustice,
       iif(eas.AcademicLag = 'true', 'Assessed as two years or more below expected level; ', '') as AcademicLag
     from
       dbo.viewMaintainSearchRequest_SupportTeacher as st
       left join dbo.EARLY_ASSESSMENT_STUDENT as eas
          on (
                (eas.STUDENT_ID = st.STUDENT_ID)
                and (eas.ENROLMENT_YEAR = st.ENROLMENT_YEAR)
             )
       left join dbo.STUDENT_CENSUS_DATA as scd
          on (scd.STUDENT_ID = st.STUDENT_ID)
       left join dbo.STUDENT_MEDICAL_DETAILS as smd
          on (smd.STUDENT_ID = st.STUDENT_ID)
       left join dbo.vwHouseholdStatus as vhs
          on (vhs.HouseholdStatusValue = scd.HOUSEHOLD_STATUS)
     where
       st.ENROLMENT_STATUS = 'E'
       and st.PASTORAL_CARE_ID = '{UserId}'
       and (st.ENROLMENT_YEAR = year(getdate()))
 ) as subq">
			<Components>
				<Label id="53" fieldSourceType="DBColumn" dataType="Text" html="False" name="viewMaintainSearchRequest1_TotalRecords" wizardUseTemplateBlock="False" PathID="viewMaintainSearchRequest1viewMaintainSearchRequest1_TotalRecords">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="54" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="55" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" wizardCaption="STUDENT ID" wizardSortingType="SimpleDir" wizardControl="STUDENT_ID" PathID="viewMaintainSearchRequest1Sorter_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="56" visible="True" name="Sorter_SURNAME" column="SURNAME" wizardCaption="SURNAME" wizardSortingType="SimpleDir" wizardControl="SURNAME" PathID="viewMaintainSearchRequest1Sorter_SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="57" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" wizardCaption="FIRST NAME" wizardSortingType="SimpleDir" wizardControl="FIRST_NAME" PathID="viewMaintainSearchRequest1Sorter_FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="58" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" wizardCaption="YEAR LEVEL" wizardSortingType="SimpleDir" wizardControl="YEAR_LEVEL" PathID="viewMaintainSearchRequest1Sorter_YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="59" visible="True" name="Sorter_ENROLMENT_STATUS" column="ENROLMENT_STATUS" wizardCaption="ENROLMENT STATUS" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_STATUS" PathID="viewMaintainSearchRequest1Sorter_ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="62" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID" required="True" caption="STUDENT ID" wizardCaption="STUDENT ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1STUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="Student_Comments_maintain.ccp">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="72" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
						<LinkParameter id="73" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
					</LinkParameters>
				</Link>
				<Label id="63" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" required="True" caption="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="64" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="65" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" required="True" caption="YEAR LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1YEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" required="True" caption="ENROLMENT STATUS" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1ENROLMENT_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Button id="70" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="viewMaintainSearchRequest1Button_Submit">
					<Components/>
					<Events>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="71" message="This will Update the ticked students to [Standard Learning Program] for all their Subjects not already flagged as Custom Learning." eventType="Client"/>
							</Actions>
						</Event>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="98" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" sourceType1="SpecialValue" name1="TotalRecords" sourceType2="Expression" name2="0" eventType="Server"/>
								<Action actionName="Hide-Show Component" actionCategory="General" id="127" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" name1="tmpNoCLPCount" sourceType1="Expression" name2="0" sourceType2="Expression" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="74" fieldSourceType="CodeExpression" dataType="Text" html="False" name="lblPastoralID" PathID="viewMaintainSearchRequest1lblPastoralID" fieldSource="(session(&quot;UserID&quot;).toupper)">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="82" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_IntakeDone" PathID="viewMaintainSearchRequest1link_IntakeDone" fieldSource="IntakeInterviewDisplay" wizardUseTemplateBlock="False" hrefSource="Student_Comments_maintain.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="83" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="84" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
						<LinkParameter id="85" sourceType="Expression" name="showinterviewpanel" source="1"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="86" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_PathwaysDone" PathID="viewMaintainSearchRequest1link_PathwaysDone" fieldSource="PathwayProfileDisplay" wizardUseTemplateBlock="False" hrefSource="Student_Comments_maintain.ccp">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="87" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="88" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
						<LinkParameter id="89" sourceType="Expression" name="showprofilepanel" source="1"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Sorter id="107" visible="True" name="Sorter_ENROLMENT_DATE" column="ENROLMENT_DATE" wizardCaption="ENROLMENT STATUS" wizardSortingType="SimpleDir" wizardControl="ENROLMENT_STATUS" PathID="viewMaintainSearchRequest1Sorter_ENROLMENT_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Label id="108" fieldSourceType="DBColumn" dataType="Date" html="False" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" required="True" caption="ENROLMENT STATUS" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1ENROLMENT_DATE" format="dd mmm yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="109" fieldSourceType="CodeExpression" dataType="Text" html="True" name="lblNewStudent" PathID="viewMaintainSearchRequest1lblNewStudent" fieldSource="&quot;&lt;font color=green&gt;New!&lt;/font&gt;&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="113" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="111" fieldSourceType="DBColumn" dataType="Integer" name="hidden_days_since_enrolment" PathID="viewMaintainSearchRequest1hidden_days_since_enrolment" fieldSource="days_since_enrolment" required="False" visible="Yes">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<RadioButton id="114" visible="No" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="rbGreenLetterSend" PathID="viewMaintainSearchRequest1rbGreenLetterSend" defaultValue="&quot;N&quot;" dataSource="I;Yes - Send;A;No letter" _valueOfList="I" _nameOfList="Yes - Send">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="115" name="tmpCountDefaulting" type="Integer" initialValue="0" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="117" eventType="Server"/>
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
				<Link id="118" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" PathID="viewMaintainSearchRequest1Link1" hrefSource="StudentSummary.ccp" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<LinkParameters>
						<LinkParameter id="119" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
						<LinkParameter id="120" sourceType="DataField" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
					</LinkParameters>
					<Attributes/>
					<Features/>
				</Link>
				<Button id="121" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit1" operation="Submit" wizardCaption="Submit" PathID="viewMaintainSearchRequest1Button_Submit1">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="123" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" sourceType1="SpecialValue" name1="TotalRecords" sourceType2="Expression" name2="0" eventType="Server"/>
								<Action actionName="Hide-Show Component" actionCategory="General" id="126" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" name1="tmpGreenLetterCount" sourceType1="Expression" sourceType2="Expression" name2="0" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="137" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lblGreenLetter" PathID="viewMaintainSearchRequest1lblGreenLetter" defaultValue="&quot;&lt;font color='green'&gt;Done!&lt;/font&gt;&quot;"><Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="148" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="GREEN_LETTER_SENT_FLAG" PathID="viewMaintainSearchRequest1GREEN_LETTER_SENT_FLAG" fieldSource="GREEN_LETTER_SENT_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="149" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="GREEN_LETTER_SENT_DATE" PathID="viewMaintainSearchRequest1GREEN_LETTER_SENT_DATE" fieldSource="GREEN_LETTER_SENT_DATE" format="dd mmm yy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="150" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="AMBER_LETTER_SENT_FLAG" PathID="viewMaintainSearchRequest1AMBER_LETTER_SENT_FLAG" fieldSource="AMBER_LETTER_SENT_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="152" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="AMBER_LETTER_SENT_DATE" PathID="viewMaintainSearchRequest1AMBER_LETTER_SENT_DATE" fieldSource="AMBER_LETTER_SENT_DATE" format="dd mmm yy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="153" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="RED_LETTER_SENT_FLAG" PathID="viewMaintainSearchRequest1RED_LETTER_SENT_FLAG" fieldSource="RED_LETTER_SENT_FLAG">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="155" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="RED_LETTER_SENT_DATE" PathID="viewMaintainSearchRequest1RED_LETTER_SENT_DATE" fieldSource="RED_LETTER_SENT_DATE" format="dd mmm yy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="278" fieldSourceType="DBColumn" dataType="Text" html="False" name="MandatedCohort" fieldSource="MandatedCohort" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1MandatedCohort">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="279" fieldSourceType="DBColumn" dataType="Text" html="False" name="LearningPlan" fieldSource="LEARNING_PROGRAM" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest1LearningPlan">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeExecuteUpdate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="135" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="280" dataType="Text" defaultValue="&quot;&quot;" designDefaultValue="MKING" parameterSource="UserId" parameterType="Session" variable="UserId"/>
</SQLParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields>
			</Fields>
			<PKFields/>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters/>
			<USQLParameters/>
			<UConditions>
				<TableParameter id="129" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Integer" parameterType="DataSourceColumn" defaultValue="&quot;&quot;" searchConditionType="Equal" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="130" conditionType="Expression" useIsNull="False" field="SUBJ_ENROL_STATUS" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="SUBJ_ENROL_STATUS in ('D','C')" parameterSource="SUBJ_ENROL_STATUS"/>
				<TableParameter id="131" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="DataSourceColumn" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
				<TableParameter id="132" conditionType="Expression" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="SUBJECT_ID not in (921,922,923,924,931,932,933) " parameterSource="SUBJECT_ID"/>
			</UConditions>
			<UFormElements>
				<CustomParameter id="133" field="DEFAULTING_STATUS" dataType="Text" parameterType="Control" omitIfEmpty="True" parameterSource="rbGreenLetterSend"/>
				<CustomParameter id="134" field="DEFAULTING_STATUS_DATE" dataType="Date" parameterType="Expression" omitIfEmpty="True" parameterSource="Now()"/>
			</UFormElements>
			<DSPParameters>
				<SPParameter id="Key105" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key106" parameterName="@student_id" parameterSource="STUDENT_ID" dataType="Int" parameterType="DataSourceColumn" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key107" parameterName="@staff_id" parameterSource="UserId" dataType="Char" parameterType="Session" dataSize="20" direction="Input" scale="0" precision="10"/>
			</DSPParameters>
			<DSQLParameters>
				<SQLParameter id="99" variable="STUDENT_ID" parameterType="DataSourceColumn" defaultValue="0" dataType="Text" parameterSource="STUDENT_ID"/>
				<SQLParameter id="100" variable="ENROL_YEAR" parameterType="DataSourceColumn" defaultValue="year(getdate())" dataType="Integer" parameterSource="ENROLMENT_YEAR"/>
				<SQLParameter id="101" variable="YEAR_LEVEL" parameterType="DataSourceColumn" defaultValue="20" dataType="Integer" parameterSource="YEAR_LEVEL"/>
				<SQLParameter id="102" variable="LOGIN_ID" parameterType="Session" dataType="Text" parameterSource="UserLogin" defaultValue="&quot;unknown&quot;"/>
			</DSQLParameters>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<EditableGrid id="161" urlType="Relative" secured="True" emptyRows="0" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" sourceType="SQL" defaultPageSize="100" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="viewMaintainSearchRequest2" connection="connDECVPRODSQL2005" dataSource="select
   subq.*,
   concat(subq.PSDFunded, subq.NCCDFunded, subq.HouseholdStatus, subq.ATSIStatus, subq.YouthJustice, subq.AcademicLag) as MandatedCohort
 from
 (
    select
       vw.*,
       ssc.SubjectCount,
       iif((smd.PSD_FUNDING_ELIGIBLE = 'true') or (substring(smd.PSD_FUNDING_CATEGORY, 3, 10) &lt;&gt; ''),
       'PSD Funded; ',
       '') as PSDFunded,
       iif((smd.NCCD_FUNDING_APPROVED = 'true') or (smd.NCCD_FUNDING_CATEGORY is not null), 'NCCD Funded; ', '') as NCCDFunded,
       iif(scd.HOUSEHOLD_STATUS in (3, 6, 7), concat(vhs.HouseholdStatusDisplayText, '; '), '') as HouseholdStatus,
       iif(scd.KOORITORRESFLAG &lt;&gt; 'N', 'Indigenous; ', '') as ATSIStatus,
       iif(eas.YouthJustice = 'true', 'Youth Justice; ', '') as YouthJustice,
       iif(eas.AcademicLag = 'true', 'Assessed as two years or more below expected level; ', '') as AcademicLag
     from
       dbo.viewMaintainSearchRequest_SupportTeacher as vw
       inner join
       (
          select
             ss.STUDENT_ID,
             ss.ENROLMENT_YEAR,
             count(*) as SubjectCount
           from
             dbo.STUDENT_SUBJECT as ss
           where
             (ss.SUBJ_ENROL_STATUS in ('C', 'D'))
             and (ss.SEMESTER in ('B', iif(month(getdate()) &lt; 6, '1', '2')))
             and (ss.SUBJECT_ID &lt; 900)
           group by
             ss.STUDENT_ID,
             ss.ENROLMENT_YEAR
       ) as ssc
          on (
                (ssc.STUDENT_ID = vw.STUDENT_ID)
                and (ssc.ENROLMENT_YEAR = vw.ENROLMENT_YEAR)
             )
       left join dbo.EARLY_ASSESSMENT_STUDENT as eas
          on (
                (eas.STUDENT_ID = vw.STUDENT_ID)
                and (eas.ENROLMENT_YEAR = vw.ENROLMENT_YEAR)
             )
       left join dbo.STUDENT_CENSUS_DATA as scd
          on (scd.STUDENT_ID = vw.STUDENT_ID)
       left join dbo.STUDENT_MEDICAL_DETAILS as smd
          on (smd.STUDENT_ID = vw.STUDENT_ID)
       left join dbo.vwHouseholdStatus as vhs
          on (vhs.HouseholdStatusValue = scd.HOUSEHOLD_STATUS)
     where
       (vw.ENROLMENT_YEAR = year(getdate()))
       and (vw.ENROLMENT_STATUS = 'E')
       and (vw.PASTORAL_CARE_ID = 'NO_SST')
       and (ssc.SubjectCount = 1)
       and exists
     (
        select
           *
         from
           dbo.STUDENT_SUBJECT as ss
         where
           (ss.STUDENT_ID = vw.STUDENT_ID)
           and (ss.ENROLMENT_YEAR = vw.ENROLMENT_YEAR)
           and (ss.SUBJ_ENROL_STATUS in ('C', 'P', 'D'))
           and (ss.SUBJECT_ID &lt; 900)
           and (ss.STAFF_ID = '{UserId}')
     )
 ) as subq" pageSizeLimit="100" customUpdateType="Table" customUpdate="student_subject" customDeleteType="Procedure" customDelete="spu_SSTeacher_StudentsNoCLP;1" PathID="viewMaintainSearchRequest2">
<Components>
<Label id="162" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="viewMaintainSearchRequest1_TotalRecords" PathID="viewMaintainSearchRequest2viewMaintainSearchRequest1_TotalRecords">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Retrieve number of records" actionCategory="Database" id="282"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Label>
<Sorter id="164" visible="True" name="Sorter_STUDENT_ID" column="STUDENT_ID" PathID="viewMaintainSearchRequest2Sorter_STUDENT_ID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="165" visible="True" name="Sorter_SURNAME" column="SURNAME" PathID="viewMaintainSearchRequest2Sorter_SURNAME">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="166" visible="True" name="Sorter_FIRST_NAME" column="FIRST_NAME" PathID="viewMaintainSearchRequest2Sorter_FIRST_NAME">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="167" visible="True" name="Sorter_YEAR_LEVEL" column="YEAR_LEVEL" PathID="viewMaintainSearchRequest2Sorter_YEAR_LEVEL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="168" visible="True" name="Sorter_ENROLMENT_STATUS" column="ENROLMENT_STATUS" PathID="viewMaintainSearchRequest2Sorter_ENROLMENT_STATUS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Link id="169" visible="Yes" fieldSourceType="DBColumn" dataType="Float" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="STUDENT_ID" fieldSource="STUDENT_ID" hrefSource="Student_Comments_maintain.ccp" PathID="viewMaintainSearchRequest2STUDENT_ID">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="170" sourceType="DataField" format="yyyy-mm-dd" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
<LinkParameter id="171" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Label id="172" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" PathID="viewMaintainSearchRequest2SURNAME">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="173" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" PathID="viewMaintainSearchRequest2FIRST_NAME">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="174" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" PathID="viewMaintainSearchRequest2YEAR_LEVEL">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="175" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" PathID="viewMaintainSearchRequest2ENROLMENT_STATUS">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Button id="177" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" PathID="viewMaintainSearchRequest2Button_Submit">
<Components/>
<Events>
<Event name="OnClick" type="Client">
<Actions>
<Action actionName="Confirmation Message" actionCategory="General" id="283" message="This will Update the ticked students to [Standard Learning Program] for all their Subjects not already flagged as Custom Learning."/>
</Actions>
</Event>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Hide-Show Component" actionCategory="General" id="284" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" name1="TotalRecords" sourceType1="SpecialValue" name2="0" sourceType2="Expression"/>
<Action actionName="Hide-Show Component" actionCategory="General" id="285" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" name1="tmpNoCLPCount" sourceType1="Expression" name2="0" sourceType2="Expression"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Button>
<Label id="181" fieldSourceType="CodeExpression" dataType="Text" html="False" generateSpan="False" name="lblPastoralID" fieldSource="(session(&quot;UserID&quot;).toupper)" PathID="viewMaintainSearchRequest2lblPastoralID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Link id="190" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_IntakeDone" fieldSource="IntakeInterviewDisplay" hrefSource="Student_Comments_maintain.ccp" PathID="viewMaintainSearchRequest2link_IntakeDone">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="191" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
<LinkParameter id="192" sourceType="DataField" format="yyyy-mm-dd" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
<LinkParameter id="193" sourceType="Expression" format="yyyy-mm-dd" name="showinterviewpanel" source="1"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Link id="194" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_PathwaysDone" fieldSource="PathwayProfileDisplay" hrefSource="Student_Comments_maintain.ccp" PathID="viewMaintainSearchRequest2link_PathwaysDone">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="195" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
<LinkParameter id="196" sourceType="DataField" format="yyyy-mm-dd" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
<LinkParameter id="197" sourceType="Expression" format="yyyy-mm-dd" name="showprofilepanel" source="1"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Sorter id="202" visible="True" name="Sorter_ENROLMENT_DATE" column="ENROLMENT_DATE" PathID="viewMaintainSearchRequest2Sorter_ENROLMENT_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Label id="203" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="ENROLMENT_DATE" fieldSource="ENROLMENT_DATE" format="dd mmm yyyy" PathID="viewMaintainSearchRequest2ENROLMENT_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="204" fieldSourceType="CodeExpression" dataType="Text" html="True" generateSpan="False" name="lblNewStudent" fieldSource="&quot;&lt;font color=green&gt;New!&lt;/font&gt;&quot;" PathID="viewMaintainSearchRequest2lblNewStudent">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="286"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Label>
<Hidden id="206" fieldSourceType="DBColumn" dataType="Integer" name="hidden_days_since_enrolment" fieldSource="days_since_enrolment" required="False" PathID="viewMaintainSearchRequest2hidden_days_since_enrolment">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Hidden>
<Link id="210" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="StudentSummary.ccp" PathID="viewMaintainSearchRequest2Link1">
<Components/>
<Events/>
<LinkParameters>
<LinkParameter id="211" sourceType="DataField" format="yyyy-mm-dd" name="STUDENT_ID" source="STUDENT_ID"/>
<LinkParameter id="212" sourceType="DataField" format="yyyy-mm-dd" name="ENROLMENT_YEAR" source="ENROLMENT_YEAR"/>
</LinkParameters>
<Attributes/>
<Features/>
</Link>
<Sorter id="249" visible="True" name="Sorter_LADID" column="PASTORAL_CARE_ID" PathID="viewMaintainSearchRequest2Sorter_LADID">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Sorter id="251" visible="True" name="Sorter_CATEGORY_CODE" column="CATEGORY_CODE" PathID="viewMaintainSearchRequest2Sorter_CATEGORY_CODE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Sorter>
<Label id="252" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LAD" fieldSource="PASTORAL_CARE_ID" PathID="viewMaintainSearchRequest2LAD">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="253" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="CATEGORY_CODE" fieldSource="CATEGORY_CODE" PathID="viewMaintainSearchRequest2CATEGORY_CODE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Button id="255" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit1" operation="Submit" PathID="viewMaintainSearchRequest2Button_Submit1">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Hide-Show Component" actionCategory="General" id="287" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" name1="TotalRecords" sourceType1="SpecialValue" name2="0" sourceType2="Expression"/>
<Action actionName="Hide-Show Component" actionCategory="General" id="288" action="Hide" conditionType="Parameter" dataType="Integer" condition="Equal" name1="tmpGreenLetterCount" sourceType1="Expression" name2="0" sourceType2="Expression"/>
</Actions>
</Event>
</Events>
<Attributes/>
<Features/>
</Button>
<RadioButton id="258" visible="No" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="rbGreenLetterSend" dataSource="I;Yes - Send;A;No letter" defaultValue="&quot;N&quot;" PathID="viewMaintainSearchRequest2rbGreenLetterSend">
<Components/>
<Events>
<Event name="BeforeShow" type="Server">
<Actions>
<Action actionName="Declare Variable" actionCategory="General" id="289" name="tmpCountDefaulting" type="Integer" initialValue="0"/>
<Action actionName="Custom Code" actionCategory="General" id="290"/>
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
<Label id="264" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="lblGreenLetter" defaultValue="&quot;&lt;font color='green'&gt;Done!&lt;/font&gt;&quot;" PathID="viewMaintainSearchRequest2lblGreenLetter">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="265" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="GREEN_LETTER_SENT_FLAG" fieldSource="GREEN_LETTER_SENT_FLAG" PathID="viewMaintainSearchRequest2GREEN_LETTER_SENT_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="267" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="GREEN_LETTER_SENT_DATE" fieldSource="GREEN_LETTER_SENT_DATE" format="dd mmm yy" PathID="viewMaintainSearchRequest2GREEN_LETTER_SENT_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="269" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="AMBER_LETTER_SENT_FLAG" fieldSource="AMBER_LETTER_SENT_FLAG" PathID="viewMaintainSearchRequest2AMBER_LETTER_SENT_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="271" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="AMBER_LETTER_SENT_DATE" fieldSource="AMBER_LETTER_SENT_DATE" format="dd mmm yy" PathID="viewMaintainSearchRequest2AMBER_LETTER_SENT_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="273" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="RED_LETTER_SENT_FLAG" fieldSource="RED_LETTER_SENT_FLAG" PathID="viewMaintainSearchRequest2RED_LETTER_SENT_FLAG">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="275" fieldSourceType="DBColumn" dataType="Date" html="False" generateSpan="False" name="RED_LETTER_SENT_DATE" fieldSource="RED_LETTER_SENT_DATE" format="dd mmm yy" PathID="viewMaintainSearchRequest2RED_LETTER_SENT_DATE">
<Components/>
<Events/>
<Attributes/>
<Features/>
</Label>
<Label id="292" fieldSourceType="DBColumn" dataType="Text" html="False" name="MandatedCohort" fieldSource="MandatedCohort" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2MandatedCohort">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
<Label id="294" fieldSourceType="DBColumn" dataType="Text" html="False" name="LearningPlan" fieldSource="LEARNING_PROGRAM" required="True" caption="FIRST NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="viewMaintainSearchRequest2LearningPlan">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
</Components>
<Events>
<Event name="BeforeExecuteUpdate" type="Server">
<Actions>
<Action actionName="Custom Code" actionCategory="General" id="281"/>
</Actions>
</Event>
</Events>
<TableParameters/>
<SPParameters/>
<SQLParameters>
<SQLParameter id="293" dataType="Text" defaultValue="&quot;&quot;" designDefaultValue="AONEILL" parameterSource="UserId" parameterType="Session" variable="UserId"/>
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
<TableParameter id="229" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Integer" searchConditionType="Equal" parameterType="DataSourceColumn" parameterSource="STUDENT_ID" logicOperator="And" defaultValue="&quot;&quot;"/>
<TableParameter id="230" conditionType="Expression" useIsNull="False" field="SUBJ_ENROL_STATUS" dataType="Text" searchConditionType="Equal" parameterType="URL" parameterSource="SUBJ_ENROL_STATUS" logicOperator="And" expression="SUBJ_ENROL_STATUS in ('C','D')"/><TableParameter id="231" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="DataSourceColumn" parameterSource="ENROLMENT_YEAR" logicOperator="And"/><TableParameter id="232" conditionType="Expression" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" parameterSource="SUBJECT_ID" logicOperator="And" expression="SUBJECT_ID not in (921,922,923,924,931,932,933) "/>
</UConditions>
<UFormElements>
<CustomParameter id="233" field="DEFAULTING_STATUS" dataType="Text" parameterType="Control" parameterSource="rbGreenLetterSend" omitIfEmpty="True"/>
<CustomParameter id="234" field="DEFAULTING_STATUS_DATE" dataType="Date" parameterType="Expression" parameterSource="Now()" omitIfEmpty="True"/>
</UFormElements>
<DSPParameters>
<SPParameter id="235" parameterName="@RETURN_VALUE" dataType="Int" dataSize="0" direction="ReturnValue" parameterType="URL" parameterSource="RETURN_VALUE" scale="0" precision="10"/>
<SPParameter id="236" parameterName="@student_id" dataType="Int" dataSize="0" direction="Input" parameterType="DataSourceColumn" parameterSource="STUDENT_ID" scale="0" precision="10"/>
<SPParameter id="237" parameterName="@staff_id" dataType="Char" dataSize="20" direction="Input" parameterType="Session" parameterSource="UserId" scale="0" precision="10"/>
</DSPParameters>
<DSQLParameters>
<SQLParameter id="238" variable="STUDENT_ID" dataType="Text" parameterType="DataSourceColumn" parameterSource="STUDENT_ID" defaultValue="0"/>
<SQLParameter id="239" variable="ENROL_YEAR" dataType="Integer" parameterType="DataSourceColumn" parameterSource="ENROLMENT_YEAR" defaultValue="year(getdate())"/>
<SQLParameter id="240" variable="YEAR_LEVEL" dataType="Integer" parameterType="DataSourceColumn" parameterSource="YEAR_LEVEL" defaultValue="20"/>
<SQLParameter id="241" variable="LOGIN_ID" dataType="Text" parameterType="Session" parameterSource="UserLogin" defaultValue="&quot;unknown&quot;"/>
</DSQLParameters>
<DConditions/>
<SecurityGroups/>
<Attributes/>
<Features/>
</EditableGrid>
</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="PastoralTeacher_StudentList.aspx" forShow="True" url="PastoralTeacher_StudentList.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="PastoralTeacher_StudentList.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>

		<CodeFile id="2" language="VB" name="PastoralTeacher_StudentListDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
