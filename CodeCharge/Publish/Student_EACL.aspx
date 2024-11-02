<!--ASPX page @1-2055297D-->
    <%@ Page language="vb" CodeFile="Student_EACL.aspx.vb" AutoEventWireup="false" Inherits="DECV_PROD2007.Student_EACL.Student_EACLPage"  ResponseEncoding ="windows-1252"%>
	
	<%@ Import namespace="DECV_PROD2007.Student_EACL" %>
    <%@ Import namespace="DECV_PROD2007.Configuration" %>
    <%@ Import namespace="DECV_PROD2007.Data" %>
    
    <%@Register TagPrefix="DECV_PROD2007" TagName="Menu_Student_maintain" Src="Menu_Student_maintain.ascx"%>
    <%@Register TagPrefix="CC" Namespace="DECV_PROD2007.Controls" %>
<html>
<head>
<meta name="GENERATOR" content="CodeCharge Studio 5.1.1.18992"><meta http-equiv="content-type" content="text/html; charset=windows-1252"><meta http-equiv="X-UA-Compatible" content="IE=edge">


<title>Student_EACL</title>


<link rel="stylesheet" type="text/css" href="Styles/Blueprint/Style.css">
<script language="JavaScript" type="text/javascript">
//Begin CCS script
//End CCS script
</script>

</head>
<body>
<form runat="server">


<p align="center">

	<asp:PlaceHolder id="Panel_MenuStudentMaintain" Visible="false" runat="server">
	<DECV_PROD2007:Menu_Student_maintain id="Menu_Student_maintain" runat="server"/>
	</asp:PlaceHolder>
	</p>
<p align="center"><a id="Link_Backtosummary" href="" class="Button" runat="server"  >Back to Summary</a></p>
<p style="FONT-SIZE: xx-large; COLOR: cornflowerblue">This page is maintained in Visual Studio</p>

</form>
</body>
</html>

<!--End ASPX page-->

