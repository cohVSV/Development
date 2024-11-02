<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="True" urlType="Relative" isIncluded="False" SSLAccess="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" isService="False" pasteActions="pasteActions">
	<Components>
		<IncludePage id="2" name="Menu_Student_maintain" page="Menu_Student_maintain.ccp">
			<Components/>
			<Events/>
			<Features/>
		</IncludePage>
		<Button id="42" urlType="Relative" enableValidation="True" isDefault="False" name="button_PopupSubjectList" PathID="button_PopupSubjectList">
			<Components/>
			<Events>
				<Event name="OnClick" type="Client">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="23" eventType="Client"/>
					</Actions>
				</Event>
			</Events>
			<Attributes/>
			<Features/>
		</Button>
		<Record id="28" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="AddSubject" actionPage="Student_Subject_maintain" errorSummator="Error" wizardFormMethod="post" pasteAsReplace="pasteAsReplace" returnPage="Student_Subject_maintain.ccp" removeParameters="SUBJECT_ID" PathID="AddSubject" pasteActions="pasteActions">
			<Components>
				<TextBox id="32" visible="Yes" fieldSourceType="DBColumn" dataType="Integer" name="subject_id" caption="Subject ID" required="True" PathID="AddSubjectsubject_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<ListBox id="33" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="semester" wizardEmptyCaption="Select Value" caption="Semester" connection="connDECVPRODSQL2005" _valueOfList="B" _nameOfList="Both" dataSource="1;1;2;2;B;Both" required="True" PathID="AddSubjectsemester" html="True">
					<Components/>
					<Events>
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
				</ListBox>
				<TextBox id="29" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="subj_enrol_date" required="True" caption="Enrolment Date" format="dd/mm/yyyy" defaultValue="now()" PathID="AddSubjectsubj_enrol_date">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="30" urlType="Relative" enableValidation="True" isDefault="False" name="ButtonAdd" wizardCaption="Submit" PathID="AddSubjectButtonAdd">
					<Components/>
					<Events>
						<Event name="OnClick" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="40"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="36" fieldSourceType="DBColumn" dataType="Text" name="hidden_STUDENT_ID" required="True" caption="Student ID" PathID="AddSubjecthidden_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="37" fieldSourceType="DBColumn" dataType="Text" name="hidden_ENROLMENT_YEAR" caption="Enrolment Year" required="True" PathID="AddSubjecthidden_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Label id="41" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblMessage">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<ListBox id="115" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="ListBox_SubjectYearLevel" wizardEmptyCaption="Select Value" PathID="AddSubjectListBox_SubjectYearLevel" dataSource=";All Subjects;0;0 - Prep;1;1;2;2;3;3;4;4;5;5;6;6;7;7;8;8;9;9;10;10;11;11;12;12;30;Home Schooled" required="False" _nameOfList="All Subjects">
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
				<ListBox id="116" visible="Dynamic" fieldSourceType="DBColumn" sourceType="Table" dataType="Text" returnValueType="Number" name="ListBox_Subject" wizardEmptyCaption="Select Value" PathID="AddSubjectListBox_Subject" connection="connDECVPRODSQL2005" activeCollection="TableParameters" orderBy="SUBJECT_TITLE, YEAR_LEVEL" required="False" features="(assigned)">
					<Components/>
					<Events>
						<Event name="OnChange" type="Client">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="131"/>
							</Actions>
						</Event>
					</Events>
					<TableParameters>
						<TableParameter id="121" conditionType="Expression" useIsNull="False" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="STATUS= 1"/>
						<TableParameter id="122" conditionType="Expression" useIsNull="False" field="CAMPUS_CODE" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" expression="CAMPUS_CODE = 'D'" parameterSource="CAMPUS_CODE"/>
					</TableParameters>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables>
						<JoinTable id="117" tableName="SUBJECT" schemaName="dbo" posLeft="10" posTop="10" posWidth="298" posHeight="230"/>
					</JoinTables>
					<JoinLinks/>
					<Fields>
						<Field id="118" tableName="SUBJECT" fieldName="SUBJECT_ID"/>
						<Field id="119" fieldName="rtrim(SUBJECT_TITLE) + ' (' + rtrim(SUBJECT_ABBREV) + ')'" isExpression="True" alias="subject_displaytext"/>
						<Field id="120" tableName="SUBJECT" fieldName="YEAR_LEVEL"/>
					</Fields>
					<Attributes/>
					<Features>
						<PTDependentListBox id="130" enabled="True" name="PTDependentListBox1" servicePage="services/Student_Subject_maintain_AddSubject_ListBox_Subject_PTDependentListBox1.ccp" masterListbox="ListBox_SubjectYearLevel" category="Prototype">
							<Components/>
							<Events/>
							<Features/>
						</PTDependentListBox>
						<HideShow id="136" enabled="True" name="HideShow1" category="Ajax" featureNameChanged="No" controlId="AddSubjectprogress" ccsIdsOnly="False" show="AddSubjectListBox_SubjectPTDependentListBox1.onstart;" hide="AddSubjectListBox_SubjectPTDependentListBox1.onfinish;">
							<Components/>
							<Events/>
							<ControlPoints>
								<ControlPoint id="137" name="AddSubjectListBox_SubjectPTDependentListBox1.onstart" relProperty="show">
									<Items>
										<ControlPointItem id="138" name="Student_Subject_maintain" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="139" name="AddSubject" ccpId="28" type="Record" isFeature="False" PathID="AddSubject"/>
										<ControlPointItem id="140" name="ListBox_Subject" ccpId="116" type="ListBox" isFeature="False" PathID="AddSubjectListBox_Subject"/>
										<ControlPointItem id="141" name="PTDependentListBox1" ccpId="130" type="PTDependentListBox" isFeature="True" PathID="AddSubjectListBox_SubjectPTDependentListBox1"/>
									</Items>
								</ControlPoint>
								<ControlPoint id="142" name="AddSubjectListBox_SubjectPTDependentListBox1.onfinish" relProperty="hide">
									<Items>
										<ControlPointItem id="143" name="Student_Subject_maintain" ccpId="1" type="Page" isFeature="False"/>
										<ControlPointItem id="144" name="AddSubject" ccpId="28" type="Record" isFeature="False" PathID="AddSubject"/>
										<ControlPointItem id="145" name="ListBox_Subject" ccpId="116" type="ListBox" isFeature="False" PathID="AddSubjectListBox_Subject"/>
										<ControlPointItem id="146" name="PTDependentListBox1" ccpId="130" type="PTDependentListBox" isFeature="True" PathID="AddSubjectListBox_SubjectPTDependentListBox1"/>
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
				</ListBox>
				<Hidden id="31" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" returnValueType="Number" name="course_distribution" wizardEmptyCaption="Select Value" caption="Course Distribution" connection="connDECVPRODSQL2005" _valueOfList="I" _nameOfList="Internet" dataSource="B;Book;I;Online" required="True" defaultValue="&quot;B&quot;" PathID="AddSubjectcourse_distribution" html="True">
					<Components/>
					<Events>
					</Events>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="281" fieldSourceType="DBColumn" dataType="Integer" name="Hidden_CustomProgram" PathID="AddSubjectHidden_CustomProgram" required="False" defaultValue="0">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
			</Components>
			<Events>
				<Event name="OnValidate" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="34"/>
						<Action actionName="Custom Code" actionCategory="General" id="282"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="38" name="hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="39" name="hidden_ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
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
		<Record id="66" sourceType="Table" urlType="Relative" secured="False" allowInsert="True" allowUpdate="False" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="PrimarySubjectM3" actionPage="Student_Subject_maintain" errorSummator="Error" wizardFormMethod="post" PathID="PrimarySubjectM3" pasteActions="pasteActions" connection="connDECVPRODSQL2005" parameterTypeListName="ParameterTypeList" activeCollection="ISPParameters" pasteAsReplace="pasteAsReplace" customInsertType="Procedure" customInsert="spi_ins_PrimarySubjects_multiple;1" dataSource="STUDENT_SUBJECT" returnPage="Student_Subject_maintain.ccp" editableComponentTypeString="Record">
			<Components>
				<ListBox id="67" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Grade" PathID="PrimarySubjectM3Grade" sourceType="ListOfValues" html="True" dataSource="1;PREP;15;YEAR 1;29;YEAR 2;39;YEAR 3;49;YEAR 4;59;YEAR 5;69;YEAR 6" required="True" caption="Primary Year Level" _nameOfList="Grade F (Yr 6)" _valueOfList="61">
					<Components/>
					<Events>
					</Events>
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
				<TextBox id="69" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="EnrolDate" PathID="PrimarySubjectM3EnrolDate" format="dd/mm/yyyy" defaultValue="Now()" required="True" caption="Enrol Date - Primary Year">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<Button id="70" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Insert" PathID="PrimarySubjectM3Button_Insert" operation="Insert" wizardCaption="Add">
					<Components/>
					<Events>
					</Events>
					<Attributes/>
					<Features/>
				</Button>
				<Hidden id="84" fieldSourceType="DBColumn" dataType="Text" name="hidden_STUDENT_ID" required="True" caption="Student ID" PathID="PrimarySubjectM3hidden_STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<Hidden id="85" fieldSourceType="DBColumn" dataType="Text" name="hidden_ENROLMENT_YEAR" caption="Enrolment Year" required="True" PathID="PrimarySubjectM3hidden_ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Hidden>
				<RadioButton id="88" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Grade1" PathID="PrimarySubjectM3Grade1" sourceType="ListOfValues" html="True" dataSource="2;&lt;span style=&quot;BACKGROUND: orange\;PADDING:3px&quot;&gt;F (A/B-G/H)&lt;/span&gt;;12;&lt;span style=&quot;BACKGROUND: #B166B3\;PADDING:3px&quot;&gt;1 (A/B-G/H)&lt;/span&gt;;22;&lt;span style=&quot;BACKGROUND: pink\;PADDING:3px&quot;&gt;2 (A/B-G/H)&lt;/span&gt;;33;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (A-H)&lt;/span&gt;;44;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (A-H)&lt;/span&gt;;52;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (A-H)&lt;/span&gt;;61;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (A-H)&lt;/span&gt;;0;None" required="True" caption="Grade Level - English Semester 1" _valueOfList="0" _nameOfList="None" defaultValue="0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="89" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>

					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</RadioButton>
				<RadioButton id="90" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Grade2" PathID="PrimarySubjectM3Grade2" sourceType="ListOfValues" html="True" required="True" caption="Grade Level - English Semester 2" _valueOfList="3" _nameOfList="P (U10-18)" defaultValue="0" dataSource="3;&lt;span style=&quot;BACKGROUND: orange\;PADDING:3px&quot;&gt;F (I/J-Q/R)&lt;/span&gt;;13;&lt;span style=&quot;BACKGROUND: #B166B3\;PADDING:3px&quot;&gt;1 (I/J-Q/R)&lt;/span&gt;;23;&lt;span style=&quot;BACKGROUND: pink\;PADDING:3px&quot;&gt;2 (I/J-Q/R)&lt;/span&gt;;34;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (I-P)&lt;/span&gt;;45;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (I-P)&lt;/span&gt;;53;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (I-P)&lt;/span&gt;;62;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (I-P)&lt;/span&gt;;0;None">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="91"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</RadioButton>
				<RadioButton id="92" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Grade3" PathID="PrimarySubjectM3Grade3" sourceType="ListOfValues" html="True" dataSource="4;&lt;span style=&quot;BACKGROUND: orange\;PADDING:3px&quot;&gt;F (A/B-G/H)&lt;/span&gt;;16;&lt;span style=&quot;BACKGROUND: #B166B3\;PADDING:3px&quot;&gt;1 (A/B-G/H)&lt;/span&gt;;26;&lt;span style=&quot;BACKGROUND: pink\;PADDING:3px&quot;&gt;2 (A/B-G/H)&lt;/span&gt;;36;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (A-H)&lt;/span&gt;;46;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (A-H)&lt;/span&gt;;54;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (A-H)&lt;/span&gt;;64;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (A-H)&lt;/span&gt;;0;None" required="True" caption="Grade Level - Maths Semester 1" _valueOfList="0" _nameOfList="None" defaultValue="0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="93" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</RadioButton>
				<TextBox id="98" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="EnrolDate1" PathID="PrimarySubjectM3EnrolDate1" format="dd/mm/yyyy" defaultValue="Now()" required="True" caption="Enrol Date - English">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="99" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="EnrolDate2" PathID="PrimarySubjectM3EnrolDate2" format="dd/mm/yyyy" defaultValue="Now()" required="True" caption="Enrol Date - English">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="100" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="EnrolDate3" PathID="PrimarySubjectM3EnrolDate3" format="dd/mm/yyyy" defaultValue="Now()" required="True" caption="Enrol Date - Maths">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<TextBox id="101" visible="Yes" fieldSourceType="DBColumn" dataType="Date" name="EnrolDate4" PathID="PrimarySubjectM3EnrolDate4" format="dd/mm/yyyy" defaultValue="Now()" required="True" caption="Enrol Date - Maths">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</TextBox>
				<RadioButton id="102" visible="Yes" fieldSourceType="DBColumn" dataType="Text" name="Grade4" PathID="PrimarySubjectM3Grade4" sourceType="ListOfValues" html="True" _valueOfList="61" _nameOfList="Grade F (Yr 6)" dataSource="5;&lt;span style=&quot;BACKGROUND: orange\;PADDING:3px&quot;&gt;F (I/J-Q/R)&lt;/span&gt;;17;&lt;span style=&quot;BACKGROUND: #B166B3\;PADDING:3px&quot;&gt;1 (I/J-Q/R)&lt;/span&gt;;27;&lt;span style=&quot;BACKGROUND: pink\;PADDING:3px&quot;&gt;2 (I/J-Q/R)&lt;/span&gt;;37;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (I-P)&lt;/span&gt;;47;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (I-P)&lt;/span&gt;;56;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (I-P)&lt;/span&gt;;66;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (I-P)&lt;/span&gt;;0;None" required="True" caption="Grade Level - Maths Semester 2" defaultValue="0">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="103"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</RadioButton>
				<RadioButton id="262" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade5" PathID="PrimarySubjectM3Grade5" caption="Integrated - Sem 1" dataSource="6;&lt;span style=&quot;BACKGROUND: orange\;PADDING:3px&quot;&gt;F (A/B-G/H)&lt;/span&gt;;14;&lt;span style=&quot;BACKGROUND: #B166B3\;PADDING:3px&quot;&gt;1 (A/B-G/H)&lt;/span&gt;;20;&lt;span style=&quot;BACKGROUND: pink\;PADDING:3px&quot;&gt;2 (A/B-G/H)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="264"/>
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
				<RadioButton id="263" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade6" PathID="PrimarySubjectM3Grade6" caption="Integrated - Sem 2" dataSource="7;&lt;span style=&quot;BACKGROUND: orange\;PADDING:3px&quot;&gt;F (I/J-Q/R)&lt;/span&gt;;19;&lt;span style=&quot;BACKGROUND: #B166B3\;PADDING:3px&quot;&gt;1 (I/J-Q/R)&lt;/span&gt;;24;&lt;span style=&quot;BACKGROUND: pink\;PADDING:3px&quot;&gt;2 (I/J-Q/R)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="265" eventType="Server"/>
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
				<RadioButton id="266" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade7" PathID="PrimarySubjectM3Grade7" caption="Humanities - Sem 1" dataSource="30;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (A/B-G/H)&lt;/span&gt;;40;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (A/B-G/H)&lt;/span&gt;;51;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (A/B-G/H)&lt;/span&gt;;60;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (A/B-G/H)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="267"/>
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
				<RadioButton id="268" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade8" PathID="PrimarySubjectM3Grade8" caption="Humanities - Sem 2" dataSource="38;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (I/J-Q/R)&lt;/span&gt;;141;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (I/J-Q/R)&lt;/span&gt;;151;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (I/J-Q/R)&lt;/span&gt;;160;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (I/J-Q/R)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="269"/>
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
				<RadioButton id="270" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade9" PathID="PrimarySubjectM3Grade9" caption="Science - Sem 1" dataSource="70;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (A/B-G/H)&lt;/span&gt;;43;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (A/B-G/H)&lt;/span&gt;;57;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (A/B-G/H)&lt;/span&gt;;67;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (A/B-G/H)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="271"/>
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
				<RadioButton id="272" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade10" PathID="PrimarySubjectM3Grade10" caption="Science - Sem 2" dataSource="71;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (I/J-Q/R)&lt;/span&gt;;48;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (I/J-Q/R)&lt;/span&gt;;157;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (I/J-Q/R)&lt;/span&gt;;167;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (I/J-Q/R)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="273"/>
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
				<RadioButton id="274" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade11" PathID="PrimarySubjectM3Grade11" caption="Health (HPE) - Sem 1" dataSource="72;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (A/B-G/H)&lt;/span&gt;;142;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (A/B-G/H)&lt;/span&gt;;82;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (A/B-G/H)&lt;/span&gt;;162;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (A/B-G/H)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="275"/>
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
				<RadioButton id="276" visible="Yes" fieldSourceType="DBColumn" sourceType="ListOfValues" dataType="Text" html="True" returnValueType="Number" name="Grade12" PathID="PrimarySubjectM3Grade12" caption="Health (HPE) - Sem 2" dataSource="74;&lt;span style=&quot;BACKGROUND: gold\;PADDING:3px&quot;&gt;3 (I/J-Q/R)&lt;/span&gt;;144;&lt;span style=&quot;BACKGROUND: lightgreen\;PADDING:3px&quot;&gt;4 (I/J-Q/R)&lt;/span&gt;;84;&lt;span style=&quot;BACKGROUND: lightblue\;PADDING:3px&quot;&gt;5 (I/J-Q/R)&lt;/span&gt;;164;&lt;span style=&quot;BACKGROUND: tomato\;PADDING:3px&quot;&gt;6 (I/J-Q/R)&lt;/span&gt;;0;None" defaultValue="0" required="True">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="277"/>
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
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="109" name="hidden_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="110" name="hidden_ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
						<Action actionName="Declare Variable" actionCategory="General" id="132" name="tmp_YEAR_LEVEL" type="Integer" initialValue="-1" id_oncopy="150"/>
						<Action actionName="DLookup" actionCategory="Database" id="133" typeOfTarget="Variable" expression="&quot;YEAR_LEVEL&quot;" domain="&quot;STUDENT_ENROLMENT&quot;" criteria="&quot;STUDENT_ID = &quot; &amp; PrimarySubjectM3hidden_STUDENT_ID.Value  &amp; &quot; AND ENROLMENT_YEAR= &quot; &amp; PrimarySubjectM3hidden_ENROLMENT_YEAR.Value" connection="connDECVPRODSQL2005" dataType="Integer" target="tmp_YEAR_LEVEL" id_oncopy="148"/>
						<Action actionName="Custom Code" actionCategory="General" id="134" id_oncopy="149"/>
						<Action actionName="Custom Code" actionCategory="General" id="278"/>
					</Actions>
				</Event>
				<Event name="AfterInsert" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="200"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<ISPParameters>
				<SPParameter id="Key154" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key155" parameterName="@StudentID" parameterSource="hidden_STUDENT_ID" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key156" parameterName="@EnrolmentYear" parameterSource="hidden_ENROLMENT_YEAR" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key157" parameterName="@YEARLEVEL_SubjectID" parameterSource="Grade" dataType="Int" parameterType="Control" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key158" parameterName="@YEARLEVEL_Distribution" parameterSource="&quot;B&quot;" dataType="Char" parameterType="Expression" dataSize="1" direction="Input" scale="0" precision="10" defaultValue="&quot;B&quot;" designDefaultValue="&quot;B&quot;"/>
				<SPParameter id="Key159" parameterName="@YEARLEVEL_EnrolDate" parameterSource="EnrolDate" dataType="Date" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10" format="dd/mm/yyyy"/>
				<SPParameter id="Key160" parameterName="@Sem1Eng_SubjectID" parameterSource="Grade1" dataType="Int" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key161" parameterName="@Sem1Eng_Distribution" parameterSource="&quot;B&quot;" dataType="Char" dataSize="1" direction="Input" scale="0" precision="10" defaultValue="&quot;B&quot;" designDefaultValue="&quot;B&quot;" parameterType="Expression"/>
				<SPParameter id="Key162" parameterName="@Sem1Eng_EnrolDate" parameterSource="EnrolDate1" dataType="Date" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10" format="dd/mm/yyyy"/>
				<SPParameter id="Key163" parameterName="@Sem1Math_SubjectID" parameterSource="Grade3" dataType="Int" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key164" parameterName="@Sem1Math_Distribution" parameterSource="&quot;B&quot;" dataType="Char" dataSize="1" direction="Input" scale="0" precision="10" defaultValue="&quot;B&quot;" designDefaultValue="&quot;B&quot;" parameterType="Expression"/>
				<SPParameter id="Key165" parameterName="@Sem1Math_EnrolDate" parameterSource="EnrolDate3" dataType="Date" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10" format="dd/mm/yyyy"/>
				<SPParameter id="Key166" parameterName="@Sem2Eng_SubjectID" parameterSource="Grade2" dataType="Int" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key167" parameterName="@Sem2Eng_Distribution" parameterSource="&quot;B&quot;" dataType="Char" dataSize="1" direction="Input" scale="0" precision="10" defaultValue="&quot;B&quot;" designDefaultValue="&quot;B&quot;" parameterType="Expression"/>
				<SPParameter id="Key168" parameterName="@Sem2Eng_EnrolDate" parameterSource="EnrolDate2" dataType="Date" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10" format="dd/mm/yyyy"/>
				<SPParameter id="Key169" parameterName="@Sem2Math_SubjectID" parameterSource="Grade4" dataType="Int" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key170" parameterName="@Sem2Math_Distribution" parameterSource="&quot;B&quot;" dataType="Char" dataSize="1" direction="Input" scale="0" precision="10" defaultValue="&quot;B&quot;" designDefaultValue="&quot;B&quot;" parameterType="Expression"/>
				<SPParameter id="Key171" parameterName="@Sem2Math_EnrolDate" parameterSource="EnrolDate4" dataType="Date" parameterType="Control" dataSize="10" direction="Input" scale="0" precision="10" format="dd/mm/yyyy"/>
				<SPParameter id="Key172" parameterName="@UserID" parameterSource="DBUtility.UserLogin.ToUpper" dataType="Char" parameterType="Expression" dataSize="8" direction="Input" scale="0" precision="10"/>
			</ISPParameters>
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
		<Record id="232" sourceType="Table" urlType="Relative" secured="False" allowInsert="False" allowUpdate="True" allowDelete="False" validateData="True" preserveParameters="GET" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="STUDENT" connection="connDECVPRODSQL2005" dataSource="STUDENT" errorSummator="Error" allowCancel="False" recordDeleteConfirmation="False" buttonsType="button" wizardRecordKey="STUDENT_ID" encryptPasswordField="False" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardCaption="Add/Edit STUDENT " wizardThemeApplyTo="Page" wizardFormMethod="post" wizardType="Record" changedCaptionRecord="False" recordDirection="Vertical" templatePageRecord="C:/Program Files (x86)/CodeChargeStudio5/Templates/Record/Dialog.ccp|ccsTemplate" recordAddTemplatePanel="False" PathID="STUDENT" customUpdateType="Procedure" parameterTypeListName="ParameterTypeList" customUpdate="spu_SSTeacher_StudentsNoCLP;1" activeCollection="USPParameters" returnPage="Student_Subject_maintain.ccp">
			<Components>
				<Button id="234" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Update" operation="Update" wizardCaption="Submit" PathID="STUDENTButton_Update">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="236" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SURNAME" fieldSource="SURNAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="SURNAME" wizardAddNbsp="True" PathID="STUDENTSURNAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="237" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="FIRST_NAME" fieldSource="FIRST_NAME" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardCaption="FIRST NAME" wizardAddNbsp="True" PathID="STUDENTFIRST_NAME">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="238" name="tmpNonCustomCount" type="Integer" initialValue="0"/>
						<Action actionName="Declare Variable" actionCategory="General" id="239" name="tmpStudentID" type="Integer" initialValue="0"/>
						<Action actionName="Retrieve Value for Variable" actionCategory="General" id="240" name="tmpStudentID" sourceType="URL" sourceName="STUDENT_ID"/>
						<Action actionName="DLookup" actionCategory="Database" id="241" typeOfTarget="Variable" expression="&quot;count(*)&quot;" domain="&quot;STUDENT_SUBJECT&quot;" connection="connDECVPRODSQL2005" dataType="Integer" target="tmpNonCustomCount" criteria="&quot;MODULE_CUSTOMPROGRAM is null AND SUBJ_ENROL_STATUS in ('C','D') AND ENROLMENT_YEAR=YEAR(getdate()) AND STUDENT_ID = &quot; &amp; tmpStudentID &amp; &quot; &quot;"/><Action actionName="Custom Code" actionCategory="General" id="242"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters>
				<TableParameter id="244" conditionType="Parameter" useIsNull="False" dataType="Float" field="STUDENT_ID" logicOperator="And" orderNumber="1" parameterSource="STUDENT_ID" parameterType="URL" searchConditionType="Equal"/>
			</TableParameters>
			<SPParameters/>
			<SQLParameters/>
			<JoinTables>
				<JoinTable id="243" posHeight="180" posLeft="10" posTop="10" posWidth="160" tableName="STUDENT"/>
			</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="245" alias="SURNAME" fieldName="rtrim(SURNAME)" isExpression="True"/>
				<Field id="246" fieldName="STUDENT_ID" isExpression="False" tableName="STUDENT"/>
				<Field id="247" alias="FIRST_NAME" fieldName="rtrim(FIRST_NAME)" isExpression="True"/>
			</Fields>
			<PKFields>
				<PKField id="248" dataType="Float" fieldName="STUDENT_ID" tableName="STUDENT"/>
			</PKFields>
			<ISPParameters/>
			<ISQLParameters/>
			<IFormElements/>
			<USPParameters>
				<SPParameter id="Key173" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="URL" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key174" parameterName="@student_id" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key175" parameterName="@staff_id" parameterSource="UserId" dataType="Char" parameterType="Session" dataSize="20" direction="Input" scale="0" precision="0"/>
			</USPParameters>
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
		<EditableGrid id="283" urlType="Relative" secured="False" emptyRows="0" allowInsert="False" allowUpdate="False" allowDelete="True" validateData="True" preserveParameters="GET" sourceType="SQL" defaultPageSize="30" returnValueType="Number" returnValueTypeForDelete="Number" returnValueTypeForInsert="Number" returnValueTypeForUpdate="Number" name="CORESUBJECTS" connection="connDECVPRODSQL2005" dataSource="select
   SUBJECT_ID,
   SUBJECT_ABBREV,
   SUBJECT_TITLE,
   YEAR_LEVEL,
   CORE_YEARLEVELS,
   SUB_SCHOOL,
   DEFAULT_SEMESTER,
   1 as autotick,
   (case
       when PARENT_SUBJECT_ID &lt; 0 then 'Row GroupParent'
       when PARENT_SUBJECT_ID &gt; 0 then 'AltRow GroupChild'
       else 'Row'
    end
   ) as grouprowtype,
   0 as GroupDisplayOrder
 from
   dbo.SUBJECT
 where
   STATUS = 1
   and CORE_YEARLEVELS like
   (
      select
         '%' + convert(varchar(2), YEAR_LEVEL) + '%'
       from
         dbo.STUDENT_ENROLMENT
       where
         ENROLMENT_YEAR = {ENROLMENT_YEAR}
         and STUDENT_ID = {STUDENT_ID}
   )
   and SUBJECT_ID not in
       (
          select vss.SupportSubjectID from dbo.vwSupportSubject as vss
       )
