'Setting Class @0-EA05FA72
Imports System
Imports System.Data
Imports System.Globalization
Imports System.Collections.Specialized
Imports DECV_PROD2007.Data
Namespace DECV_PROD2007.Configuration
Public NotInheritable Class Settings
    Private Shared m_serverUrl As String = System.Configuration.ConfigurationManager.AppSettings("ServerUrl")
    Private Shared m_securedUrl As String = System.Configuration.ConfigurationManager.AppSettings("SecuredUrl")
    Private Shared m_cultureId As String = System.Configuration.ConfigurationManager.AppSettings("CultureId")
    Private Shared m_language As String = System.Configuration.ConfigurationManager.AppSettings("SiteLanguage")
    Private Shared m_AccesDeniedUrl As String = ServerURL +System.Configuration.ConfigurationManager.AppSettings("AccessDeniedUrl")
    Private Shared m_DateFormat As String = System.Configuration.ConfigurationManager.AppSettings("DefaultDateFormat")
    Private Shared m_BoolFormat As String = System.Configuration.ConfigurationManager.AppSettings("DefaultBooleanFormat")

    Private Sub New()
    End Sub

    Public Shared Property CultureId As String
        Get
            If (m_cultureId Is Nothing) Or m_cultureId="" Then
            Return CultureInfo.CurrentCulture.Name
            Else
            Return m_cultureId
            End If
        End Get
        Set
            m_cultureId = value
        End Set
    End Property

    Public Shared Property AccessDeniedUrl As String
        Get
            Return m_AccesDeniedUrl
        End Get
        Set
            m_AccesDeniedUrl = value
        End Set
    End Property

    Public Shared Property SiteLanguage As String
        Get
            Return m_language
        End Get
        Set
            m_language = value
        End Set
    End Property

    Public Shared Property DateFormat As String
        Get
            Return m_DateFormat
        End Get
        Set
            m_DateFormat = value
        End Set
    End Property

    Public Shared Property BoolFormat As String
        Get
            Return m_BoolFormat
        End Get
        Set
            m_BoolFormat = value
        End Set
    End Property

    Public Shared Property ServerURL As String
        Get
            Return m_serverUrl
        End Get
        Set
            m_serverUrl = value
        End Set
    End Property

    Public Shared Property SecuredURL As String
        Get
            Return m_securedUrl
        End Get
        Set
            m_securedUrl = value
        End Set
    End Property

    Public Shared Function GetConnection(name As String) As DataAccessObject
        Select Case name
            Case "Connection1"
                Return Connection1DataAccessObject
        End Select 
        Return Nothing
    End Function

    Public Shared ReadOnly Property Connection1Connection As ConnectionString
        Get
            Dim cs As ConnectionString = New ConnectionString()
            cs.Connection = System.Configuration.ConfigurationManager.AppSettings("Connection1String")
            cs.Server = System.Configuration.ConfigurationManager.AppSettings("Connection1Server")
            cs.Optimized = Boolean.Parse(System.Configuration.ConfigurationManager.AppSettings("Connection1Optimized"))
            cs.DateFormat = System.Configuration.ConfigurationManager.AppSettings("Connection1DateFormat")
            cs.ConnectionCommands.Add(CType(System.Configuration.ConfigurationSettings.GetConfig("connectionCommands/_Connection1Commands"),NameValueCollection))
            cs.BoolFormat = System.Configuration.ConfigurationManager.AppSettings("Connection1BoolFormat")
            cs.DateRightDelim = System.Configuration.ConfigurationManager.AppSettings("Connection1DateRightDelimeter")
            cs.DateLeftDelim = System.Configuration.ConfigurationManager.AppSettings("Connection1DateLeftDelimeter")
            cs.TopRecordsPlace = CType( [Enum].Parse( GetType(TopRecordsPlace), System.Configuration.ConfigurationManager.AppSettings("Connection1TopRecordsPlace")),TopRecordsPlace)
            cs.TopRecordsClause=System.Configuration.ConfigurationManager.AppSettings("Connection1TopRecordsClause")
            Select Case System.Configuration.ConfigurationManager.AppSettings("Connection1Type").ToUpper()
            Case "OLEDB"
                cs.Type = ConnectionStringType._OleDb
            Case "ODBC"
                cs.Type = ConnectionStringType._Odbc
            Case "ORACLE"
                cs.Type = ConnectionStringType._Oracle
#If ODP_INSTALLED = True Then
        
            Case "ODP"
                cs.Type = ConnectionStringType._ODP
#End If
#if DB2_INSTALLED
        
            Case "DB2"
                cs.Type = ConnectionStringType._DB2
#endif
        
            Case "SQL"
                cs.Type = ConnectionStringType._Sql
            End Select
            Return cs
        End Get
    End Property

    Public Shared ReadOnly Property Connection1DataAccessObject As DataAccessObject
        Get
            Dim Connection As ConnectionString = Connection1Connection
            Select Case Connection.Type
            Case ConnectionStringType._OleDb
                Return New OleDbDao(Connection)
            Case ConnectionStringType._Odbc:
                Return New OdbcDao(Connection)
            Case ConnectionStringType._Oracle:
                Return New OracleDao(Connection)
#if ODP_INSTALLED
        
            Case ConnectionStringType._ODP:
                Return New ODPDao(Connection)
#endif
#if DB2_INSTALLED
        
            Case ConnectionStringType._DB2:
                Return New DB2Dao(Connection)
#endif
        
            Case ConnectionStringType._Sql
                Return New SqlDao(Connection)
            End Select
            Return Nothing
        End Get
    End Property

End Class
End Namespace
'End Setting Class

