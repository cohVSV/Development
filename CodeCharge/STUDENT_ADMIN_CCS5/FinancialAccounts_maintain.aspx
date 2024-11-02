<!--ASPX page @1-C172A3C8-->
    <%@ Page language="vb" CodeFile="FinancialAccounts_maintain.aspx.vb" AutoEventWireup="false" Inherits="DECV_PROD2007.FinancialAccounts_maintain.FinancialAccounts_maintainPage"  ResponseEncoding ="windows-1252"%>
	
	<%@ Import namespace="DECV_PROD2007.FinancialAccounts_maintain" %>
    <%@ Import namespace="DECV_PROD2007.Configuration" %>
    <%@ Import namespace="DECV_PROD2007.Data" %>
    
    <%@Register TagPrefix="DECV_PROD2007" TagName="Header" Src="Header.ascx"%>
    <%@Register TagPrefix="DECV_PROD2007" TagName="Menu_Student_maintain" Src="Menu_Student_maintain.ascx"%>
    <%@Register TagPrefix="CC" Namespace="DECV_PROD2007.Controls" %>
<html>
<head>
<meta name="GENERATOR" content="CodeCharge Studio 3.2.0.4"><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

<title>Financial Accounts maintain</title>



</head>
<body>
<form runat="server">


<script language="JavaScript" type="text/javascript">
//Begin CCS script
//Include Common JSFunctions @1-6208A745
</script>
<script language="JavaScript" type="text/javascript" charset="windows-1252" src='ClientI18N.aspx?file=Functions.js&locale=<%=Resources.strings.CCS_LocaleID%>'></script>
<script language="JavaScript" type="text/javascript">
//End Include Common JSFunctions

//Include User Scripts @1-58B55CB0
</script>
<script language="JavaScript" src="js/pt/prototype.js" type="text/javascript" charset="windows-1252"></script>
<script language="JavaScript" type="text/javascript">
//End Include User Scripts

//page_OnLoad @1-D0F4E1D3
function page_OnLoad()
{
    var result;
//End page_OnLoad

//Set Focus @43-9AD6E82B
    if (theForm.txnAMOUNT) theForm.txnAMOUNT.focus();
//End Set Focus

//Close page_OnLoad @1-BC33A33A
    return result;
}
//End Close page_OnLoad

//PTAutoFill2 Loading @57-F9B8A73F
function txnTXN_CODEPTAutoFill2_start(sender) {
    if (!sender || sender === window) return;
    new Ajax.Request("services/FinancialAccounts_maintain_txn_TXN_CODE_PTAutoFill1.aspx?keyword=" + encodeURIComponent(sender.value).replace(/'/g, "%27"), {
        method: "get",
        requestHeaders: ['If-Modified-Since', new Date(0)],
        onSuccess: function(transport) {
            var valuesRow = eval(transport.responseText)[0];
            if (typeof(valuesRow) != "undefined") {
                $("txnLabel_CR_DR_FLAG").innerHTML = valuesRow["CR_DR_FLAG"];
                $("txnCR_DR_FLAG").value = valuesRow["CR_DR_FLAG"];
            } else {
                $("txnLabel_CR_DR_FLAG").innerHTML = "";
                $("txnCR_DR_FLAG").value = "";
            }
        }, 
        onFailure: function(transport) {
            alert(transport.responseText);
        }
    });
}
//End PTAutoFill2 Loading

//bind_events @1-FB98D9C9
function bind_events() {
    addEventHandler("txnTXN_CODE", "change", txnTXN_CODEPTAutoFill2_start);
    page_OnLoad();
    forms_onload();
}
//End bind_events

//Assign bind_events @1-19F7B649window.onload = bind_events;
//End Assign bind_events

//End CCS script
</script>
<link rel="stylesheet" type="text/css" href="Styles/Blueprint/Style.css">
<DECV_PROD2007:Header id="Header" runat="server"/> <DECV_PROD2007:Menu_Student_maintain id="Menu_Student_maintain" runat="server"/> 
<h1>Financial Accounts - DECV</h1>
<a href="OnlineHelp/Auto Transactions/Auto Transactions.html" title="show help for this page" target="_blank"><img border="0" alt="Online Help" src="images/help.png" align="right"></a> 
<p>
<div align="center">
  <strong>Student ID: </strong><asp:Literal id="lblStudentID" runat="server"/>&nbsp;&nbsp;&nbsp;&nbsp;<strong>Enrolment Year: </strong><asp:Literal id="lblEnrolmentYear" runat="server"/> 
</div>
<br>

<asp:repeater id="Grid_TransactionsRepeater" OnItemCommand="Grid_TransactionsItemCommand" OnItemDataBound="Grid_TransactionsItemDataBound" runat="server">
  <HeaderTemplate>
	
