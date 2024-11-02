<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False" pasteActions="pasteActions">
	<Components>
		<Link id="35" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_Menu" hrefSource="Menu.ccp" wizardUseTemplateBlock="False" PathID="link_Menu">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="34" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link_SearchRequest" hrefSource="MaintainSearchRequest.ccp" wizardUseTemplateBlock="False" PathID="Link_SearchRequest">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="207" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="link_Assignments" hrefSource="AssignmentSubmissionList.ccp" wizardUseTemplateBlock="False" PathID="link_Assignments">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Panel id="208" visible="False" name="Panel_MaintainMenu" PathID="Panel_MaintainMenu">
			<Components>
				<Link id="209" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link1" hrefSource="StudentDetails_maintain.ccp" wizardUseTemplateBlock="False" PathID="Panel_MaintainMenuLink1">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="221" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link3" hrefSource="Student_Subject_maintain.ccp" wizardUseTemplateBlock="False" PathID="Panel_MaintainMenuLink3">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="210" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link2" hrefSource="StudentEnrolmentDetails_maintain.ccp" wizardUseTemplateBlock="False" PathID="Panel_MaintainMenuLink2">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="222" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link4" hrefSource="FinancialAccounts_maintain.ccp" wizardUseTemplateBlock="False" PathID="Panel_MaintainMenuLink4">
					<Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="211"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Panel>
		<Record id="4" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" connection="connDECVPRODSQL2005" name="viewStudentSummary_Detail" dataSource="viewStudentSummary_Details, ADDRESS, POSTCODE_AREAS_REGIONS" errorSummator="Error" wizardCaption="View View Student Summary Details " wizardFormMethod="post" pasteAsReplace="pasteAsReplace" activeCollection="TableParameters" PathID="viewStudentSummary_Detail" pasteActions="pasteActions">
			<Components>
				<Label id="27" fieldSourceType="DBColumn" dataType="Text" html="False" name="Student_id" fieldSource="student_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="6" fieldSourceType="DBColumn" dataType="Text" html="False" name="enrolment_date" fieldSource="enrolment_date" required="False" caption="Enrolment Date" wizardCaption="Enrolment Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="7" fieldSourceType="DBColumn" dataType="Text" html="False" name="withdrawal_date" fieldSource="withdrawal_date" required="False" caption="Withdrawal Date" wizardCaption="Withdrawal Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="8" fieldSourceType="DBColumn" dataType="Text" html="False" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" required="True" caption="ENROLMENT STATUS" wizardCaption="ENROLMENT STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="33"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="31" fieldSourceType="DBColumn" dataType="Text" html="False" name="WithdrawalReason">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="32"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="9" fieldSourceType="DBColumn" dataType="Float" html="False" name="WITHDRAWAL_REASON_ID" fieldSource="WITHDRAWAL_REASON_ID" required="False" caption="WITHDRAWAL REASON ID" wizardCaption="WITHDRAWAL REASON ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="10" fieldSourceType="DBColumn" dataType="Text" html="False" name="surname" fieldSource="surname" required="False" caption="Surname" wizardCaption="Surname" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="11" fieldSourceType="DBColumn" dataType="Text" html="False" name="first_name" fieldSource="first_name" required="False" caption="First Name" wizardCaption="First Name" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="1211"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="12" fieldSourceType="DBColumn" dataType="Text" html="False" name="middle_name" fieldSource="middle_name" required="False" caption="Middle Name" wizardCaption="Middle Name" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="14" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEX" fieldSource="SEX" required="True" caption="SEX" wizardCaption="SEX" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="28"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Integer" html="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" required="True" caption="YEAR LEVEL" wizardCaption="YEAR LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="29" fieldSourceType="DBColumn" dataType="Text" html="False" name="EnrolmentYear" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="receipt_no" fieldSource="receipt_no" required="False" caption="Receipt No" wizardCaption="Receipt No" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="15" fieldSourceType="DBColumn" dataType="Text" html="False" name="subcategory_full_title" fieldSource="subcategory_full_title" required="False" caption="Subcategory Full Title" wizardCaption="Subcategory Full Title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="16" fieldSourceType="DBColumn" dataType="Text" html="False" name="attending_school_name" fieldSource="attending_school_name" required="True" caption="Attending School Name" wizardCaption="Attending School Name" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="17" fieldSourceType="DBColumn" dataType="Float" html="False" name="ATTENDING_SCHOOL_ID" fieldSource="ATTENDING_SCHOOL_ID" required="False" caption="ATTENDING SCHOOL ID" wizardCaption="ATTENDING SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="home_school_name" fieldSource="home_school_name" required="True" caption="Home School Name" wizardCaption="Home School Name" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Float" html="False" name="HOME_SCHOOL_ID" fieldSource="HOME_SCHOOL_ID" required="True" caption="HOME SCHOOL ID" wizardCaption="HOME SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="23" fieldSourceType="DBColumn" dataType="Float" html="False" name="POSTAL_ADDRESS_ID" fieldSource="POSTAL_ADDRESS_ID" required="True" caption="POSTAL ADDRESS ID" wizardCaption="POSTAL ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="24" fieldSourceType="DBColumn" dataType="Float" html="False" name="CURR_RESID_ADDRESS_ID" fieldSource="CURR_RESID_ADDRESS_ID" required="False" caption="CURR RESID ADDRESS ID" wizardCaption="CURR RESID ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Float" html="False" name="ORIG_RESID_ADDRESS_ID" fieldSource="ORIG_RESID_ADDRESS_ID" required="False" caption="ORIG RESID ADDRESS ID" wizardCaption="ORIG RESID ADDRESS ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="283" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblHomeSchooled" PathID="viewStudentSummary_DetaillblHomeSchooled" defaultValue="&quot;&lt;em&gt;Home Schooled&lt;/em&gt;&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="284" action="Hide" conditionType="Expression" dataType="Integer" componentName="lblHomeSchooled" condition="(item.YEAR_LEVEL.GetFormattedValue() &lt;&gt; &quot;30&quot;)" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="285" fieldSourceType="DBColumn" dataType="Text" html="False" name="VSN" PathID="viewStudentSummary_DetailVSN" fieldSource="VSN" defaultValue="&quot;Unknown&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="287"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="286" fieldSourceType="DBColumn" dataType="Text" html="False" name="VSR_Enrolled" PathID="viewStudentSummary_DetailVSR_Enrolled" defaultValue="&quot;False&quot;" fieldSource="EnrolledBefore">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="288"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="13" fieldSourceType="DBColumn" dataType="Text" html="False" name="birth_date" fieldSource="birth_date" required="False" caption="Birth Date" wizardCaption="Birth Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="289" fieldSourceType="DBColumn" dataType="Text" html="False" name="preferred_name" PathID="viewStudentSummary_Detailpreferred_name" fieldSource="PREFERRED_NAME">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="1212"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="298" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblWd_Exit_Destination" PathID="viewStudentSummary_DetaillblWd_Exit_Destination">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="303"/>
								<Action actionName="DLookup" actionCategory="Database" id="299" typeOfTarget="Control" expression="&quot;EXIT_DESTINATION_DESCRIPTION&quot;" domain="&quot;WITHDRAWAL_EXIT_DESTINATION&quot;" criteria="&quot;WD_DEST_ID = &quot; &amp; item.WD_EXIT_DESTINATION.GetFormattedValue()" connection="connDECVPRODSQL2005" dataType="Text" target="lblWd_Exit_Destination"/>
								<Action actionName="Custom Code" actionCategory="General" id="304"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="302" fieldSourceType="DBColumn" dataType="Text" html="False" name="WD_EXIT_DESTINATION" PathID="viewStudentSummary_DetailWD_EXIT_DESTINATION" fieldSource="WITHDRAWAL_EXIT_DESTINATION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Hidden id="311" fieldSourceType="DBColumn" dataType="Date" name="hidden_DATE_STUDENTFOLDER_CREATED" PathID="viewStudentSummary_Detailhidden_DATE_STUDENTFOLDER_CREATED" fieldSource="DATE_STUDENTFOLDER_CREATED" format="yyyy-mm-dd H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="313" fieldSourceType="DBColumn" dataType="Text" html="False" name="label_Age" PathID="viewStudentSummary_Detaillabel_Age" fieldSource="AgeNow">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="407" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_create_teacheremails" PathID="viewStudentSummary_Detaillink_create_teacheremails" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Email Virtual School Victoria Teachers','textSourceDB':'','hrefSource':'','hrefSourceDB':'','title':'','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="408" type="Text" initialValue="&quot;&quot;" name="strTeacherEmailList" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="409" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Link id="418" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" urlType="Relative" preserveParameters="None" name="STUDENT_EMAIL" PathID="viewStudentSummary_DetailSTUDENT_EMAIL" wizardUseTemplateBlock="False" fieldSource="STUDENT_EMAIL" hrefSource="STUDENT_EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="420" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="421" fieldSourceType="DBColumn" dataType="Text" html="False" name="STUDENT_MOBILE" PathID="viewStudentSummary_DetailSTUDENT_MOBILE" fieldSource="STUDENT_MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="422" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblATARNotRequired" PathID="viewStudentSummary_DetaillblATARNotRequired" defaultValue="&quot;&lt;font color='#FF0000'&gt;&lt;strong&gt;ATAR NOT Required&lt;/strong&gt;&lt;/font&gt;&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="423" action="Hide" conditionType="Expression" dataType="Integer" componentName="lblATARNotRequired" condition="(item.ATAR_REQUIRED.GetFormattedValue() &lt;&gt; &quot;N&quot;)" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="424" fieldSourceType="DBColumn" dataType="Text" html="False" name="ATAR_REQUIRED" PathID="viewStudentSummary_DetailATAR_REQUIRED" fieldSource="ATAR_REQUIRED">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="475" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="link_create_parentemails" PathID="viewStudentSummary_Detaillink_create_parentemails" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="477" id_oncopy="477"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="511" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="PORTAL_ACCESS" PathID="viewStudentSummary_DetailPORTAL_ACCESS" fieldSource="PORTAL_ACCESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="515" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblPortalAccessRestricted" PathID="viewStudentSummary_DetaillblPortalAccessRestricted" defaultValue="&quot;&lt;font color='#FF0000'&gt;&lt;strong&gt;Not On Portal&lt;/strong&gt;&lt;/font&gt;&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="516" action="Hide" conditionType="Expression" dataType="Integer" componentName="lblPortalAccessRestricted" condition="(item.PORTAL_ACCESS.GetFormattedValue() &lt;&gt; &quot;N&quot;)" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="517" fieldSourceType="DBColumn" dataType="Text" html="True" name="lblSharedEnrolment" PathID="viewStudentSummary_DetaillblSharedEnrolment" defaultValue="&quot;&lt;font color='#FF0000'&gt;&lt;strong&gt;Shared Enrolment&lt;/strong&gt;&lt;/font&gt;&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Hide-Show Component" actionCategory="General" id="518" action="Hide" conditionType="Expression" dataType="Integer" componentName="lblSharedEnrolment" condition="(item.ATTENDING_SCHOOL_ID.GetFormattedValue() = item.HOME_SCHOOL_ID.GetFormattedValue() )" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="526" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="cake" PathID="viewStudentSummary_Detailcake" defaultValue="&quot;&amp;#x1f382;&quot;">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="527"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="26" fieldSourceType="DBColumn" dataType="Text" html="False" name="PASTORAL_CARE_ID" fieldSource="PASTORAL_CARE_ID" required="False" caption="PASTORAL CARE ID" wizardCaption="PASTORAL CARE ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="529" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblAreaDisplay" PathID="viewStudentSummary_DetaillblAreaDisplay" defaultValue="&quot;unknown&quot;" fieldSource="Area">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="530" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblRegionDisplay" PathID="viewStudentSummary_DetaillblRegionDisplay" defaultValue="&quot;unknown&quot;" fieldSource="Region">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="550" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblEnrolStatus" PathID="viewStudentSummary_DetaillblEnrolStatus" fieldSource="ENROLMENT_STATUS" defaultValue="&quot;E&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="691" fieldSourceType="DBColumn" dataType="Text" html="False" name="org_school_name" fieldSource="org_school_name" required="True" caption="Home School Name" wizardCaption="Home School Name" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="693" fieldSourceType="DBColumn" dataType="Float" html="False" name="ORGANISATION_SCHOOL_ID" fieldSource="ORGANISATION_SCHOOL_ID" required="True" caption="HOME SCHOOL ID" wizardCaption="HOME SCHOOL ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="778" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="None" name="Link1" PathID="viewStudentSummary_DetailLink1" hrefSource="http://intranet/Reports/Pages/Folder.aspx?ItemPath=%2fNightly+Reports" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Welcome Letter','textSourceDB':'','hrefSource':'http://intranet/Reports/Pages/Folder.aspx?ItemPath=%2fNightly+Reports','hrefSourceDB':'','title':'','target':'_blank','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}"><Components/>
					<Events/>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="828" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblPLP" PathID="viewStudentSummary_DetaillblPLP" fieldSource="LEARNING_PROGRAM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="829" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="LEARNING_PROGRAM_text" PathID="viewStudentSummary_DetailLEARNING_PROGRAM_text" fieldSource="LEARNING_PROGRAM_text">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="448" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Absolute" preserveParameters="None" name="link_showstudentreports" PathID="viewStudentSummary_Detaillink_showstudentreports" wizardUseTemplateBlock="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Declare Variable" actionCategory="General" id="541" name="tmpStudentID" type="Text" initialValue="&quot;0unknown&quot;" eventType="Server"/>
								<Action actionName="Save Control Value" actionCategory="General" id="450" name="Student_id" sourceType="Variable" sourceName="tmpStudentID" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="451" eventType="Server"/>

							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="456" fieldSourceType="DBColumn" dataType="Text" html="True" name="labelContactWho1" PathID="viewStudentSummary_DetaillabelContactWho1" defaultValue="&quot;&lt;em&gt;Contact your Leading Teacher to create Student Files&lt;/em&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="306" visible="No" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Absolute" preserveParameters="None" name="link_showstudentfolder" PathID="viewStudentSummary_Detaillink_showstudentfolder" wizardUseTemplateBlock="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Save Control Value" actionCategory="General" id="308" name="Student_id" sourceType="Variable" sourceName="tmpStudentID" eventType="Server"/>
								<Action actionName="Custom Code" actionCategory="General" id="309" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Label id="305" fieldSourceType="DBColumn" dataType="Text" html="True" name="labelContactWho" PathID="viewStudentSummary_DetaillabelContactWho" defaultValue="&quot;&lt;em&gt;Contact your Leading Teacher to create Student Files&lt;/em&gt;&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="1067" fieldSourceType="DBColumn" dataType="Text" html="False" name="SSG_FACILITATOR_ID" fieldSource="SSG_FACILITATOR_ID" required="False" caption="PASTORAL CARE ID" wizardCaption="PASTORAL CARE ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="1115" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Database" urlType="Relative" preserveParameters="None" name="LinkLearningAdvisorEmail" PathID="viewStudentSummary_DetailLinkLearningAdvisorEmail" wizardUseTemplateBlock="False" fieldSource="PASTORAL_CARE_ID" hrefSource="PASTORAL_CARE_ID">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="1116"/>
							</Actions>
						</Event>
					</Events>
					<LinkParameters/>
					<Attributes/>
					<Features/>
				</Link>
				<Hidden id="1165" fieldSourceType="DBColumn" dataType="Text" name="hidden_SEX_SELF_DESCRIBED" PathID="viewStudentSummary_Detailhidden_SEX_SELF_DESCRIBED" fieldSource="SEX_SELF_DESCRIBED">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="310"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="1122" conditionType="Parameter" useIsNull="False" dataType="Float" field="viewStudentSummary_Details.STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="student_id" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="1123" conditionType="Parameter" useIsNull="False" dataType="Float" defaultValue="year(now())" field="viewStudentSummary_Details.ENROLMENT_YEAR" logicOperator="And" parameterSource="ENROLMENT_YEAR" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="1213" tableName="viewStudentSummary_Details"/>
				<JoinTable id="1214" tableName="ADDRESS"/>
				<JoinTable id="1215" tableName="POSTCODE_AREAS_REGIONS"/>
			</JoinTables>
			<JoinLinks>
				<JoinTable2 id="1120" conditionType="Equal" fieldLeft="viewStudentSummary_Details.CURR_RESID_ADDRESS_ID" fieldRight="ADDRESS.ADDRESS_ID" joinType="left" tableLeft="viewStudentSummary_Details" tableRight="ADDRESS"/>
				<JoinTable2 id="1121" conditionType="Equal" fieldLeft="ADDRESS.POSTCODE" fieldRight="POSTCODE_AREAS_REGIONS.Postcode" joinType="left" tableLeft="ADDRESS" tableRight="POSTCODE_AREAS_REGIONS"/>
			</JoinLinks>
			<Fields>
				<Field id="1124" fieldName="Region" tableName="POSTCODE_AREAS_REGIONS"/>
				<Field id="1125" fieldName="Area" tableName="POSTCODE_AREAS_REGIONS"/>
				<Field id="1126" alias="surname" fieldName="rtrim(surname)" isExpression="True"/>
				<Field id="1127" alias="first_name" fieldName="rtrim(first_name)" isExpression="True"/>
				<Field id="1128" fieldName="STUDENT_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1129" fieldName="middle_name" tableName="viewStudentSummary_Details"/>
				<Field id="1130" fieldName="birth_date" tableName="viewStudentSummary_Details"/>
				<Field id="1131" fieldName="SEX" tableName="viewStudentSummary_Details"/>
				<Field id="1132" fieldName="subcategory_full_title" tableName="viewStudentSummary_Details"/>
				<Field id="1133" fieldName="ATTENDING_SCHOOL_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1134" fieldName="attending_school_name" tableName="viewStudentSummary_Details"/>
				<Field id="1135" fieldName="HOME_SCHOOL_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1136" fieldName="home_school_name" tableName="viewStudentSummary_Details"/>
				<Field id="1137" fieldName="YEAR_LEVEL" tableName="viewStudentSummary_Details"/>
				<Field id="1138" fieldName="receipt_no" tableName="viewStudentSummary_Details"/>
				<Field id="1139" fieldName="ENROLMENT_YEAR" tableName="viewStudentSummary_Details"/>
				<Field id="1140" fieldName="enrolment_date" tableName="viewStudentSummary_Details"/>
				<Field id="1141" fieldName="withdrawal_date" tableName="viewStudentSummary_Details"/>
				<Field id="1142" fieldName="ENROLLEDBEFORE" tableName="viewStudentSummary_Details"/>
				<Field id="1143" fieldName="VSN" tableName="viewStudentSummary_Details"/>
				<Field id="1144" fieldName="PREFERRED_NAME" tableName="viewStudentSummary_Details"/>
				<Field id="1145" fieldName="ENROLMENT_STATUS" tableName="viewStudentSummary_Details"/>
				<Field id="1146" fieldName="WITHDRAWAL_REASON_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1147" fieldName="PASTORAL_CARE_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1148" fieldName="WITHDRAWAL_EXIT_DESTINATION" tableName="viewStudentSummary_Details"/>
				<Field id="1149" fieldName="DATE_STUDENTFOLDER_CREATED" tableName="viewStudentSummary_Details"/>
				<Field id="1150" fieldName="Age" tableName="viewStudentSummary_Details"/>
				<Field id="1151" fieldName="STUDENT_EMAIL" tableName="viewStudentSummary_Details"/>
				<Field id="1152" fieldName="STUDENT_MOBILE" tableName="viewStudentSummary_Details"/>
				<Field id="1153" fieldName="ATAR_REQUIRED" tableName="viewStudentSummary_Details"/>
				<Field id="1154" fieldName="PORTAL_ACCESS" tableName="viewStudentSummary_Details"/>
				<Field id="1155" fieldName="POSTAL_ADDRESS_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1156" fieldName="CURR_RESID_ADDRESS_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1157" fieldName="ORIG_RESID_ADDRESS_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1158" fieldName="ORGANISATION_SCHOOL_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1159" fieldName="org_school_name" tableName="viewStudentSummary_Details"/>
				<Field id="1160" fieldName="LEARNING_PROGRAM_text" tableName="viewStudentSummary_Details"/>
				<Field id="1161" fieldName="LEARNING_PROGRAM" tableName="viewStudentSummary_Details"/>
				<Field id="1162" fieldName="SSG_FACILITATOR_ID" tableName="viewStudentSummary_Details"/>
				<Field id="1163" fieldName="AgeNow" tableName="viewStudentSummary_Details"/>
				<Field id="1164" fieldName="SEX_SELF_DESCRIBED" tableName="viewStudentSummary_Details"/>
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
			<Features/>
			<PKFields>
			</PKFields>
		</Record>
		<Grid id="36" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="40" connection="connDECVPRODSQL2005" dataSource="viewStudentSummary_SubjectList" name="viewStudentSummary_SubjectList" orderBy="SUBJECT_ID" pageSizeLimit="100" wizardCaption="List of View Student Summary Subject List " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Subjects" activeCollection="TableParameters" PathID="viewStudentSummary_SubjectList" pasteActions="pasteActions">
			<Components>
				<Label id="37" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="38" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE_trimmed" wizardCaption="SUBJECT TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="39" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="40" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="41" fieldSourceType="DBColumn" dataType="Date" html="False" name="enrolment_date" fieldSource="enrolment_date2" wizardCaption="Enrolment Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="42" fieldSourceType="DBColumn" dataType="Date" html="False" name="withdrawal_date" fieldSource="withdrawal_date2" wizardCaption="Withdrawal Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="43" fieldSourceType="DBColumn" dataType="Integer" html="False" name="NUM_ASSMT_SUBMISSIONS" fieldSource="NUM_ASSMT_SUBMISSIONS" wizardCaption="NUM ASSMT SUBMISSIONS" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="44" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="STAFF_ID" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="45" fieldSourceType="DBColumn" dataType="Text" html="False" name="INTERIM_PROGRESS_CODE" fieldSource="INTERIM_PROGRESS_CODE" wizardCaption="INTERIM PROGRESS CODE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="46" fieldSourceType="DBColumn" dataType="Text" html="False" name="FINAL_PROGRESS_CODE" fieldSource="FINAL_PROGRESS_CODE" wizardCaption="FINAL PROGRESS CODE" wizardSize="3" wizardMaxLength="3" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="427" fieldSourceType="DBColumn" dataType="Text" html="False" name="CUSTOM_LP_display" fieldSource="MODULE_CUSTOMPROGRAM_display" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="481" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="EXTENSION_OF_VCE_UNIT_display" PathID="viewStudentSummary_SubjectListEXTENSION_OF_VCE_UNIT_display" fieldSource="EXTENSION_OF_VCE_UNIT_display">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="486" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="NON_SUBMITTING_FLAG_display" PathID="viewStudentSummary_SubjectListNON_SUBMITTING_FLAG_display" fieldSource="NON_SUBMITTING_FLAG_display">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="644" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="1188" fieldSourceType="DBColumn" dataType="Text" html="False" name="CLASS_CODE" fieldSource="CLASS_CODE" wizardCaption="STAFF ID" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="445"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="1190" conditionType="Parameter" useIsNull="False" dataType="Integer" field="student_id" logicOperator="And" parameterSource="student_id" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="1191" conditionType="Parameter" useIsNull="False" dataType="Float" field="enrolment_year" logicOperator="And" parameterSource="enrolment_year" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="1192" conditionType="Expression" useIsNull="False" expression="parent_subject_id &lt;= 0" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="1189" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="viewStudentSummary_SubjectList"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="1193" alias="SUBJECT_TITLE_trimmed" fieldName="RTRIM(subject_title)" isExpression="True"/>
				<Field id="1194" fieldName="SUBJECT_ID" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1195" fieldName="SEMESTER" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1196" fieldName="SUBJ_ENROL_STATUS" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1197" fieldName="NUM_ASSMT_SUBMISSIONS" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1198" fieldName="STAFF_ID" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1199" fieldName="INTERIM_PROGRESS_CODE" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1200" fieldName="FINAL_PROGRESS_CODE" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1201" fieldName="MODULE_CUSTOMPROGRAM" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1202" fieldName="MODULE_NEXTMODULE" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1203" fieldName="MODULE_CUSTOMPROGRAM_display" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1204" fieldName="EXTENSION_OF_VCE_UNIT_display" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1205" fieldName="NON_SUBMITTING_FLAG" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1206" fieldName="NON_SUBMITTING_FLAG_display" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1207" fieldName="SUBJECT_ABBREV" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1208" fieldName="enrolment_date2" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1209" fieldName="withdrawal_date2" tableName="viewStudentSummary_SubjectList"/>
				<Field id="1210" fieldName="CLASS_CODE" tableName="viewStudentSummary_SubjectList"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Grid id="50" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" dataSource="STUDENT_COMMENT" activeCollection="TableParameters" orderBy="LAST_ALTERED_DATE desc" name="STUDENT_COMMENT" pageSizeLimit="100" wizardCaption="List of STUDENT COMMENT " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="True" wizardNoRecords="No Comments" PathID="STUDENT_COMMENT">
			<Components>
				<Label id="57" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT" fieldSource="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="58" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="59" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" format="dd/mm/yyyy H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="341" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT_TYPE" fieldSource="COMMENT_TYPE" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" defaultValue="&quot;unknown&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="769" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="770" conditionType="Expression" useIsNull="False" expression="COMMENT_TYPE not like 'CONTACT%'" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
				<TableParameter id="771" conditionType="Expression" useIsNull="False" expression="ACTIVE_STATUS = 'A'" logicOperator="And" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="768" posHeight="168" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT_COMMENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="772" fieldName="COMMENT" tableName="STUDENT_COMMENT"/>
				<Field id="773" fieldName="LAST_ALTERED_BY" tableName="STUDENT_COMMENT"/>
				<Field id="774" fieldName="LAST_ALTERED_DATE" tableName="STUDENT_COMMENT"/>
				<Field id="775" fieldName="COMMENT_TYPE" tableName="STUDENT_COMMENT"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields>
				<PKField id="776" dataType="Integer" fieldName="COMMENT_ID" tableName="STUDENT_COMMENT"/>
			</PKFields>
		</Grid>
		<Report id="185" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="viewStudentSummary_EnrolmentMisc" name="viewStudentSummary_Enrolm" pageSizeLimit="100" wizardCaption=" View Student Summary Enrolment Misc " wizardLayoutType="Form" activeCollection="TableParameters" PathID="viewStudentSummary_Enrolm">
			<Components>
				<Section id="186" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="viewStudentSummary_EnrolmReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="187" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="viewStudentSummary_EnrolmPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="188" visible="True" lines="12" name="Detail" PathID="viewStudentSummary_EnrolmDetail" pasteActions="pasteActions">
					<Components>
						<ReportLabel id="192" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="eligible_for_discount_desc" fieldSource="eligible_for_discount_desc" wizardCaption="eligible_for_discount_desc" wizardSize="7" wizardMaxLength="7" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="193" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="paid_on_enrolment_desc" fieldSource="paid_on_enrolment_desc" wizardCaption="pain_on_enrolment_desc" wizardSize="7" wizardMaxLength="7" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="194" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="full_time_desc" fieldSource="full_time_desc" wizardCaption="full_time_desc" wizardSize="7" wizardMaxLength="7" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="195" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="os_full_fee_paying_desc" fieldSource="os_full_fee_paying_desc" wizardCaption="os_full_fee_paying_desc" wizardSize="7" wizardMaxLength="7" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="196" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="address_review_flag_desc" fieldSource="address_review_flag_desc" wizardCaption="address_review_flag_desc" wizardSize="7" wizardMaxLength="7" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="197" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="eligible_for_funding_desc" fieldSource="eligible_for_funding_desc" wizardCaption="eligible_for_funding_desc" wizardSize="7" wizardMaxLength="7" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="198" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="vce_candidate_number" fieldSource="vce_candidate_number" wizardCaption="vce_candidate_number" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="199" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="bulletin_number" fieldSource="bulletin_number" wizardCaption="bulletin_number" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="202" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="last_reviewed_date" fieldSource="last_reviewed_date" wizardCaption="last_reviewed_date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="203" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="new_docs_required_desc" fieldSource="new_docs_required_desc" wizardCaption="new_docs_required_desc" wizardSize="7" wizardMaxLength="7" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="201" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="enrolment_comments" fieldSource="enrolment_comments" wizardCaption="enrolment_comments" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="189" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="viewStudentSummary_EnrolmReport_Footer">
					<Components>
						<Panel id="190" visible="True" name="NoRecords" wizardNoRecords="No Enrolment Details found" PathID="viewStudentSummary_EnrolmReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="191" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="viewStudentSummary_EnrolmPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events>
			</Events>
			<TableParameters>
				<TableParameter id="205" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="206" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="ENROLMENT_YEAR"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="204" tableName="viewStudentSummary_EnrolmentMisc" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
		<Report id="60" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="ADDRESS" name="ADDRESS_Postal" pageSizeLimit="100" wizardCaption=" ADDRESS " wizardLayoutType="Form" activeCollection="TableParameters" PathID="ADDRESS_Postal">
			<Components>
				<Section id="61" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="ADDRESS_PostalReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="62" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="ADDRESS_PostalPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="63" visible="True" lines="16" name="Detail" PathID="ADDRESS_PostalDetail" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
					<Components>
						<ReportLabel id="67" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESSEE" fieldSource="ADDRESSEE" wizardCaption="ADDRESSEE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="68" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="AGENT" fieldSource="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="69" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR1" fieldSource="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="70" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR2" fieldSource="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="71" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" wizardCaption="SUBURB_TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="73" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="STATE" fieldSource="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="72" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="POSTCODE" fieldSource="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="74" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="COUNTRY" fieldSource="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="75" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_A" fieldSource="PHONE_A" wizardCaption="PHONE_A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="76" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_B" fieldSource="PHONE_B" wizardCaption="PHONE_B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="77" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FAX" fieldSource="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<Link id="78" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" wizardCaption="EMAIL_ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" PathID="ADDRESS_PostalDetailEMAIL_ADDRESS" hrefSource="EMAIL_ADDRESS">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="240"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
							<LinkParameters/>
						</Link>
						<ReportLabel id="81" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST_ALTERED_BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="82" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST_ALTERED_DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="80" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESS_ID" fieldSource="ADDRESS_ID" wizardCaption="ADDRESS_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ImageLink id="329" visible="Yes" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" preserveParameters="None" name="ImageLink_GoogleMaps_postal" PathID="ADDRESS_PostalDetailImageLink_GoogleMaps_postal" hrefSource="http://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;ie=UTF8&amp;z=14">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="334" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="64" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="ADDRESS_PostalReport_Footer">
					<Components>
						<Panel id="65" visible="True" name="NoRecords" wizardNoRecords="No Address Record" PathID="ADDRESS_PostalReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="66" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="ADDRESS_PostalPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="84" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" searchConditionType="Equal" parameterType="Expression" logicOperator="And" leftBrackets="1" rightBrackets="1" parameterSource="viewStudentSummary_DetailPOSTAL_ADDRESS_ID.Text"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="83" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
		<Report id="121" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="ADDRESS" name="ADDRESS_Current" pageSizeLimit="100" wizardCaption=" ADDRESS " wizardLayoutType="Form" activeCollection="TableParameters" PathID="ADDRESS_Current">
			<Components>
				<Section id="122" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="ADDRESS_CurrentReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="123" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="ADDRESS_CurrentPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="124" visible="True" lines="16" name="Detail" PathID="ADDRESS_CurrentDetail" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
					<Components>
						<ReportLabel id="125" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESSEE" fieldSource="ADDRESSEE" wizardCaption="ADDRESSEE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="126" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="AGENT" fieldSource="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="127" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR1" fieldSource="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="128" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR2" fieldSource="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="129" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" wizardCaption="SUBURB_TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="130" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="STATE" fieldSource="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="131" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="POSTCODE" fieldSource="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="132" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="COUNTRY" fieldSource="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="133" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_A" fieldSource="PHONE_A" wizardCaption="PHONE_A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="134" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_B" fieldSource="PHONE_B" wizardCaption="PHONE_B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="135" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FAX" fieldSource="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<Link id="136" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" wizardCaption="EMAIL_ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" PathID="ADDRESS_CurrentDetailEMAIL_ADDRESS" hrefSource="EMAIL_ADDRESS">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="242" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
							<LinkParameters/>
						</Link>
						<ReportLabel id="138" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST_ALTERED_BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="139" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST_ALTERED_DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="140" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESS_ID" fieldSource="ADDRESS_ID" wizardCaption="ADDRESS_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ImageLink id="335" visible="Yes" fieldSourceType="DBColumn" dataType="Text" hrefType="Page" urlType="Relative" preserveParameters="None" name="ImageLink_GoogleMaps_current" PathID="ADDRESS_CurrentDetailImageLink_GoogleMaps_current" hrefSource="http://maps.google.com.au/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;ie=UTF8&amp;z=14">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="336"/>
									</Actions>
								</Event>
							</Events>
							<LinkParameters/>
							<Attributes/>
							<Features/>
						</ImageLink>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="141" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="ADDRESS_CurrentReport_Footer">
					<Components>
						<Panel id="142" visible="True" name="NoRecords" wizardNoRecords="No Address Record" PathID="ADDRESS_CurrentReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="143" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="ADDRESS_CurrentPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="144" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" searchConditionType="Equal" parameterType="Expression" logicOperator="And" leftBrackets="1" rightBrackets="1" defaultValue="0" parameterSource="viewStudentSummary_DetailCURR_RESID_ADDRESS_ID.Text"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="145" tableName="ADDRESS" posLeft="10" posTop="10" posWidth="160" posHeight="180"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
		<Report id="85" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="viewStudentSummary_CensusData" name="STUDENT_CENSUS_DATA" pageSizeLimit="100" wizardCaption=" STUDENT CENSUS DATA " wizardLayoutType="Form" activeCollection="TableParameters" PathID="STUDENT_CENSUS_DATA">
			<Components>
				<Section id="86" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="STUDENT_CENSUS_DATAReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="87" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="STUDENT_CENSUS_DATAPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="88" visible="True" lines="29" name="Detail" PathID="STUDENT_CENSUS_DATADetail" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
					<Components>
						<ReportLabel id="92" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="COUNTRY_OF_BIRTH" fieldSource="student_country_of_birth_desc" wizardCaption="COUNTRY_OF_BIRTH" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="93" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="DATE_STARTED_IN_AUST" fieldSource="DATE_STARTED_IN_AUST" wizardCaption="DATE_STARTED_IN_AUST" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="96" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FIRST_HOME_LANGUAGE" fieldSource="first_home_language_desc" wizardCaption="FIRST_HOME_LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="97" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="OTHER_HOME_LANGUAGE" fieldSource="other_home_language_desc" wizardCaption="OTHER_HOME_LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="94" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="MOTHERS_COB" fieldSource="mother_country_of_birth_desc" wizardCaption="MOTHERS_COB" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="95" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FATHERS_COB" fieldSource="father_country_of_birth_desc" wizardCaption="FATHERS_COB" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="98" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="MOTHER_LANGUAGE" fieldSource="mother_language_desc" wizardCaption="MOTHER_LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="99" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FATHER_LANGUAGE" fieldSource="father_language_desc" wizardCaption="FATHER_LANGUAGE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="100" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="MOTHER_EDUCATION_SCHOOL" fieldSource="mother_education_school_desc" wizardCaption="MOTHER_EDUCATION_SCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="101" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FATHER_EDUCATION_SCHOOL" fieldSource="father_education_school_desc" wizardCaption="FATHER_EDUCATION_SCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="102" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="MOTHER_EDUCATION_NONSCHOOL" fieldSource="mother_education_nonschool_desc" wizardCaption="MOTHER_EDUCATION_NONSCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="103" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FATHER_EDUCATION_NONSCHOOL" fieldSource="father_education_nonschool_desc" wizardCaption="FATHER_EDUCATION_NONSCHOOL" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="104" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="MOTHER_OCCUPATIONGROUP" fieldSource="mother_occupation_desc" wizardCaption="MOTHER_OCCUPATIONGROUP" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="105" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FATHER_OCCUPATIONGROUP" fieldSource="father_occupation_desc" wizardCaption="FATHER_OCCUPATIONGROUP" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" emptyValue="Unknown">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="106" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ALLOWANCE_TITLE" fieldSource="ALLOWANCE_TITLE" wizardCaption="ALLOWANCE_CODE" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="107" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="KOORITORRESFLAG" fieldSource="KooriTorres_desc" wizardCaption="KOORITORRESFLAG" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="108" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="RESIDENTIAL_STATUS" fieldSource="residential_desc" wizardCaption="RESIDENTIAL_STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="109" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="DATE_ARRIVED_IN_AUST" fieldSource="DATE_ARRIVED_IN_AUST" wizardCaption="DATE_ARRIVED_IN_AUST" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="110" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="VISA_SUB_CLASS" fieldSource="VISA_SUB_CLASS" wizardCaption="VISA_SUB_CLASS" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="111" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="VISA_STATISTICAL_CODE" fieldSource="VISA_STATISTICAL_CODE" wizardCaption="VISA_STATISTICAL_CODE" wizardSize="4" wizardMaxLength="4" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="112" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="PREVIOUS_SCHOOL_ID" fieldSource="PREVIOUS_SCHOOL_ID" wizardCaption="PREVIOUS_SCHOOL_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="113" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="FAMILY_OSG" fieldSource="FAMILY_OSG" wizardCaption="FAMILY_OSG" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="114" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="HOUSEHOLD_STATUS" fieldSource="household_status_desc" wizardCaption="HOUSEHOLD_STATUS" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="115" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="DISABILITY_ID" fieldSource="DISABILITY_ID" wizardCaption="DISABILITY_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="116" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="REPEATING_YEAR" fieldSource="repeating_year_desc" wizardCaption="REPEATING_YEAR" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="117" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="OTHER_SCHOOL_TF" fieldSource="OTHER_SCHOOL_TF" wizardCaption="OTHER_SCHOOL_TF" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="118" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST_ALTERED_BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="119" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST_ALTERED_DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="120" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="89" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="STUDENT_CENSUS_DATAReport_Footer">
					<Components>
						<Panel id="90" visible="True" name="NoRecords" wizardNoRecords="No Census Data Record" PathID="STUDENT_CENSUS_DATAReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="91" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="STUDENT_CENSUS_DATAPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="149" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="148" tableName="viewStudentSummary_CensusData" posLeft="10" posTop="10" posWidth="160" posHeight="134"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
		<Report id="150" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="STUDENT_EQUIPMENT" name="STUDENT_EQUIPMENT" pageSizeLimit="100" wizardCaption=" STUDENT EQUIPMENT " wizardLayoutType="Form" activeCollection="TableParameters" PathID="STUDENT_EQUIPMENT">
			<Components>
				<Section id="151" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="STUDENT_EQUIPMENTReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="152" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="STUDENT_EQUIPMENTPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="153" visible="True" lines="7" name="Detail" PathID="STUDENT_EQUIPMENTDetail" pasteActions="pasteActions">
					<Components>
						<ReportLabel id="161" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST_ALTERED_BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="162" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST_ALTERED_DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="163" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="247" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="HAS_DER_PC" PathID="STUDENT_EQUIPMENTDetailHAS_DER_PC" fieldSource="HAS_DER_PC">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<Label id="294" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="ACCESS_COMPUTER" fieldSource="ACCESS_COMPUTER_2010" required="True" caption="Access to a COMPUTER" wizardCaption="HAS COMPUTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" dataSource="N;No;Y;Yes, my own;S;Yes, Shared;U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTDetailACCESS_COMPUTER" connection="connDECVPRODSQL2005" _valueOfList="Y" _nameOfList="Yes, my own">
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
						</Label>
						<Label id="295" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="ACCESS_INTERNET" fieldSource="ACCESS_INTERNET_2010" required="True" caption="Access to their OWN COMPUTER" wizardCaption="HAS COMPUTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" _valueOfList="L" _nameOfList="Yes (Limited: dial-up; 3G; Library, etc)" dataSource="N;No;Y;Yes (Full: ADSL at home, Cable);L;Yes (Limited: dial-up, 3G, Library, etc);U;Unknown" defaultValue="&quot;U&quot;" PathID="STUDENT_EQUIPMENTDetailACCESS_INTERNET" connection="connDECVPRODSQL2005">
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
						</Label>
						<Label id="296" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="False" returnValueType="Number" name="ACCESS_WORKEXAMPLES" PathID="STUDENT_EQUIPMENTDetailACCESS_WORKEXAMPLES" fieldSource="ACCESS_WORKEXAMPLES" dataSource="Y;Yes;N;No" required="True" caption="Access to Student WORK EXAMPLES" checkedValue="&quot;N&quot;" uncheckedValue="&quot;Y&quot;" defaultValue="&quot;U&quot;">
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
						</Label>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="154" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="STUDENT_EQUIPMENTReport_Footer">
					<Components>
						<Panel id="155" visible="True" name="NoRecords" wizardNoRecords="No Student Equipment found" PathID="STUDENT_EQUIPMENTReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="156" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="STUDENT_EQUIPMENTPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Hide-Show Component" actionCategory="General" id="528" action="Hide" conditionType="Expression" dataType="Text" condition="1=1" componentName="STUDENT_EQUIPMENT"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="165" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="164" tableName="STUDENT_EQUIPMENT" posLeft="10" posTop="10" posWidth="160" posHeight="168"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
		<Report id="167" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="viewStudentSummary_Medical" name="viewStudentSummary_Medica" pageSizeLimit="100" wizardCaption=" View Student Summary Medical " wizardLayoutType="Form" activeCollection="TableParameters" PathID="viewStudentSummary_Medica">
			<Components>
				<Section id="168" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="viewStudentSummary_MedicaReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="169" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="viewStudentSummary_MedicaPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="170" visible="True" lines="9" name="Detail" PathID="viewStudentSummary_MedicaDetail" pasteActions="pasteActions" pasteAsReplace="pasteAsReplace">
					<Components>
						<ReportLabel id="174" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="immun_certificate_desc" fieldSource="immun_certificate_desc" wizardCaption="immun_certificate_desc" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="180" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST_ALTERED_BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="181" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST_ALTERED_DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="290" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="allergies_flag_desc" PathID="viewStudentSummary_MedicaDetailallergies_flag_desc" fieldSource="allergies_flag_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="291" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="anaphylaxis_flag_desc" PathID="viewStudentSummary_MedicaDetailanaphylaxis_flag_desc" fieldSource="anaphylaxis_flag_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<Image id="292" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="anaphylaxis_warning" PathID="viewStudentSummary_MedicaDetailanaphylaxis_warning">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="297"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</Image>
						<ReportLabel id="182" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="175" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="immun_diptheria_desc" fieldSource="immun_diptheria_desc" wizardCaption="immun_diptheria_desc" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="176" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="immun_tetanus_desc" fieldSource="immun_tetanus_desc" wizardCaption="immun_tetanus_desc" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="177" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="immun_polio_desc" fieldSource="immun_polio_desc" wizardCaption="immun_polio_desc" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="178" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="immun_measles_desc" fieldSource="immun_measles_desc" wizardCaption="immun_measles_desc" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="179" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="immun_mumps_desc" fieldSource="immun_mumps_desc" wizardCaption="immun_mumps_desc" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="426" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="DIAGNOSED_CONDITION" PathID="viewStudentSummary_MedicaDetailDIAGNOSED_CONDITION" fieldSource="DIAGNOSED_CONDITION" emptyValue="None">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="505" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="HASOTHERCONDITIONS_desc" PathID="viewStudentSummary_MedicaDetailHASOTHERCONDITIONS_desc" fieldSource="HASOTHERCONDITIONS_desc">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="506" fieldSourceType="DBColumn" dataType="Text" html="True" hideDuplicates="False" resetAt="Report" name="OTHERCONDITIONS" PathID="viewStudentSummary_MedicaDetailOTHERCONDITIONS" fieldSource="OTHERCONDITIONS" emptyValue="&lt;em&gt;none provided&lt;/em&gt;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="509" fieldSourceType="DBColumn" dataType="Text" html="True" hideDuplicates="False" resetAt="Report" name="all_medical_conditions_desc" PathID="viewStudentSummary_MedicaDetailall_medical_conditions_desc" fieldSource="all_medical_conditions_desc" emptyValue="&lt;em&gt;none&lt;/em&gt;">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Retrieve Value for Control" actionCategory="General" id="510" name="all_medical_conditions_desc" sourceType="Expression" sourceName="viewStudentSummary_Medicaall_medical_conditions_desc.Text.Replace(&quot;|&quot;,&quot;&lt;br&gt;&quot;)"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="171" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="viewStudentSummary_MedicaReport_Footer">
					<Components>
						<Panel id="172" visible="True" name="NoRecords" wizardNoRecords="No Medical Details found" PathID="viewStudentSummary_MedicaReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="173" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="viewStudentSummary_MedicaPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="503" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="508" tableName="viewStudentSummary_Medical"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="504" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
		<Link id="225" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link5" PathID="Link5" hrefSource="Student_Comments_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Report id="248" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="40" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="ADDRESS" name="ADDRESS_Original" pageSizeLimit="100" wizardCaption=" ADDRESS " wizardLayoutType="Form" activeCollection="TableParameters" PathID="ADDRESS_Original">
			<Components>
				<Section id="249" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="ADDRESS_OriginalReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="250" visible="True" lines="0" name="Page_Header" wizardSectionType="PageHeader" PathID="ADDRESS_OriginalPage_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="251" visible="True" lines="16" name="Detail" PathID="ADDRESS_OriginalDetail" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions">
					<Components>
						<ReportLabel id="252" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESSEE" fieldSource="ADDRESSEE" wizardCaption="ADDRESSEE" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="253" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="AGENT" fieldSource="AGENT" wizardCaption="AGENT" wizardSize="50" wizardMaxLength="60" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="254" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR1" fieldSource="ADDR1" wizardCaption="ADDR1" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="255" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ADDR2" fieldSource="ADDR2" wizardCaption="ADDR2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="256" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN" wizardCaption="SUBURB_TOWN" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="257" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="STATE" fieldSource="STATE" wizardCaption="STATE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="258" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="POSTCODE" fieldSource="POSTCODE" wizardCaption="POSTCODE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="259" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="COUNTRY" fieldSource="COUNTRY" wizardCaption="COUNTRY" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="260" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_A" fieldSource="PHONE_A" wizardCaption="PHONE_A" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="261" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="PHONE_B" fieldSource="PHONE_B" wizardCaption="PHONE_B" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="262" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="FAX" fieldSource="FAX" wizardCaption="FAX" wizardSize="15" wizardMaxLength="15" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<Link id="263" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS" wizardCaption="EMAIL_ADDRESS" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" PathID="ADDRESS_OriginalDetailEMAIL_ADDRESS" hrefSource="EMAIL_ADDRESS">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="264"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
							<LinkParameters/>
						</Link>
						<Link id="265" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2" wizardCaption="EMAIL_ADDRESS2" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" PathID="ADDRESS_OriginalDetailEMAIL_ADDRESS2" hrefSource="EMAIL_ADDRESS2">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="266"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
							<LinkParameters/>
						</Link>
						<ReportLabel id="267" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST_ALTERED_BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="268" fieldSourceType="DBColumn" dataType="Date" html="False" hideDuplicates="False" resetAt="Report" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST_ALTERED_DATE" wizardSize="8" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" format="dd/mm/yyyy H:nn">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="269" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="ADDRESS_ID" fieldSource="ADDRESS_ID" wizardCaption="ADDRESS_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="270" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="ADDRESS_OriginalReport_Footer">
					<Components>
						<Panel id="271" visible="True" name="NoRecords" wizardNoRecords="No Address Record" PathID="ADDRESS_OriginalReport_FooterNoRecords">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Panel>
					</Components>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="272" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="ADDRESS_OriginalPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events>
			</Events>
			<TableParameters>
				<TableParameter id="273" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" searchConditionType="Equal" parameterType="Expression" logicOperator="And" leftBrackets="1" rightBrackets="1" defaultValue="0" parameterSource="viewStudentSummary_DetailORIG_RESID_ADDRESS_ID.Text"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="548" tableName="ADDRESS"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
		<Grid id="314" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="12" connection="connDECVPRODSQL2005" dataSource="view_StudentSummary_Alerts" activeCollection="TableParameters" name="view_StudentSummary_Alert" pageSizeLimit="12" wizardCaption=" View Student Summary Alerts Gallery" wizardTheme="Tile" wizardGridType="Gallery" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Alerts found" numberOfColumns="3" rowsPerPage="3" recordsNumber="9" wizardThemeVersion="3.0" PathID="view_StudentSummary_Alert">
			<Components>
				<Panel id="321" visible="True" name="RowOpenTag" wizardTheme="Tile" wizardThemeVersion="3.0" PathID="view_StudentSummary_AlertRowOpenTag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="322" visible="True" name="RowComponents" wizardTheme="Tile" wizardThemeVersion="3.0" PathID="view_StudentSummary_AlertRowComponents">
					<Components>
						<Label id="323" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT_TYPE" fieldSource="COMMENT_TYPE" wizardCaption="COMMENT TYPE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_StudentSummary_AlertRowComponentsCOMMENT_TYPE" wizardTheme="Tile" wizardThemeVersion="3.0">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="324" fieldSourceType="DBColumn" dataType="Text" html="False" name="Comment" fieldSource="Comment" wizardCaption="Comment" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="view_StudentSummary_AlertRowComponentsComment" wizardTheme="Tile" wizardThemeVersion="3.0">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="327" fieldSourceType="DBColumn" dataType="Date" html="False" name="lblDate_Updated" wizardTheme="Tile" wizardThemeType="File" wizardThemeVersion="3.0" PathID="view_StudentSummary_AlertRowComponentslblDate_Updated" fieldSource="LAST_ALTERED_DATE" format="dd mmm yy">
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
				<Panel id="325" visible="True" name="RowCloseTag" wizardTheme="Tile" wizardThemeVersion="3.0" PathID="view_StudentSummary_AlertRowCloseTag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Gallery Layout" actionCategory="General" id="320"/>
						<Action actionName="Custom Code" actionCategory="General" id="446"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="326"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="318" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="507" tableName="view_StudentSummary_Alerts"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="316" tableName="view_StudentSummary_Alerts" fieldName="COMMENT_TYPE"/>
				<Field id="317" tableName="view_StudentSummary_Alerts" fieldName="Comment"/>
				<Field id="328" tableName="view_StudentSummary_Alerts" fieldName="LAST_ALTERED_DATE"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes>
				<Attribute id="737" name="numberOfColumns" sourceType="Expression" source="4"/>
			</Attributes>
			<Features/>
			<PKFields/>
		</Grid>
		<Link id="337" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link10" wizardTheme="None" wizardThemeType="File" wizardThemeVersion="3.0" PathID="Link10" hrefSource="Send_SMS_maintain.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="338" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link6" PathID="Link6" hrefSource="Student_Future_Intentions.ccp" wizardUseTemplateBlock="False">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Grid id="342" secured="False" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" name="STUDENT_CARER_CONTACT" pageSizeLimit="100" wizardCaption="List of STUDENT CARER CONTACT " wizardGridType="Columnar" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Contact Details." pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" activeCollection="SQLParameters" sourceType="SQL" parameterTypeListName="ParameterTypeList" dataSource="SELECT * 