union
select 0, null, 'Electives', null, null, null, null, null, 'Row GroupParent', 1
union
select
   SUBJECT_ID,
   SUBJECT_ABBREV,
   SUBJECT_TITLE,
   YEAR_LEVEL,
   CORE_YEARLEVELS,
   SUB_SCHOOL,
   DEFAULT_SEMESTER,
   0,
   'Row',
   2
 from
   dbo.SUBJECT
 where
   STATUS = 1
   and CORE_YEARLEVELS = 'Elective'
   and SUB_SCHOOL like
   (
      select
         '%' + convert(varchar(2), YEAR_LEVEL) + '%'
       from
         dbo.STUDENT_ENROLMENT
       where
         ENROLMENT_YEAR = {ENROLMENT_YEAR}
         and STUDENT_ID = {STUDENT_ID}
   )
union
select 0, null, 'Support Subjects', null, null, null, null, null, 'Row GroupParent', 3
union
select
   sbj.SUBJECT_ID,
   sbj.SUBJECT_ABBREV,
   sbj.SUBJECT_TITLE,
   sbj.YEAR_LEVEL,
   sbj.CORE_YEARLEVELS,
   sbj.SUB_SCHOOL,
   sbj.DEFAULT_SEMESTER,
   0,
   'Row',
   4
 from
   dbo.vwSupportSubject as vss
   inner join dbo.SUBJECT as sbj
      on (sbj.SUBJECT_ID = vss.SupportSubjectID)
 where
   sbj.YEAR_LEVEL =
 (
    select se.YEAR_LEVEL from dbo.STUDENT_ENROLMENT as se where (se.ENROLMENT_YEAR = {ENROLMENT_YEAR}) and (se.STUDENT_ID = {STUDENT_ID})
 )
 order by
   GroupDisplayOrder,
   SUBJECT_ABBREV" pageSizeLimit="100" wizardGridPageSize="False" wizardUseSearch="False" allowCancel="False" wizardSubmitConfirmation="False" wizardCaption="Add Core and Elective Subjects (7-10 only)" wizardGridType="Tabular" wizardAltRecord="False" wizardRecordSeparator="False" wizardNoRecords="No Subjects found for this Students Year Level. Please add manually (below)" wizardGridKey="SUBJECT_ID" wizardAddNbsp="False" wizardTotalRecords="False" wizardButtonsType="button" changedCaptionEditableGrid="True" wizardUseInterVariables="False" pkIsAutoincrement="True" wizardType="EditableGrid" wizardThemeApplyTo="Page" addTemplatePanel="False" PathID="CORESUBJECTS" deleteControl="CheckBox_Delete" customDeleteType="Procedure" parameterTypeListName="CustomTableParameterTypeList" customDelete="spi_AddStudentSubject;1" activeCollection="DSPParameters">
			<Components>
				<Label id="287" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT ID" PathID="CORESUBJECTSSUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="288" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="SUBJECT_ABBREV" fieldSource="SUBJECT_ABBREV" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT ABBREV" PathID="CORESUBJECTSSUBJECT_ABBREV">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="289" fieldSourceType="DBColumn" dataType="Text" html="True" generateSpan="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="SUBJECT TITLE" PathID="CORESUBJECTSSUBJECT_TITLE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="290" fieldSourceType="DBColumn" dataType="Integer" html="False" generateSpan="False" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="YEAR LEVEL" PathID="CORESUBJECTSYEAR_LEVEL">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="291" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="CORE_YEARLEVELS" fieldSource="CORE_YEARLEVELS" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="CORE YEARLEVELS" PathID="CORESUBJECTSCORE_YEARLEVELS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<RadioButton id="292" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="DEFAULT_SEMESTER" fieldSource="DEFAULT_SEMESTER" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardCaption="DEFAULT SEMESTER" PathID="CORESUBJECTSDEFAULT_SEMESTER" visible="Yes" sourceType="ListOfValues" caption="SEMESTER" dataSource="1;Sem 1;2;Sem 2">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="325"/>
								<Action actionName="Custom Code" actionCategory="General" id="332"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
					<TableParameters/>
					<SPParameters/>
					<SQLParameters/>
					<JoinTables/>
					<JoinLinks/>
					<Fields/>
					<PKFields/>
				</RadioButton>
				<CheckBox id="294" visible="Dynamic" fieldSourceType="DBColumn" dataType="Integer" defaultValue="Unchecked" name="CheckBox_Delete" checkedValue="1" uncheckedValue="0" wizardCaption="Delete" wizardAddNbsp="True" PathID="CORESUBJECTSCheckBox_Delete" fieldSource="autotick" caption="Enrol checkbox">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Custom Code" actionCategory="General" id="331"/>
							</Actions>
						</Event>
					</Events>
					<Attributes>
						<Attribute id="335" name="CoreYearLevels" sourceType="DataField" source="CORE_YEARLEVELS"/>
					</Attributes>
					<Features/>
				</CheckBox>
				<Button id="295" urlType="Relative" enableValidation="True" isDefault="False" name="Button_Submit" operation="Submit" wizardCaption="Submit" PathID="CORESUBJECTSButton_Submit">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Button>
				<Label id="328" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblClass" PathID="CORESUBJECTSlblClass" defaultValue="&quot;Row&quot;" fieldSource="grouprowtype">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="298"/>
					</Actions>
				</Event>
				<Event name="BeforeBuildDelete" type="Server">
					<Actions>
						<Action actionName="Custom Code" actionCategory="General" id="300"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="336" dataType="Integer" defaultValue="2019" designDefaultValue="2018" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
