<!DOCTYPE html> <!--Doctype @1-218603E0-->

<!--ASPX page @1-557B720D-->
    <%@ Page language="vb" CodeFile="MasterPage.aspx.vb" AutoEventWireup="false" Inherits="DECV_PROD2007.Designs.Apricot.MasterPage.MasterPagePage" %>
	
	<%@ Import namespace="DECV_PROD2007.Designs.Apricot.MasterPage" %>
    <%@ Import namespace="DECV_PROD2007.Configuration" %>
    <%@ Import namespace="DECV_PROD2007.Data" %>
    
    <%@Register TagPrefix="CC" Namespace="DECV_PROD2007.Controls" %>
<html>
<head>
<meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width"><meta charset="utf-8">
    
    
    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    
<link rel="stylesheet" href="<CC:AttributeBinder runat='server' Name='pathToCurrentPage' ContainerId='pageAttribute'/>style.css" media="screen" type="text/css">
        
<link rel="stylesheet" href="<CC:AttributeBinder runat='server' Name='pathToCurrentPage' ContainerId='pageAttribute'/>jquery-ui.css" media="screen" type="text/css">
    <!--[if lte IE 7]><link rel="stylesheet" href="<CC:AttributeBinder runat='server' Name='pathToCurrentPage' ContainerId='pageAttribute'/>style.ie7.css" media="screen" /><![endif]-->
    
<link rel="stylesheet" href="<CC:AttributeBinder runat='server' Name='pathToCurrentPage' ContainerId='pageAttribute'/>style.responsive.css" media="all" type="text/css">

<link rel="shortcut icon" href="<CC:AttributeBinder runat='server' Name='pathToCurrentPage' ContainerId='pageAttribute'/>favicon.ico" type="image/x-icon">
    <script src='<%=CType(Page,CCPage).ControlAttributes.GetAttribute("pageAttribute","pathToCurrentPage") + "jquery.js"%>'></script>
    <script src='<%=CType(Page,CCPage).ControlAttributes.GetAttribute("pageAttribute","pathToCurrentPage") + "script.js"%>'></script>
    <script src='<%=CType(Page,CCPage).ControlAttributes.GetAttribute("pageAttribute","pathToCurrentPage") + "script.responsive.js"%>'></script>
        
<link rel="shortcut icon" href="<CC:AttributeBinder runat='server' Name='pathToCurrentPage' ContainerId='pageAttribute'/>favicon.ico" type="image/x-icon">
        
<script language="JavaScript" type="text/javascript">
//Begin CCS script
//End CCS script
</script>

<title></title>
</head>
<body>
<form runat="server">


<div id="main">
<nav class="nav">
    <div class="nav-inner">
    <ul class="hmenu"></ul> 
        </div>
    </nav>
<header class="header"><div class="widget"></div>
    <div class="shapes">
            </div>
<h1 class="headline" data-left="50%">
    <a href="#">Headline</a>
</h1>
<h2 class="slogan" data-left="50%">Slogan text</h2>

</header>
<div class="sheet clearfix">
            <div class="layout-wrapper">
                <div class="content-layout">
                    <div class="content-layout-row">
                        <div class="layout-cell content"><article class="post article"><div class="postcontent postcontent-0"></div></article></div>
                        <div class="layout-cell sidebar1"></div>
                    </div>
                </div>
            </div><footer class="footer"><p>Copyright &copy; 2013. All Rights Reserved.</p></div>
</footer>
    </div>
</div>

</form>
</body>
</html>

<!--End ASPX page-->

