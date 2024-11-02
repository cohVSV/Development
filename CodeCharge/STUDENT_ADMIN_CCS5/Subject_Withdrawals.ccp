<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False">
	<Components>
		<IncludePage id="2" name="Header" page="Header.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Record id="8" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="None" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="SUBJECTSearch" wizardCaption="Search SUBJECT " wizardOrientation="Vertical" wizardFormMethod="post" returnPage="Subject_Withdrawals.ccp" PathID="SUBJECTSearch">
			<Components>
				<TextBox id="59" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_STUDENT_ID" PathID="SUBJECTSearchs_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="58" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="s_ENROL_YEAR" defaultValue="year(now())" PathID="SUBJECTSearchs_ENROL_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="9" urlType="Relative" enableValidation="True" isDefault="True" name="Button_DoSearch" operation="Search" wizardCaption="Search" PathID="SUBJECTSearchButton_DoSearch">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="30"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
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
		<Record id="53" sourceType="SQL" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="UpdateForm" actionPage="Despatch_UpdatebyYear" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="select rtrim(a.SURNAME) as SURNAME
,rtrim(a.FIRST_NAME) as FIRSTNAME
,b.CAMPUS, b.ENROLMENT_YEAR, a.STUDENT_ID
, b.year_level, b.pastoral_care_id
from STUDENT a, STUDENT_ENROLMENT b 
where a.STUDENT_ID={s_STUDENT_ID}
and ENROLMENT_YEAR={s_ENROL_YEAR}
 and a.STUDENT_ID=b.STUDENT_ID" PathID="UpdateForm">
			<Components>
				<Label id="61" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblStudentID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="65" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblFirstname" fieldSource="FIRSTNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="66" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSurname" fieldSource="SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="56" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblEnrolYear" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<TextBox id="46" visible="Yes" fieldSourceType="CodeExpression" dataType="Date" name="withdrawaldate" required="True" defaultValue="now()" format="dd/mm/yyyy" caption="Withdrawal Date" DBFormat="yyyy-mm-dd HH:nn:ss" PathID="UpdateFormwithdrawaldate">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="70" visible="Yes" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="listReasonOff" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="WITHDRAWAL_REASON" required="True" caption="Reason Off" PathID="UpdateFormlistReasonOff" orderBy="WITHDRAWAL_REASON" boundColumn="WITHDRAWAL_REASON_ID" textColumn="WITHDRAWAL_REASON">
					<Components/>
					<Events/>
					<TableParameters>
						<TableParameter id="96" conditionType="Expression" useIsNull="False" expression="STATUS = 1" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="95" posHeight="136" posLeft="10" posTop="10" posWidth="160" schemaName="dbo" tableName="WITHDRAWAL_REASON"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="97" fieldName="WITHDRAWAL_REASON_ID" tableName="WITHDRAWAL_REASON"/>
						<Field id="98" fieldName="WITHDRAWAL_REASON" tableName="WITHDRAWAL_REASON"/>
					</Fields>
					<Attributes/>
					<Features/>
					<PKFields>
						<PKField id="99" dataType="Float" fieldName="WITHDRAWAL_REASON_ID" tableName="WITHDRAWAL_REASON"/>
					</PKFields>
				</ListBox>
				<ListBox id="71" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="listSub_Enrol_Status" wizardEmptyCaption="Select Value" connection="connDECVPRODSQL2005" dataSource="C;Current;W;Withdrawn;F;Finished;E;Extending;D;Defaulting;P;Pending" defaultValue="&quot;W&quot;" required="False" caption="Enrolment Status" _nameOfList="-none-" PathID="UpdateFormlistSub_Enrol_Status">
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
				<Button id="45" urlType="Relative" enableValidation="True" isDefault="False" name="Button_DoUpdate" PathID="UpdateFormButton_DoUpdate">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="52" eventType="Server"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="72" message="Withdraw Students from the selected subject(s) ?" eventType="Client"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Button id="76" urlType="Relative" enableValidation="False" isDefault="False" name="Button_DoUpdate1" PathID="UpdateFormButton_DoUpdate1">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="77"/>
							</Actions>
						</Event>
						<Event name="OnClick" type="Client">
							<Actions>
								<Action actionName="Confirmation Message" actionCategory="General" id="78" message="Are you sure you want to NON SUBMIT the selected subject(s) ?" eventType="Client"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="81" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblYearLevel" fieldSource="year_level">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="82" visible="Yes" fieldSourceType="DBColumn" sourceType="SQL" dataType="Text" returnValueType="Number" name="listNonSubmitReason" wizardEmptyCaption="Select Value" PathID="UpdateFormlistNonSubmitReason" connection="connDECVPRODSQL2005" dataSource="select 'Awaiting Apprenticeship/Traineeship' as [displaylabel], '' + rtrim(a.FIRST_NAME) + ' has been placed in NONSUBMIT. He/she is currently awaiting to begin an apprenticeship/traineeship. SS teacher was ' + b.pastoral_care_id  as [value]