<table cellspacing="0" cellpadding="0" width="70%" align="center" border="0">
  <tr>
    <td valign="top">
      <table class="Grid" cellspacing="0" cellpadding="0">
        <tr class="Caption">
          <th>
          <p align="center">Transaction Date</p>
          </th>
 
          <th>
          <p align="center">Transaction Code</p>
          </th>
 
          <th>
          <p align="center">Amount</p>
          </th>
 
          <th>
          <p align="center">DR/CR</p>
          </th>
 
          <th>
          <p align="center">Comments</p>
          </th>
 
          <th>
          <p align="center">Receipt #</p>
          </th>
        </tr>
 
        
  </HeaderTemplate>
  <ItemTemplate>
        <tr  <CC:AttributeBinder runat="server" Name="rowStyle" ContainerId="Grid_TransactionsRepeater"/>>
          <td>
            <div align="center">
<a id="Grid_Transactionslink_TRANS_DATE" href="" title="edit Comment / Receipt #" runat="server"  ><%#(CType(Container.DataItem,Grid_TransactionsItem)).link_TRANS_DATE.GetFormattedValue()%></a> 
            </div>
          </td> 
          <td style="TEXT-ALIGN: right">
  <input id="Grid_TransactionsTXN_ID"  value='<%# (CType(Container.DataItem,Grid_TransactionsItem)).TXN_ID.GetFormattedValue() %>' type="hidden" size="8"  runat="server"/>
  <asp:Literal id="Grid_TransactionsTRANS_CODE" Text='<%# Server.HtmlEncode((CType(Container.DataItem,Grid_TransactionsItem)).TRANS_CODE.GetFormattedValue()).Replace(vbCr,"").Replace(vbLf,"<br>") %>' runat="server"/> </td> 
          <td style="TEXT-ALIGN: right"><asp:Literal id="Grid_TransactionsAMOUNT" Text='<%# Server.HtmlEncode((CType(Container.DataItem,Grid_TransactionsItem)).AMOUNT.GetFormattedValue()).Replace(vbCr,"").Replace(vbLf,"<br>") %>' runat="server"/>&nbsp; </td> 
          <td>
            <div align="center">
              <asp:Literal id="Grid_TransactionsCR_DR_FLAG" Text='<%# Server.HtmlEncode((CType(Container.DataItem,Grid_TransactionsItem)).CR_DR_FLAG.GetFormattedValue()).Replace(vbCr,"").Replace(vbLf,"<br>") %>' runat="server"/> 
            </div>
          </td> 
          <td><asp:Literal id="Grid_TransactionsCOMMENTS" Text='<%# Server.HtmlEncode((CType(Container.DataItem,Grid_TransactionsItem)).COMMENTS.GetFormattedValue()).Replace(vbCr,"").Replace(vbLf,"<br>") %>' runat="server"/>&nbsp;</td> 
          <td><asp:Literal id="Grid_TransactionsRECEIPT" Text='<%# Server.HtmlEncode((CType(Container.DataItem,Grid_TransactionsItem)).RECEIPT.GetFormattedValue()).Replace(vbCr,"").Replace(vbLf,"<br>") %>' runat="server"/>&nbsp;</td>
        </tr>
 
	<asp:PlaceHolder id="IterationContainer" runat="server"/>
  </ItemTemplate>
  <FooterTemplate>
	
        <tr class="Bottom">
          <td colspan="2" align="right">
            <p align="right"><strong>Account Balance:</strong></p>
          </td> 
          <td align="right">$<asp:Literal id="Grid_TransactionslblAcctBalance" runat="server"/>&nbsp;&nbsp;</td> 
          <td>
            <div align="center">
              <asp:Literal id="Grid_TransactionslblCRDRFlag" runat="server"/> 
            </div>
          </td> 
          <td colspan="2" align="left">&nbsp;</td>
        </tr>
        
  <asp:PlaceHolder id="NoRecords" visible="False" runat="server">
    
        <tr class="NoRecords">
          <td colspan="6">No Transactions found for this Student + Year</td>
        </tr>
        
  </asp:PlaceHolder>

      </table>
    </td>
  </tr>
</table>

  </FooterTemplate>