FROM STUDENT_CARER_CONTACT
WHERE ( RELATIONSHIP &lt;&gt; 'SS' ) 
AND ( CARER_ID = (SELECT CARER_ID_PARENT_A from STUDENT WHERE STUDENT_ID = {STUDENT_ID}))" PathID="STUDENT_CARER_CONTACT">
			<Components>
				<Label id="343" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID" wizardCaption="CARER ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTCARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="344" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTTITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="345" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTRELATIONSHIP" visible="Yes" sourceType="ListOfValues" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</ListBox>
				<Label id="346" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTHOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="347" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTWORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="348" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTMOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="349" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTEMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" hrefSource="EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="350"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="351" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="352" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACTFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="353" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACTLAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="56" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENT_CARER_CONTACTLAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="545" fieldSourceType="DBColumn" dataType="Date" html="False" name="PORTAL_LAST_LOGIN_DATE" PathID="STUDENT_CARER_CONTACTPORTAL_LAST_LOGIN_DATE" fieldSource="PORTAL_LAST_LOGIN_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="359" conditionType="Expression" useIsNull="False" field="CARER_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CARER_ID = 1000" parameterSource="CARER_ID"/>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="360" fieldName="*"/>
			</Fields>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="361" variable="STUDENT_ID" parameterType="URL" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Grid id="362" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="SELECT * 
