<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="getStudentQuickContactDetails">
	<Components>
		<Grid id="2" secured="False" sourceType="Procedure" returnValueType="Number" defaultPageSize="10" connection="connDECVPRODSQL2005" VQB_ActiveResultSet="0" activeCollection="SPParameters" parameterTypeListName="ParameterTypeList" resultSetType="resultset" dataSource="sps_StudentQuickContactLookup;1" name="sps_StudentQuickContactLo" pageSizeLimit="100" wizardCaption="List of Sps Student Quick Contact Lookup;1 " wizardAllowInsert="False" activeResultSet="0" PathID="getStudentQuickContactDetailssps_StudentQuickContactLo">
			<Components>
				<Label id="28" fieldSourceType="DBColumn" dataType="Float" html="False" name="student_id" fieldSource="student_id">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="33" fieldSourceType="DBColumn" dataType="Text" html="False" name="StudentName1" fieldSource="StudentName">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters/>
			<JoinTables/>
			<JoinLinks/>
			<Fields/>
			<SPParameters>
				<SPParameter id="30" parameterName="@RETURN_VALUE" parameterSource="RETURN_VALUE" parameterType="URL" direction="ReturnValue" dataType="Int" dataSize="0" scale="0" precision="10"/>
				<SPParameter id="31" parameterName="@term" parameterSource="term" parameterType="URL" direction="Input" dataType="VarChar" dataSize="20" scale="0" precision="10" designDefaultValue="48"/>
				<SPParameter id="32" parameterName="@staffid" parameterSource="staffid" parameterType="URL" direction="Input" dataType="VarChar" dataSize="10" scale="0" precision="10"/>
			</SPParameters>
			<SQLParameters/>
			<SecurityGroups/>
			<Attributes/>
			<Features/>
			<PKFields/>
		</Grid>
	</Components>
	<CodeFiles>
		<CodeFile id="3" language="VB" name="getStudentQuickContactDetails.aspx" forShow="True" url="getStudentQuickContactDetails.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="getStudentQuickContactDetails.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="getStudentQuickContactDetailsDataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
