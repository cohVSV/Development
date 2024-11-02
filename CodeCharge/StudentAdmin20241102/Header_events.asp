<%

Function Header_Logout_BeforeShow(Sender) 'Header_Logout_BeforeShow @8-A5286D7D

'Hide-Show Component @21-B9793973
    Dim UserID_21_1 : UserID_21_1 = CCSConverter.VBSConvert(ccsText, Session("UserID"))
    Dim Param2_21_2 : Param2_21_2 = CCSConverter.VBSConvert(ccsText, "")
    If (IsEmpty(UserID_21_1) And IsEmpty(Param2_21_2)) Or  (Not IsEmpty(UserID_21_1) And Not IsEmpty(Param2_21_2) And UserID_21_1 = Param2_21_2) Then _
        Header.Logout.Visible = False
'End Hide-Show Component

End Function 'Close Header_Logout_BeforeShow @8-54C34B28

Function Header_AfterInitialize(Sender) 'Header_AfterInitialize @1-0D282328

'Custom Code @13-73254650
Dim SQL
	Dim RecordSet
	Dim Cart_ID
	Dim InternetDB
	
	'Create a new database connection object
	Set InternetDB = New clsDBInternetDB
	InternetDB.Open
	
	Cart_ID = 0
	'The validation of the value stored in a cookie
	If (len(Request.Cookies("shopping_cart_id")) > 0) Then
	  Cart_ID = CCDLookUp("COUNT(shopping_cart_id)","store_shopping_carts","shopping_cart_id="&InternetDB.ToSQL(Request.Cookies("shopping_cart_id"),ccsInteger), InternetDB)
	End If  
	
	If (Cart_ID = 0) Then
	  SQL = "INSERT INTO store_shopping_carts (date_add) VALUES (" & InternetDB.ToSQL(Now(),ccsDate) & ")"
	  InternetDB.Execute(SQL)
	
	  'Get shopping_cart_id 
	  'This method compatible with all databases (unsafe when multiple users insert records at the same time)
	  'Use your own method for your database.
	  SQL = "SELECT MAX(shopping_cart_id) FROM store_shopping_carts"
	  Set RecordSet = InternetDB.Execute(SQL)
	
	  Response.Cookies("shopping_cart_id").Expires = NOW() + 365
	  Response.Cookies("shopping_cart_id") = CCGetValue(RecordSet, 0)
	
	 'Close and destroy the database connection object
	  InternetDB.Close
	  Set InternetDB = Nothing
	
	End If
'End Custom Code

End Function 'Close Header_AfterInitialize @1-54C34B28

%>