FROM STUDENT_CARER_CONTACT
WHERE ( RELATIONSHIP &lt;&gt; 'SS' ) 
AND ( CARER_ID = (SELECT CARER_ID_PARENT_B from STUDENT WHERE STUDENT_ID = {STUDENT_ID} ))" name="STUDENT_CARER_CONTACT1" pageSizeLimit="100" wizardCaption="List of STUDENT CARER CONTACT " wizardGridType="Columnar" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Contact Details." pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" PathID="STUDENT_CARER_CONTACT1">
			<Components>
				<Label id="363" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID" wizardCaption="CARER ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="364" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="365" fieldSourceType="DBColumn" dataType="Text" html="False" name="HOME_PHONE" fieldSource="HOME_PHONE" wizardCaption="HOME PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1HOME_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="366" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="367" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="368" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1EMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" hrefSource="EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="369"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="370" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="371" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="372" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT1LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="373" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENT_CARER_CONTACT1LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="236" fieldSourceType="DBColumn" dataType="Text" html="False" name="RELATIONSHIP" fieldSource="RELATIONSHIP" wizardCaption="RELATIONSHIP" wizardSize="2" wizardMaxLength="2" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT1RELATIONSHIP" visible="Yes" sourceType="ListOfValues" dataSource="PA;Parent;SP;Step-Parent;AP;Adoptive Parent;FP;Foster Parent;GP;Grand Parent;HF;Host Family;RE;Relative;FR;Friend;SE;Self;OT;Other">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</ListBox>
				<Label id="546" fieldSourceType="DBColumn" dataType="Date" html="False" name="PORTAL_LAST_LOGIN_DATE" PathID="STUDENT_CARER_CONTACT1PORTAL_LAST_LOGIN_DATE" fieldSource="PORTAL_LAST_LOGIN_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="379" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CARER_ID = 22222"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="380" tableName="STUDENT_CARER_CONTACT" posWidth="160" posHeight="180" posLeft="10" posTop="10"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="166" variable="STUDENT_ID" parameterType="URL" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Grid id="381" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="SELECT * , dbo.CarerTypeLabel(Relationship) as Supervisortype