from STUDENT a, STUDENT_ENROLMENT b where a.STUDENT_ID={s_STUDENT_ID} and ENROLMENT_YEAR={s_ENROL_YEAR} and a.STUDENT_ID=b.STUDENT_ID
union
select 'Awaiting VRQA registration' as [displaylabel], 'Awaiting VRQA registration' as [value]
from STUDENT a, STUDENT_ENROLMENT b where a.STUDENT_ID={s_STUDENT_ID} and ENROLMENT_YEAR={s_ENROL_YEAR} and a.STUDENT_ID=b.STUDENT_ID
union
select 'Medical' as [displaylabel], 'Due to medical circumstances, ' + rtrim(a.FIRST_NAME) + ' has been placed in NONSUBMIT. Current medical documentation supporting this has been received and placed in student file. SS teacher was ' + b.pastoral_care_id  as [value]
from STUDENT a, STUDENT_ENROLMENT b where a.STUDENT_ID={s_STUDENT_ID} and ENROLMENT_YEAR={s_ENROL_YEAR} and a.STUDENT_ID=b.STUDENT_ID
union
select 'School Refuser' as [displaylabel], '' + rtrim(a.FIRST_NAME) + ' has been placed in NONSUBMIT due to their refusal of participating in their Learning Program and/or any strategies established for their engagement. SS teacher was ' + b.pastoral_care_id  as [value]
from STUDENT a, STUDENT_ENROLMENT b where a.STUDENT_ID={s_STUDENT_ID} and ENROLMENT_YEAR={s_ENROL_YEAR} and a.STUDENT_ID=b.STUDENT_ID
union
select 'SMAP' as [displaylabel], rtrim(a.FIRST_NAME) + ' Placed in NONSUBMIT and made a referral to pathways and transitions as a result of the SMAPs process, as to date has submitted an insufficient amount of work. SS teacher was ' + b.pastoral_care_id as [value]
from STUDENT a, STUDENT_ENROLMENT b where a.STUDENT_ID={s_STUDENT_ID} and ENROLMENT_YEAR={s_ENROL_YEAR} and a.STUDENT_ID=b.STUDENT_ID
union
select 'Wellbeing recommendation' as [displaylabel], 'Due to recommendation from Wellbeing Caseworker, ' +  rtrim(a.FIRST_NAME) + ' has been placed in NONSUBMIT. SS teacher was ' + b.pastoral_care_id as [value]
from STUDENT a, STUDENT_ENROLMENT b where a.STUDENT_ID={s_STUDENT_ID} and ENROLMENT_YEAR={s_ENROL_YEAR} and a.STUDENT_ID=b.STUDENT_ID



 " boundColumn="value" textColumn="displaylabel">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="89"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters>
						<SQLParameter id="111" dataType="Integer" defaultValue="0" designDefaultValue="56794" parameterSource="s_STUDENT_ID" parameterType="URL" variable="s_STUDENT_ID"/>
