<%
'BindEvents Method @1-51D962D1
Sub BindEvents(Level)
    If Level="Page" Then
    Else
        Set shop_cart.quantity.CCSEvents("OnValidate") = GetRef("shop_cart_quantity_OnValidate")
        Set shop_cart.CCSEvents("BeforeShowRow") = GetRef("shop_cart_BeforeShowRow")
        Set shop_cart.CCSEvents("BeforeShow") = GetRef("shop_cart_BeforeShow")
        Set purchase.purchase.CCSEvents("OnClick") = GetRef("purchase_purchase_OnClick")
    End If
End Sub
'End BindEvents Method

Function purchase_purchase_OnClick(Sender) 'purchase_purchase_OnClick @100-8D9D169E

'Custom Code @101-73254650
	Dim order_date
	Dim last_order_id
	Dim RecordSet
	Dim SQL
	Dim OrderTotal
	
	' Count Order Total
	SQL = "SELECT SUM(price*quantity) as total " _
	  & "FROM store_shopping_cart_items a, store_products b " _
	  & "WHERE a.product_id=b.product_id and " _
	  & "shopping_cart_id =" & DBInternetDB.ToSQL(Request.Cookies("shopping_cart_id"),ccsInteger)
	Set RecordSet = DBInternetDB.Execute(SQL)
	OrderTotal = CCGetValue(RecordSet, "total")
	
	' Create a new order
	SQL="INSERT INTO store_orders (order_date, order_status_id, total, user_id) VALUES (" _
	 & DBInternetDB.ToSQL(Now(),ccsDate) & ",1," _
	 & DBInternetDB.ToSQL(OrderTotal,ccsFloat) & "," _
	 & DBInternetDB.ToSQL(Session("UserID"),ccsInteger) & ")"
	DBInternetDB.Execute(SQL)
	
	'Get Order ID
	'This method compatible with all databases (unsafe when multiple users insert records at the same time)
	'Use your own method for your database.
	SQL = "SELECT MAX(order_id) FROM store_orders"
	Set RecordSet = DBInternetDB.Execute(SQL)
	last_order_id = CCGetValue(RecordSet, 0)
	
	'Move items from user's shopping cart into the order
	SQL = "SELECT a.product_id as product_id, a.quantity as quantity, price " _
	  & "FROM store_shopping_cart_items a, store_products b " _
	  & "WHERE a.product_id=b.product_id AND shopping_cart_id = " & DBInternetDB.ToSQL(Request.Cookies("shopping_cart_id"),ccsInteger)
	Set RecordSet = DBInternetDB.Execute(SQL)
	
	While NOT Recordset.EOF
	SQL = "INSERT INTO store_order_items (order_id, product_id, quantity, price ) " _
	    & "VALUES (" & DBInternetDB.ToSQL(last_order_id,ccsInteger) _
	    & "," & DBInternetDB.ToSQL(CCGetValue(RecordSet, "product_id"),ccsInteger) _
	    & "," & DBInternetDB.ToSQL(CCGetValue(RecordSet, "quantity"),ccsInteger) _
	    & "," & DBInternetDB.ToSQL(CCGetValue(RecordSet, "price"),ccsFloat) _
	    & ")"
	DBInternetDB.Execute(SQL)
	Recordset.MoveNext
	Wend
	
  'Delete items from user's shopping
  DBInternetDB.Execute("DELETE FROM store_shopping_cart_items WHERE shopping_cart_id = " & DBInternetDB.ToSQL(Request.Cookies("shopping_cart_id"),ccsInteger) )

'End Custom Code

End Function 'Close purchase_purchase_OnClick @100-54C34B28

Function shop_cart_quantity_OnValidate(Sender) 'shop_cart_quantity_OnValidate @65-FFCF295D

'Validate Minimum Value @102-AB4E8E5F
    If Not CStr(shop_cart.quantity.Value) = "" And CDbl(shop_cart.quantity.Value) < 1 Then _
        shop_cart.quantity.Errors.addError(CCSLocales.GetText("CCS_MinimumValue",Array("Quantity", "1")))
'End Validate Minimum Value

End Function 'Close shop_cart_quantity_OnValidate @65-54C34B28

Function shop_cart_BeforeShowRow(Sender) 'shop_cart_BeforeShowRow @62-7B903207

'Custom Code @69-73254650

  shop_cart.SubTotal.Value = shop_cart.Price.Value * shop_cart.Quantity.Value

'End Custom Code

End Function 'Close shop_cart_BeforeShowRow @62-54C34B28

Function shop_cart_BeforeShow(Sender) 'shop_cart_BeforeShow @62-2E17351E

'Custom Code @78-73254650
  If shop_cart.Recordset.EOF Then
     shop_cart.Visible = False 
     shop_total.Visible = False 
     purchase.Visible = False
  Else
	 cart_is_empty.Visible = False
  End If
'End Custom Code

End Function 'Close shop_cart_BeforeShow @62-54C34B28
%>