</asp:repeater>
<br>

  <span id="txnHolder" runat="server">
    


  
  <input id="txnSTUDENT_ID" type="hidden"  runat="server"/>
  
  <input id="txnENROLMENT_YEAR" type="hidden"  runat="server"/>
  
  <input id="txnLAST_ALTERED_BY" type="hidden"  runat="server"/>
  
  <input id="txnCAMPUS_CODE" type="hidden"  runat="server"/>
  
  <input id="txnLAST_ALTERED_DATE" type="hidden"  runat="server"/>
  
  <div align="center">
    <table cellspacing="0" cellpadding="0" width="70%" align="center" border="0">
      <tr>
        <td valign="top">
          <table class="Header" cellspacing="0" cellpadding="0" border="0">
            <tr>
              <td class="HeaderLeft"><img border="0" src="Styles/Blueprint/Images/Spacer.gif"></td> 
              <th>Add Transaction</th>
 
              <td class="HeaderRight"><img border="0" src="Styles/Blueprint/Images/Spacer.gif"></td>
            </tr>
          </table>
 
          <table class="Record" cellspacing="0" cellpadding="0">
            
  <asp:PlaceHolder id="txnError" visible="False" runat="server">
  
            <tr class="Error">
              <td colspan="6"><asp:Label ID="txnErrorLabel" runat="server"/></td>
            </tr>
            
  </asp:PlaceHolder>
  
            <tr class="Controls">
              <th>
              <p align="center">&nbsp;<strong>Transaction<br>
              </strong><strong>Date</strong></p>
              </th>
 
              <td><strong>&nbsp;Transaction Code</strong></td> 
              <td>
                <p align="center"><strong>&nbsp;Amount</strong></p>
              </td> 
              <td>
                <p align="center"><strong>&nbsp;DR/CR</strong></p>
              </td> 
              <td>
                <p align="center"><strong>Comments&nbsp;</strong></p>
              </td> 
              <td>
                <p align="center"><strong>Receipt</strong>&nbsp;</p>
              </td>
            </tr>
 
            <tr class="Controls">
              <th>
              <p align="center"><asp:TextBox id="txnTXN_DATE" tabindex="1" maxlength="12" Columns="10"	runat="server"/></p>
              </th>
 
              <td>&nbsp; 
                
                <select id="txnTXN_CODE" tabindex="3"  runat="server"></select>
 </td> 
              <td align="center">&nbsp;<asp:TextBox id="txnAMOUNT" tabindex="5" style="TEXT-ALIGN: right" maxlength="15" Columns="10"	runat="server"/></td> 
              <td align="center">
                <div id="txnLabel_CR_DR_FLAG" name="txnLabel_CR_DR_FLAG">
                </div>
                <select id="txnCR_DR_FLAG" tabindex="7"  runat="server"></select>
 </td> 
              <td>&nbsp; 
<asp:TextBox id="txnCOMMENTS" tabindex="9" Columns="15" TextMode="MultiLine"	runat="server"/>
</td> 
              <td>&nbsp;<asp:TextBox id="txnRECEIPT_NO" tabindex="11" maxlength="10" Columns="10"	runat="server"/></td>
            </tr>
 
            <tr class="Bottom">
              <td colspan="6" align="right">
                <input id='txnButton_Insert' type="submit" tabindex="15" class="Button" style="PADDING-BOTTOM: 8px; PADDING-TOP: 8px; PADDING-LEFT: 8px; MARGIN: 5px; PADDING-RIGHT: 8px" value="Add" OnServerClick='txn_Insert' runat="server"/></td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </div>



  </span>
  
<p>&nbsp;</p>
<script type="text/javascript">
        jQuery.noConflict();
        jQuery(function(){
                jQuery("#txnTXN_CODE").change(function () {     
                        var txncode = jQuery("#txnTXN_CODE").val();
                    jQuery.ajax({url : "services/FinancialAccounts_maintain_txn_TXN_CODE_PTAutoFill1.aspx?keyword=" + encodeURI(txncode)
                    , method: "GET"
                    , headers: ['If-Modified-Since', new Date(0)]
                    , done: function(data) {
                        var valueRow = jQuery.parseJSON(data);
                        //ERA: 10-April-2010 - not simply filling label, now back using drop-down list and setting disabled unless certain codes
                        //$("txnLabel_CR_DR_FLAG").innerHTML = valuesRow["CR_DR_FLAG"]; // for debug
                        
                        if ((txncode=='R') || (txncode=='T') || (txncode == 'W') || (txncode == '')) {
                        // leave buttons unselected
                                jQuery("#txnCR_DR_FLAG").val("");
                                jQuery("#txnCR_DR_FLAG").enable();
                        } else {
                        // select the value and then disable
                                jQuery("#txnCR_DR_FLAG").val(valueRow[0]["CR_DR_FLAG"]);
                                                }
                
                                        }
                                        , fail: function(transport) {
                                                        alert(transport.responseText);
                                        }
                                });
                        });
                });

</script>

</form>
</body>
</html>

<!--End ASPX page-->