<SQLParameter id="112" dataType="Integer" defaultValue="year(now())" designDefaultValue="2014" parameterSource="s_ENROL_YEAR" parameterType="URL" variable="s_ENROL_YEAR"/>
</SQLParameters>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
					<Attributes/>
					<Features/>
				</ListBox>
				<Label id="85" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSSTeacherID" fieldSource="pastoral_care_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<TextArea id="86" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="coord_comment" PathID="UpdateFormcoord_comment">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextArea>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSelections">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="102" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="linkEarlyExit" PathID="UpdateFormlinkEarlyExit" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Open Early Exit Email','textSourceDB':'','hrefSource':'','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}" removeParameters="s_STUDENT_ID;s_ENROLMENT_YEAR">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="103"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="83" dataType="Text" defaultValue="0" designDefaultValue="44696" parameterSource="s_STUDENT_ID" parameterType="URL" variable="s_STUDENT_ID"/>
				<SQLParameter id="84" dataType="Text" defaultValue="year(now())" designDefaultValue="2007" parameterSource="s_ENROL_YEAR" parameterType="URL" variable="s_ENROL_YEAR"/>
			</SQLParameters>
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
		<Grid id="3" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" dataSource="select B.CAMPUS_CODE, A.SUBJECT_ID, A.SUBJ_ENROL_STATUS, B.SUBJECT_TITLE, A.SEMESTER , A.STAFF_ID
	, A.NON_SUBMITTING_FLAG
	, (case when A.NON_SUBMITTING_FLAG = 1 then 'Non-Submitting' else '' end) as NON_SUBMITTING_FLAG_display
from STUDENT_SUBJECT A, SUBJECT B 
where A.SUBJECT_ID = B.SUBJECT_ID and 
A.STUDENT_ID = {s_STUDENT_ID} and 
A.ENROLMENT_YEAR = {s_ENROL_YEAR}
order by B.CAMPUS_CODE,A.SUBJECT_ID" activeCollection="SQLParameters" name="SUBJECT" pageSizeLimit="100" wizardCaption="List of SUBJECT " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Subjects found" parameterTypeListName="ParameterTypeList" PathID="SUBJECT">
			<Components>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TotalRecords" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="12"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<CheckBox id="24" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="cbox" html="True" checkedValue="&quot;ON&quot;" uncheckedValue="&quot;OFF&quot;" defaultValue="Unchecked" PathID="SUBJECTcbox">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</CheckBox>
				<Label id="18" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="64" fieldSourceType="DBColumn" dataType="Text" html="False" name="STATUS" fieldSource="SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="DEFAULT SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="94" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="STAFF_ID" PathID="SUBJECTSTAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="108" fieldSourceType="DBColumn" dataType="Text" html="False" name="NON_SUBMIT" fieldSource="NON_SUBMITTING_FLAG_display">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Set Row Style" actionCategory="General" id="17" styles="Row;AltRow" name="rowStyle"/>
						<Action actionName="Custom Code" actionCategory="General" id="75"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="109" dataType="Text" defaultValue="0" designDefaultValue="44696" parameterSource="s_STUDENT_ID" parameterType="URL" variable="s_STUDENT_ID"/>
				<SQLParameter id="110" dataType="Text" defaultValue="year(now())" designDefaultValue="2007" parameterSource="s_ENROL_YEAR" parameterType="URL" variable="s_ENROL_YEAR"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Subject_Withdrawals.aspx" forShow="True" url="Subject_Withdrawals.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Subject_Withdrawals.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Subject_WithdrawalsDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="60" form="SUBJECTSearch" name="s_STUDENT_ID"/>
			</Actions>
		</Event>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action actionName="Hide-Show Component" actionCategory="General" id="73" action="Hide" conditionType="Parameter" dataType="Text" componentName="UpdateForm" condition="Equal" name1="s_STUDENT_ID" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
				<Action actionName="Hide-Show Component" actionCategory="General" id="74" action="Hide" conditionType="Parameter" dataType="Text" componentName="SUBJECT" condition="Equal" name1="s_STUDENT_ID" sourceType1="URL" name2="&quot;&quot;" sourceType2="Expression"/>
			</Actions>
		</Event>
	</Events>
</Page>
