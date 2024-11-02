<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="CountAssignmentsPending">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="50" connection="connDECVPRODSQL2005" dataSource="ASSIGNMENT_SUBMISSION" activeCollection="TableParameters" name="ASSIGNMENT_SUBMISSION" pageSizeLimit="100" wizardCaption="List of ASSIGNMENT SUBMISSION " wizardAllowInsert="False" PathID="CountAssignmentsPendingASSIGNMENT_SUBMISSION">
			<Components>
				<Label id="287" fieldSourceType="DBColumn" dataType="Float" html="False" name="STUDENT_ID" fieldSource="STUDENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="288" fieldSourceType="DBColumn" dataType="Float" html="False" name="ENROLMENT_YEAR" fieldSource="ENROLMENT_YEAR">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="289" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBJECT_ID" fieldSource="SUBJECT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="290" fieldSourceType="DBColumn" dataType="Integer" html="False" name="ASSIGNMENT_ID" fieldSource="ASSIGNMENT_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="291" fieldSourceType="DBColumn" dataType="Integer" html="False" name="SUBMISSION_ID" fieldSource="SUBMISSION_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="292" fieldSourceType="DBColumn" dataType="Date" html="False" name="RECEIVED_DATE" fieldSource="RECEIVED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="293" fieldSourceType="DBColumn" dataType="Date" html="False" name="RETURNED_DATE" fieldSource="RETURNED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="294" fieldSourceType="DBColumn" dataType="Text" html="False" name="STAFF_ID" fieldSource="STAFF_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="295" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="296" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="285" conditionType="Expression" useIsNull="False" field="ENROLMENT_YEAR" dataType="Float" searchConditionType="Equal" parameterType="Expression" logicOperator="And" expression="ENROLMENT_YEAR=Year(getdate())-1" parameterSource="Year(Now())"/>
				<TableParameter id="286" conditionType="Parameter" useIsNull="False" field="SUBJECT_ID" dataType="Integer" searchConditionType="Equal" parameterType="URL" logicOperator="And" defaultValue="501" parameterSource="SUBJECT_ID"/>
				<TableParameter id="297" conditionType="Parameter" useIsNull="False" field="STAFF_ID" dataType="Text" searchConditionType="Equal" parameterType="URL" logicOperator="And" parameterSource="STAFF_ID"/>
			</TableParameters>
			<JoinTables>
				<JoinTable id="284" tableName="ASSIGNMENT_SUBMISSION" posLeft="10" posTop="10" posWidth="198" posHeight="265"/>
			</JoinTables>
			<JoinLinks/>
			<Fields/>
			<SPParameters/>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="CountAssignmentsPending.aspx" forShow="True" url="CountAssignmentsPending.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="CountAssignmentsPending.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="CountAssignmentsPendingDataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