<SQLParameter id="337" dataType="Integer" defaultValue="0" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
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
			<UConditions/>
			<UFormElements/>
			<DSPParameters>
				<SPParameter id="Key176" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" dataType="Int" parameterType="Expression" dataSize="0" direction="ReturnValue" scale="0" precision="10"/>
				<SPParameter id="Key177" parameterName="@StudentID" parameterSource="STUDENT_ID" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key178" parameterName="@EnrolmentYear" parameterSource="ENROLMENT_YEAR" dataType="Int" parameterType="URL" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key179" parameterName="@SubjectID" parameterSource="SUBJECT_ID" dataType="Int" parameterType="DataSourceColumn" dataSize="0" direction="Input" scale="0" precision="10"/>
				<SPParameter id="Key180" parameterName="@Semester" parameterSource="DEFAULT_SEMESTER" dataType="Char" parameterType="Control" dataSize="1" direction="Input" scale="0" precision="0"/>
				<SPParameter id="Key181" parameterName="@UserID" parameterSource="UserID" dataType="Char" parameterType="Session" dataSize="8" direction="Input" scale="0" precision="0"/>
				<SPParameter id="Key182" parameterName="@update" parameterSource="1" dataType="Int" parameterType="Expression" dataSize="0" direction="Input" scale="0" precision="10"/>
			</DSPParameters>
			<DSQLParameters/>
			<DConditions/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
		</EditableGrid>
		<Grid id="3" secured="False" sourceType="SQL" returnValueType="Number" defaultPageSize="80" connection="connDECVPRODSQL2005" activeCollection="SQLParameters" parameterTypeListName="ParameterTypeList" dataSource="select
 --21-Nov-2018|EA| include Grouping for Full Year subjects for display mainly
	(case when b.parent_subject_id &lt; 0 then b.subject_id
		when b.parent_subject_id &gt; 0 then b.parent_subject_id
		else 999 end) as grouping