FROM STUDENT_CARER_CONTACT
WHERE ( RELATIONSHIP in ('SS','XS','XA','XB' )) 
AND ( CARER_ID = (SELECT CARER_ID_SCHOOL_SUPERVISOR from STUDENT_ENROLMENT WHERE STUDENT_ID = {STUDENT_ID} AND ENROLMENT_YEAR = {ENROLMENT_YEAR}))" name="STUDENT_CARER_CONTACT2" pageSizeLimit="100" wizardCaption="List of STUDENT CARER CONTACT " wizardGridType="Columnar" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Contact Details." pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" PathID="STUDENT_CARER_CONTACT2" visible="Dynamic">
			<Components>
				<Label id="382" fieldSourceType="DBColumn" dataType="Float" html="False" name="CARER_ID" fieldSource="CARER_ID" wizardCaption="CARER ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2CARER_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="383" fieldSourceType="DBColumn" dataType="Text" html="False" name="TITLE" fieldSource="TITLE" wizardCaption="TITLE" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="384" fieldSourceType="DBColumn" dataType="Text" html="False" name="WORK_PHONE" fieldSource="WORK_PHONE" wizardCaption="WORK PHONE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2WORK_PHONE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="385" fieldSourceType="DBColumn" dataType="Text" html="False" name="MOBILE" fieldSource="MOBILE" wizardCaption="MOBILE" wizardSize="20" wizardMaxLength="20" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2MOBILE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Link id="386" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL" fieldSource="EMAIL" wizardCaption="EMAIL" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2EMAIL" visible="Yes" hrefType="Database" urlType="Relative" preserveParameters="None" hrefSource="EMAIL">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="387"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<LinkParameters/>
				</Link>
				<Label id="388" fieldSourceType="DBColumn" dataType="Text" html="False" name="SURNAME" fieldSource="SURNAME" wizardCaption="SURNAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2SURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="389" fieldSourceType="DBColumn" dataType="Text" html="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardCaption="FIRST NAME" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="STUDENT_CARER_CONTACT2FIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="390" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" PathID="STUDENT_CARER_CONTACT2LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="391" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" PathID="STUDENT_CARER_CONTACT2LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="523" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUPERVISOR_POSITION" PathID="STUDENT_CARER_CONTACT2SUPERVISOR_POSITION" fieldSource="SUPERVISOR_POSITION">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="524" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUPERVISOR_POSITION_OTHER" PathID="STUDENT_CARER_CONTACT2SUPERVISOR_POSITION_OTHER" fieldSource="SUPERVISOR_POSITION_OTHER">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="547" fieldSourceType="DBColumn" dataType="Date" html="False" name="PORTAL_LAST_LOGIN_DATE" PathID="STUDENT_CARER_CONTACT2PORTAL_LAST_LOGIN_DATE" fieldSource="PORTAL_LAST_LOGIN_DATE" format="dd/mm/yyyy h:nn AM/PM">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="558" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="Supervisortype" PathID="STUDENT_CARER_CONTACT2Supervisortype" fieldSource="Supervisortype">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
			</TableParameters>
			<JoinTables>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="689" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
				<SQLParameter id="690" dataType="Text" defaultValue="Year(Now())" designDefaultValue="2010" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features>
			</Features>
			<PKFields/>
		</Grid>
		<Grid id="428" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" dataSource="SELECT COMMENT_ID, COMMENT, LAST_ALTERED_BY, LAST_ALTERED_DATE, COMMENT_TYPE
