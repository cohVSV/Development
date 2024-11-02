<%@ WebHandler Language="VB" Class="insertQuickFormComment" %>

Imports System
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient

Public Class insertQuickFormComment : Implements IHttpHandler
   
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
       
        Dim varDBConn As String = System.Configuration.ConfigurationManager.AppSettings("connDECVPRODSQL2005String").ToString
        Dim sb As New StringBuilder
        Dim retval As String = ""

        Dim intStudentId As Int32 = context.Request.QueryString("QuickEnterFormstudent_id")
        'Dim intWardStaffID As Int32 = cellID.Split("_")(1)
        Dim strCommentText As String = context.Request.QueryString("QuickEnterFormcomment_text")
        Dim strCommentType As String = context.Request.QueryString("QuickEnterFormcomment_type")
        Dim strLastAlteredBy As String = context.Request.QueryString("QuickEnterFormlast_altered_by")

        'context.Response.ContentType = "application/json"
        'context.Response.ContentEncoding = Encoding.UTF8

        Try

            Using cn As New SqlConnection(varDBConn)
                cn.Open()
                Dim sqlcmd As New SqlCommand("INSERT INTO [dbo].[STUDENT_COMMENT] ([COMMENT_ID],[STUDENT_ID],[COMMENT],[COMMENT_TYPE],[LAST_ALTERED_BY],[LAST_ALTERED_DATE], [ACTIVE_STATUS]) " & _
                                             "VALUES ((select max(Comment_id)+1 from STUDENT_COMMENT), @studentid, @comment, @commenttype, @lastalteredby, getdate(),'A')", cn)

                sqlcmd.Parameters.Add("@studentid", SqlDbType.Int, 4).Value = intStudentId
                sqlcmd.Parameters.Add("@comment", SqlDbType.NVarChar, 400).Value = strCommentText
                sqlcmd.Parameters.Add("@commenttype", SqlDbType.NVarChar, 20).Value = strCommentType
                sqlcmd.Parameters.Add("@lastalteredby", SqlDbType.NVarChar, 20).Value = strLastAlteredBy
                sqlcmd.ExecuteNonQuery()
            End Using

            context.Response.ContentType = "text/plain"
            context.Response.Write("Done!")

        Catch ex As Exception

            '            BLL.ErrorEncountered(context.User.Identity.Name, rT, ex)
            '            'return json packet
            '            sb.Append("{")
            '            sb.AppendFormat("'{0}' : '{1}',", "result", "fail")
            '            sb.AppendFormat("'{0}' : '{1}'", "msg", "System encountered an error. Please try again or contact help desk.")
            '            sb.Append("}")
            '            context.Response.Write(sb.ToString)

            context.Response.ContentType = "text/plain"
            sb.Append("FAILED! ")
            sb.Append(ex.Message.ToString())
            context.Response.Write(sb.ToString())

        End Try
        
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable

        Get
            Return False
        End Get
    End Property

End Class