, b.parent_subject_id
, (case when b.parent_subject_id &lt; 0 then 'Row GroupParent'
		when b.parent_subject_id &gt; 0 then 'AltRow GroupChild'
		else 'Row' end) as grouprowtype
, A.SUBJECT_ID, b.subject_abbrev, B.SUBJECT_TITLE
-- , (case A.COURSE_DISTRIBUTION when 'B' then 'Book' when 'I' then 'Internet' when 'C' then 'CD' when 'E' then 'E-mail' else 'Unknown' end) as [Course_Distribution]
, 'LMS' as [Course_Distribution]
, A.SEMESTER
, A.SUBJ_ENROL_STATUS + (CASE WHEN EXTENSION_OF_VCE_UNIT = 1 THEN ' Extended' ELSE '' END) AS SUBJ_ENROL_STATUS
, isnull(convert(char(8),A.ENROLMENT_DATE,3),'') as [Enrolment_Date]
, isnull(convert(char(8),A.WITHDRAWAL_DATE,3),'') as [End_Date]
 --14-Feb-2013|EA new modules fields
 --13-Feb-2014|EA| change No CLP to 'Standard Learning Program, similar to viewStudentSummary_SubjectList (unfuddle #579)
, a.MODULE_CUSTOMPROGRAM, a.MODULE_NEXTMODULE, a.MODULE_LAST_ALTERED_BY, a.MODULE_LAST_ALTERED_DATE
--13-Feb-2014|EA| adjust display to show SLP (unfuddle #579)
, (case a.MODULE_CUSTOMPROGRAM WHEN '1' THEN 'Custom//Modified' WHEN '0' THEN 'Standard Learning Program' else 'unknown' end ) as MODULE_CUSTOMPROGRAM_display
--12-Mar-2015|EA| adjust display to show Non-Submitting (unfuddle #690)
, (case a.NON_SUBMITTING_FLAG WHEN '1' THEN 'Non-Submitting' ELSE '' end ) as NON_SUBMITTING_FLAG_display
, a.staff_id, a.student_id
from (STUDENT_SUBJECT A join SUBJECT B on A.SUBJECT_ID=B.SUBJECT_ID )
	left join subject BB on b.parent_subject_id = BB.SUBJECT_ID 
where A.STUDENT_ID={STUDENT_ID}
and A.ENROLMENT_YEAR = {ENROLMENT_YEAR}
order by 1,2,4
" name="NewGrid1" pageSizeLimit="100" wizardCaption="List of New Grid1 " wizardGridType="Tabular" wizardSortingType="SimpleDir" wizardAllowInsert="False" wizardAltRecord="True" wizardAltRecordType="Style" wizardRecordSeparator="False" wizardNoRecords="No Subjects found for this Student ID and Enrolment Year" PathID="NewGrid1" visible="Dynamic" features="(assigned)">
			<Components>
				<Label id="24" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblSTUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="25" fieldSourceType="DBColumn" dataType="Text" html="False" name="lblENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="6" fieldSourceType="DBColumn" dataType="Text" html="False" name="NewGrid1_TotalRecords" wizardUseTemplateBlock="False">
					<Components/>
					<Events>
						<Event name="BeforeShow" type="Server">
							<Actions>
								<Action actionName="Retrieve number of records" actionCategory="Database" id="7" eventType="Server"/>
							</Actions>
						</Event>
					</Events>
					<Attributes/>
					<Features/>
				</Label>
				<Sorter id="12" visible="True" name="Sorter_SUBJ_ENROL_STATUS" column="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSortingType="SimpleDir" wizardControl="SUBJ_ENROL_STATUS" wizardAddNbsp="False" PathID="NewGrid1Sorter_SUBJ_ENROL_STATUS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="13" visible="True" name="Sorter_Enrolment_Date" column="Enrolment_Date" wizardCaption="Enrolment Date" wizardSortingType="SimpleDir" wizardControl="Enrolment_Date" wizardAddNbsp="False" PathID="NewGrid1Sorter_Enrolment_Date">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Sorter id="14" visible="True" name="Sorter_End_Date" column="End_Date" wizardCaption="End Date" wizardSortingType="SimpleDir" wizardControl="End_Date" wizardAddNbsp="False" PathID="NewGrid1Sorter_End_Date">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Sorter>
				<Link id="16" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID" wizardCaption="SUBJECT ID" wizardSize="10" wizardMaxLength="10" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAlign="right" wizardAddNbsp="True" visible="Yes" hrefType="Page" urlType="Relative" preserveParameters="GET" hrefSource="StudentSubject_Details_maintain.ccp" PathID="NewGrid1SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
					<LinkParameters>
						<LinkParameter id="43" sourceType="DataField" name="SUBJECT_ID" source="SUBJECT_ID"/>
					</LinkParameters>
				</Link>
				<Label id="17" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_TITLE" fieldSource="SUBJECT_TITLE" wizardCaption="SUBJECT TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="18" fieldSourceType="DBColumn" dataType="Text" html="False" name="Course_Distribution" fieldSource="Course_Distribution" wizardCaption="Course Distribution" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="19" fieldSourceType="DBColumn" dataType="Text" html="False" name="SEMESTER" fieldSource="SEMESTER" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="20" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJ_ENROL_STATUS" fieldSource="SUBJ_ENROL_STATUS" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="21" fieldSourceType="DBColumn" dataType="Text" html="False" name="Enrolment_Date" fieldSource="Enrolment_Date" wizardCaption="Enrolment Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="22" fieldSourceType="DBColumn" dataType="Text" html="False" name="End_Date" fieldSource="End_Date" wizardCaption="End Date" wizardSize="8" wizardMaxLength="8" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="147" fieldSourceType="DBColumn" dataType="Text" html="False" name="CUSTOM_LP_display" fieldSource="MODULE_CUSTOMPROGRAM_display" wizardCaption="SUBJ ENROL STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="148" fieldSourceType="DBColumn" dataType="Text" html="False" name="NEXT_MODULE" PathID="NewGrid1NEXT_MODULE" fieldSource="MODULE_NEXTMODULE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="149" fieldSourceType="DBColumn" dataType="Text" html="False" name="TeacherID" fieldSource="staff_id" wizardCaption="SEMESTER" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="259" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="NON_SUBMITTING_FLAG_display" PathID="NewGrid1NON_SUBMITTING_FLAG_display" fieldSource="NON_SUBMITTING_FLAG_display">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="318" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBJECT_ABBREV" fieldSource="subject_abbrev" wizardCaption="SUBJECT TITLE" wizardSize="37" wizardMaxLength="37" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="True">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="322" fieldSourceType="DBColumn" dataType="Text" html="False" generateSpan="False" name="lblClass" PathID="NewGrid1lblClass" fieldSource="grouprowtype" defaultValue="&quot;Row&quot;">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events>
				<Event name="BeforeShowRow" type="Server">
					<Actions>
						<Action actionName="Declare Variable" actionCategory="General" id="311" name="tmpGroupType" type="Text" initialValue="&quot;&quot;" id_oncopy="311" eventType="Server"/>
						<Action actionName="Custom Code" actionCategory="General" id="305"/>
					</Actions>
				</Event>
				<Event name="BeforeShow" type="Server">
					<Actions>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="26" name="lblSTUDENT_ID" sourceType="URL" sourceName="STUDENT_ID" eventType="Server"/>
						<Action actionName="Retrieve Value for Control" actionCategory="General" id="27" name="lblENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR" eventType="Server"/>
					</Actions>
				</Event>
			</Events>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters>
				<SQLParameter id="320" dataType="Text" designDefaultValue="56794" parameterSource="STUDENT_ID" parameterType="URL" variable="STUDENT_ID"/>
				<SQLParameter id="321" dataType="Text" designDefaultValue="2018" parameterSource="ENROLMENT_YEAR" parameterType="URL" variable="ENROLMENT_YEAR"/>
			</SQLParameters>
			<SecurityGroups/>
			<Attributes>
				<Attribute id="319" name="rowStyle" sourceType="DataField" source="grouprowtype"/>
			</Attributes>
			<Features>
			</Features>
			<PKFields/>
		</Grid>
		<Label id="87" fieldSourceType="CodeExpression" dataType="Text" html="False" generateSpan="False" name="lblModified" PathID="lblModified" fieldSource="System.IO.File.GetLastWriteTime(Request.PhysicalPath).ToString(&quot;dd MMM yy HH:mm&quot;)">
			<Components/>
			<Events/>
			<Attributes/>
			<Features/>
		</Label>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="Student_Subject_maintain.aspx" forShow="True" url="Student_Subject_maintain.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="Student_Subject_maintain.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="Student_Subject_maintainDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events>
		<Event name="OnLoad" type="Client">
			<Actions>
				<Action actionName="Set Focus" actionCategory="General" id="35" form="AddSubject" name="subject_id"/>
			</Actions>
		</Event>
		<Event name="BeforeShow" type="Server">
			<Actions>
				<Action name="tmp_YEAR_LEVEL" type="Integer" initialValue="-1"/>
				<Action actionName="Declare Variable" actionCategory="General" id="113" name="tmp_STUDENT_ID" type="Integer" initialValue="-1"/>
				<Action actionName="Declare Variable" actionCategory="General" id="114" name="tmp_ENROLMENT_YEAR" type="Integer" initialValue="Year(Now())"/>
				<Action actionName="Declare Variable" actionCategory="General" id="297" name="tmp_YEAR_LEVEL" type="Integer" initialValue="0"/>
				<Action actionName="Retrieve Value for Variable" actionCategory="General" id="111" name="tmp_STUDENT_ID" sourceType="URL" sourceName="STUDENT_ID"/>
				<Action actionName="Retrieve Value for Variable" actionCategory="General" id="112" name="tmp_ENROLMENT_YEAR" sourceType="URL" sourceName="ENROLMENT_YEAR"/>
				<Action actionName="DLookup" actionCategory="Database" id="106" typeOfTarget="Variable" expression="&quot;YEAR_LEVEL&quot;" domain="&quot;STUDENT_ENROLMENT&quot;" criteria="&quot;STUDENT_ID = &quot; &amp; tmp_STUDENT_ID.ToString()  &amp; &quot; AND ENROLMENT_YEAR= &quot; &amp; tmp_ENROLMENT_YEAR.ToString()" connection="connDECVPRODSQL2005" dataType="Integer" target="tmp_YEAR_LEVEL"/>
				<Action actionName="Hide-Show Component" actionCategory="General" id="107" action="Hide" conditionType="Expression" dataType="Text" componentName="PrimarySubjectM3" condition="(tmp_YEAR_LEVEL &gt; 6)"/>
				<Action actionName="Hide-Show Component" actionCategory="General" id="299" action="Hide" conditionType="Expression" dataType="Text" componentName="CORESUBJECTS" condition="(tmp_YEAR_LEVEL &lt; 7 or tmp_YEAR_LEVEL &gt; 10)"/>
			</Actions>
		</Event>
	</Events>
</Page>