FROM STUDENT_COMMENT
WHERE COMMENT_TYPE in ('MODIFIED_SUBJECT', 'CUSTOM_LEARNING')
AND STUDENT_ID = {STUDENT_ID}
AND YEAR(LAST_ALTERED_DATE) = {ENROLMENT_YEAR} 
ORDER BY LAST_ALTERED_DATE desc" activeCollection="SQLParameters" name="Grid_Modified_Comment" pageSizeLimit="100" wizardCaption="List of Grid1 " wizardGridType="Tabular" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" parameterTypeListName="ParameterTypeList" PathID="Grid_Modified_Comment">
			<Components>
				<Label id="440" fieldSourceType="DBColumn" dataType="Text" html="False" name="COMMENT" fieldSource="COMMENT" wizardCaption="COMMENT" wizardSize="50" wizardMaxLength="250" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_Modified_CommentCOMMENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="441" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY" wizardCaption="LAST ALTERED BY" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_Modified_CommentLAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="442" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE" wizardCaption="LAST ALTERED DATE" wizardSize="10" wizardMaxLength="100" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_Modified_CommentLAST_ALTERED_DATE" format="dd/mm/yyyy H:nn">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="447"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
			</TableParameters>
			<JoinTables/>
			<JoinLinks/>
			<Fields>
			</Fields>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="457" dataType="Float" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
				<SQLParameter id="458" dataType="Integer" defaultValue="year(now())" designDefaultValue="2013" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
		<Grid id="459" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="20" name="Grid_FamilyGroup" connection="connDECVPRODSQL2005" dataSource="select distinct student_id, first_name, surname, last_enrol_year
