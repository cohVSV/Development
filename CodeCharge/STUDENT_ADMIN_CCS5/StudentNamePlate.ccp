<Page id="1" templateExtension="html" relativePath="." fullRelativePath="." secured="False" urlType="Relative" isIncluded="True" SSLAccess="False" isService="False" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" wizardTheme="Blueprint" wizardThemeVersion="3.0" needGeneration="0" PathID="StudentNamePlate">
	<Components>
		<Report id="2" secured="False" enablePrint="False" showMode="Web" sourceType="Table" returnValueType="Number" linesPerWebPage="1" linesPerPhysicalPage="50" connection="connDECVPRODSQL2005" dataSource="viewStudentSummary_Details" activeCollection="TableParameters" name="viewStudentSummary_Detail" pageSizeLimit="100" wizardCaption=" View Student Summary Details " wizardLayoutType="Tabular" PathID="StudentNamePlateviewStudentSummary_Detail">
			<Components>
				<Section id="15" visible="True" lines="0" name="Report_Header" wizardSectionType="ReportHeader" PathID="StudentNamePlateviewStudentSummary_DetailReport_Header">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
				<Section id="17" visible="True" lines="1" name="Detail" pasteAsReplace="pasteAsReplace" pasteActions="pasteActions" PathID="StudentNamePlateviewStudentSummary_DetailDetail">
					<Components>
						<ReportLabel id="22" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="first_name" fieldSource="first_name" wizardCaption="first_name" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="StudentNamePlateviewStudentSummary_DetailDetailfirst_name">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="24" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="surname" fieldSource="surname" wizardCaption="surname" wizardSize="30" wizardMaxLength="30" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="StudentNamePlateviewStudentSummary_DetailDetailsurname">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="21" fieldSourceType="DBColumn" dataType="Float" html="False" hideDuplicates="False" resetAt="Report" name="STUDENT_ID" fieldSource="STUDENT_ID" wizardCaption="STUDENT_ID" wizardSize="12" wizardMaxLength="12" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardAlign="right" PathID="StudentNamePlateviewStudentSummary_DetailDetailSTUDENT_ID">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="25" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="subcategory_full_title" fieldSource="subcategory_full_title" wizardCaption="subcategory_full_title" wizardSize="50" wizardMaxLength="50" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="StudentNamePlateviewStudentSummary_DetailDetailsubcategory_full_title" emptyValue="&quot;(unknown)&quot;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="33" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="GENDER" PathID="StudentNamePlateviewStudentSummary_DetailDetailGENDER" fieldSource="SEX">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="34" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="BIRTH_DATE" PathID="StudentNamePlateviewStudentSummary_DetailDetailBIRTH_DATE" fieldSource="birth_date" format="dd/mm/yyyy">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="35" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="AGE" PathID="StudentNamePlateviewStudentSummary_DetailDetailAGE" fieldSource="Age">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="29" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ENROLMENT_STATUS" fieldSource="ENROLMENT_STATUS" wizardCaption="ENROLMENT_STATUS" wizardSize="1" wizardMaxLength="1" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" PathID="StudentNamePlateviewStudentSummary_DetailDetailENROLMENT_STATUS" emptyValue="&quot;(unknown)&quot;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="26" fieldSourceType="DBColumn" dataType="Integer" html="False" hideDuplicates="False" resetAt="Report" name="YEAR_LEVEL" fieldSource="YEAR_LEVEL" wizardCaption="YEAR_LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardAlign="right" PathID="StudentNamePlateviewStudentSummary_DetailDetailYEAR_LEVEL" emptyValue="&quot;(??)&quot;">
							<Components/>
							<Events/>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="36" fieldSourceType="DBColumn" dataType="Text" html="False" hideDuplicates="False" resetAt="Report" name="ATAR_REQUIRED" fieldSource="ATAR_REQUIRED" wizardCaption="YEAR_LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardAlign="right" PathID="StudentNamePlateviewStudentSummary_DetailDetailATAR_REQUIRED" emptyValue="&quot;&quot;">
							<Components/>
							<Events>
								<Event name="BeforeShow" type="Server">
									<Actions>
										<Action actionName="Custom Code" actionCategory="General" id="38" eventType="Server"/>
									</Actions>
								</Event>
							</Events>
							<Attributes/>
							<Features/>
						</ReportLabel>
						<ReportLabel id="39" fieldSourceType="CodeExpression" dataType="Text" html="True" hideDuplicates="False" resetAt="Report" name="lblATAR_REQUIRED" wizardCaption="YEAR_LEVEL" wizardSize="5" wizardMaxLength="5" wizardIsPassword="False" wizardUseTemplateBlock="False" wizardAddNbsp="False" wizardAlign="right" PathID="StudentNamePlateviewStudentSummary_DetailDetaillblATAR_REQUIRED" emptyValue="&lt;b&gt;No ATAR&lt;/b&gt;" fieldSource="&quot;&quot;">
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
				<Section id="18" visible="True" lines="0" name="Report_Footer" wizardSectionType="ReportFooter" PathID="StudentNamePlateviewStudentSummary_DetailReport_Footer">
					<Components>
						<Panel id="19" visible="True" name="NoRecords" wizardNoRecords="No Student Details found!" PathID="StudentNamePlateviewStudentSummary_DetailReport_FooterNoRecords">
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
				<Section id="20" visible="True" lines="0" name="Page_Footer" wizardSectionType="PageFooter" pageBreakAfter="True" PathID="StudentNamePlateviewStudentSummary_DetailPage_Footer">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Section>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="13" conditionType="Parameter" useIsNull="False" field="STUDENT_ID" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STUDENT_ID"/>
				<TableParameter id="14" conditionType="Parameter" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="year(now())" parameterSource="ENROLMENT_YEAR"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="40" tableName="viewStudentSummary_Details"/>
</JoinTables>
			<JoinLinks/>
			<Fields>
				<Field id="4" tableName="viewStudentSummary_Details" fieldName="STUDENT_ID"/>
				<Field id="5" tableName="viewStudentSummary_Details" fieldName="surname"/>
				<Field id="6" tableName="viewStudentSummary_Details" fieldName="first_name"/>
				<Field id="7" tableName="viewStudentSummary_Details" fieldName="subcategory_full_title"/>
				<Field id="8" tableName="viewStudentSummary_Details" fieldName="ENROLMENT_STATUS"/>
				<Field id="10" tableName="viewStudentSummary_Details" fieldName="YEAR_LEVEL"/>
				<Field id="30" tableName="viewStudentSummary_Details" fieldName="birth_date"/>
				<Field id="31" tableName="viewStudentSummary_Details" fieldName="SEX"/>
				<Field id="32" tableName="viewStudentSummary_Details" fieldName="Age"/>
				<Field id="37" tableName="viewStudentSummary_Details" fieldName="ATAR_REQUIRED"/>
			</Fields>
			<SPParameters/>
			<SQLParameters/>
			<ReportGroups/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Report>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="StudentNamePlate.ascx" forShow="True" url="StudentNamePlate.ascx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="StudentNamePlate.ascx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="StudentNamePlateDataProvider.vb" path=".\App_Code\." forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
