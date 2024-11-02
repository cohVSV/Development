<Page id="1" templateExtension="html" relativePath=".." fullRelativePath=".\services" secured="False" urlType="Relative" isIncluded="False" SSLAccess="False" isService="True" cachingEnabled="False" validateRequest="True" cachingDuration="1 minutes" needGeneration="0" PathID="getAddressDetailsForAutoFill">
	<Components>
		<Grid id="2" secured="False" sourceType="Table" returnValueType="Number" defaultPageSize="10" name="ADDRESS" connection="connDECVPRODSQL2005" dataSource="ADDRESS" pageSizeLimit="100" wizardCaption="List of ADDRESS " PathID="getAddressDetailsForAutoFillADDRESS">
			<Components>
				<Label id="151" fieldSourceType="DBColumn" dataType="Float" html="False" name="ADDRESS_ID" fieldSource="ADDRESS_ID">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="152" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDRESSEE" fieldSource="ADDRESSEE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="153" fieldSourceType="DBColumn" dataType="Text" html="False" name="AGENT" fieldSource="AGENT">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="154" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR1" fieldSource="ADDR1">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="155" fieldSourceType="DBColumn" dataType="Text" html="False" name="ADDR2" fieldSource="ADDR2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="156" fieldSourceType="DBColumn" dataType="Text" html="False" name="SUBURB_TOWN" fieldSource="SUBURB_TOWN">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="157" fieldSourceType="DBColumn" dataType="Text" html="False" name="POSTCODE" fieldSource="POSTCODE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="158" fieldSourceType="DBColumn" dataType="Text" html="False" name="STATE" fieldSource="STATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="159" fieldSourceType="DBColumn" dataType="Text" html="False" name="COUNTRY" fieldSource="COUNTRY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="160" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_A" fieldSource="PHONE_A">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="161" fieldSourceType="DBColumn" dataType="Text" html="False" name="PHONE_B" fieldSource="PHONE_B">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="162" fieldSourceType="DBColumn" dataType="Text" html="False" name="FAX" fieldSource="FAX">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="163" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS" fieldSource="EMAIL_ADDRESS">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="164" fieldSourceType="DBColumn" dataType="Text" html="False" name="LAST_ALTERED_BY" fieldSource="LAST_ALTERED_BY">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="165" fieldSourceType="DBColumn" dataType="Date" html="False" name="LAST_ALTERED_DATE" fieldSource="LAST_ALTERED_DATE">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
				<Label id="166" fieldSourceType="DBColumn" dataType="Text" html="False" name="EMAIL_ADDRESS2" fieldSource="EMAIL_ADDRESS2">
					<Components/>
					<Events/>
					<Attributes/>
					<Features/>
				</Label>
			</Components>
			<Events/>
			<TableParameters>
				<TableParameter id="150" conditionType="Parameter" useIsNull="False" field="ADDRESS_ID" dataType="Float" logicOperator="And" searchConditionType="Equal" parameterType="URL" parameterSource="keyword"/>
			</TableParameters>
			<JoinTables/>
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
		<CodeFile id="3" language="VB" name="getAddressDetailsForAutoFill.aspx" forShow="True" url="getAddressDetailsForAutoFill.aspx" comment="&lt;!--" commentEnd="--&gt;" codePage="windows-1252"/>
		<CodeFile id="1" language="VB" name="getAddressDetailsForAutoFill.aspx.vb" forShow="False" comment="'" codePage="windows-1252"/>
		<CodeFile id="2" language="VB" name="getAddressDetailsForAutoFillDataProvider.vb" path="..\App_Code\.\services" forShow="False" comment="'" codePage="windows-1252"/>
	</CodeFiles>
	<SecurityGroups/>
	<CachingParameters/>
	<Attributes/>
	<Features/>
	<Events/>
</Page>