from view_FamilyGrouping
where  Student_id &lt;&gt; {STUDENT_ID}
	and CARER_ID_PARENT_AB in (select CARER_ID_PARENT_AB from view_FamilyGrouping where Student_id = {STUDENT_ID})
order by surname, first_name" pageSizeLimit="100" pageSize="False" wizardCaption="Family Group" wizardThemeApplyTo="Page" wizardGridType="Gallery" wizardAllowInsert="False" wizardAltRecord="False" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No other Students in this Family Group" wizardUseSearch="False" wizardAddNbsp="True" gridTotalRecords="False" wizardAddPanels="False" wizardType="Grid" wizardUseInterVariables="False" addTemplatePanel="False" changedCaptionGrid="True" gridExtendedHTML="False" numberOfColumns="1" rowsPerPage="20" recordsNumber="20" PathID="Grid_FamilyGroup">
			<Components>
				<Panel id="460" visible="True" generateDiv="False" name="RowOpenTag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
				<Panel id="461" visible="True" generateDiv="False" name="RowComponents">
					<Components>
						<Link id="462" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentsSTUDENT_ID" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="None" hrefSource="StudentSummary.ccp" linkProperties="{'textSource':'','textSourceDB':'STUDENT_ID','hrefSource':'StudentSummary.ccp','hrefSourceDB':'','title':'show Student Summary','target':'','name':'','linkParameters':{'0':{'sourceType':'DataField','parameterSource':'STUDENT_ID','parameterName':'STUDENT_ID'},'1':{'sourceType':'DataField','parameterSource':'last_enrol_year','parameterName':'ENROLMENT_YEAR'},'length':2,'objectType':'linkParameters'}}"><Components/>
							<Events/>
							<Attributes/>
							<Features/>
							<LinkParameters>
								<LinkParameter id="463" sourceType="DataField" name="STUDENT_ID" source="STUDENT_ID"/>
								<LinkParameter id="464" sourceType="DataField" name="ENROLMENT_YEAR" source="last_enrol_year"/>
							</LinkParameters>
						</Link>
						<Label id="465" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="first_name" fieldSource="first_name" wizardCaption="First Name" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentsfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="466" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="surname" fieldSource="surname" wizardCaption="Surname" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentssurname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</Label>
						<Label id="467" fieldSourceType="DBColumn" dataType="Float" html="False" generateSpan="False" name="last_enrol_year" fieldSource="last_enrol_year" wizardCaption="Last Enrol Year" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True" PathID="Grid_FamilyGroupRowComponentslast_enrol_year">
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
				<Panel id="468" visible="True" generateDiv="False" name="RowCloseTag">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Panel>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Gallery Layout" actionCategory="General" id="469"/>
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
				<SQLParameter id="780" dataType="Integer" defaultValue="0" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes>
				<Attribute id="473" name="numberOfColumns" sourceType="Expression" source="1"/>
			</Attributes>
			<Features/>
		</Grid>
		<Label id="779" fieldSourceType="CodeExpression" dataType="Text" html="False" generateSpan="False" name="lblModified" PathID="lblModified" fieldSource="System.IO.File.GetLastWriteTime(Request.PhysicalPath).ToString(&quot;dd MMM yy HH:mm&quot;)">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
		<Link id="525" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link8" PathID="Link8" hrefSource="Student_Profile.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Student Profile','textSourceDB':'','hrefSource':'Student_Profile.ccp','hrefSourceDB':'','title':'Student Profile','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
		<Link id="501" visible="Yes" fieldSourceType="DBColumn" dataType="Text" html="False" hrefType="Page" urlType="Relative" preserveParameters="GET" name="Link7" PathID="Link7" hrefSource="Student_EACL.ccp" wizardUseTemplateBlock="False" linkProperties="{'textSource':'Early Assessment Checklist','textSourceDB':'','hrefSource':'Student_EACL.ccp','hrefSourceDB':'','title':'Student Learning and Support Plan','target':'','name':'','linkParameters':{'length':0,'objectType':'linkParameters'}}">
			<Components/>
			<Events/>
			<LinkParameters/>
			<Attributes/>
			<Features/>
		</Link>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentSummary.aspx" forShow="True" url="StudentSummary.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentSummary.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentSummaryDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups>
		<Group id="491" groupID="2"/>
		<Group id="492" groupID="3"/>
		<Group id="493" groupID="4"/>
		<Group id="494" groupID="5"/>
		<Group id="495" groupID="6"/>
		<Group id="496" groupID="7"/>
		<Group id="497" groupID="8"/>
		<Group id="498" groupID="9"/>
		<Group id="499" groupID="11"/>
		<Group id="500" groupID="12"/>
	</SecurityGroups>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="AfterInitialize" type="Server">
			<Actions>
				<Action actionName="Declare Variable" actionCategory="General" id="410" name="skippy" type="Integer" initialValue="0"/>
				<Action actionName="Declare Variable" actionCategory="General" id="413" name="tmpSTUDENT_ID" type="Integer" initialValue="0"/>
				<Action actionName="Declare Variable" actionCategory="General" id="414" name="tmpENROLMENT_YEAR" type="Integer" initialValue="0"/>
				<Action actionName="Retrieve Value for Variable" actionCategory="General" id="415" name="tmpSTUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
				<Action actionName="Retrieve Value for Variable" actionCategory="General" id="416" name="tmpENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
				<Action actionName="Custom Code" actionCategory="General" id="417"/>
				<Action actionName="DLookup" actionCategory="Database" id="411" typeOfTarget="Variable" expression="&quot;count(*)&quot;" domain="&quot;STUDENT_ENROLMENT&quot;" criteria="&quot;STUDENT_ID = &quot; &amp; tmpSTUDENT_ID.ToString() &amp; &quot; AND ENROLMENT_YEAR = &quot; &amp; tmpENROLMENT_YEAR.ToString()" connection="connDECVPRODSQL2005" dataType="Integer" target="skippy"/>
				<Action actionName="Custom Code" actionCategory="General" id="412"/>
			</Actions>
		</Event>
		<Event name="OnInitializeView" type="Server">
			<Actions>
				<Action actionName="Custom Code" actionCategory="General" id="312"/>
			</Actions>
		</Event>
	</Events>
</Page>
