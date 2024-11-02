'Using Statements @1-82FB19C3
Imports System
Imports System.Collections
Imports System.Collections.Specialized
Imports System.ComponentModel
Imports System.Data
Imports System.Drawing
Imports System.Diagnostics
Imports System.Web
Imports System.IO
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.HtmlControls
Imports System.Web.Security
Imports System.Text.RegularExpressions
Imports System.Globalization
Imports DECV_PROD2007
Imports DECV_PROD2007.Data
Imports DECV_PROD2007.Security
Imports DECV_PROD2007.Configuration
Imports DECV_PROD2007.Controls
'End Using Statements

Imports System.Data.SqlClient



Namespace DECV_PROD2007.AssignmentSubmissionList 'Namespace @1-3B38056F

'Forms Definition @1-2B81BB9F
Public Class [AssignmentSubmissionListPage]
Inherits CCPage
'End Forms Definition

'Forms Objects @1-A6561AE1
    Protected AssignmentSubmissionListContentMeta As String
'End Forms Objects

'Page_Load Event @1-A2D2CF1E
Protected Overrides Sub OnLoad(ByVal e As System.EventArgs)
'End Page_Load Event


'Page_Load Event BeforeIsPostBack @1-48927019
    Dim item As PageItem = PageItem.CreateFromHttpRequest()
    ControlAttributes.Add(Page, New CCSControlAttribute("pathToRoot", FieldType._Text, ""), AttributeOption.Multiple)
    If Not IsPostBack Then
            Dim PageData As PageDataProvider = New PageDataProvider()
            item.Link_BacktosummaryHref = "StudentSummary.aspx"
            item.Link_BacktoPastoralListHref = "PastoralTeacher_StudentList.aspx"
            item.link_MenuHref = "Menu.aspx"
            item.Link_SearchRequestHref = "MaintainSearchRequest.aspx"
            item.link_AssignmentsHref = "AssignmentSubmissionList.aspx"
            item.Link10Href = "Send_SMS_maintain.aspx"
            item.Link6Href = "Student_Future_Intentions.aspx"
            item.Link5Href = "Student_Comments_maintain.aspx"
            PageData.FillItem(item)
            Link_Backtosummary.InnerText += item.Link_Backtosummary.GetFormattedValue().Replace(vbCrLf,"")
            Link_Backtosummary.HRef = item.Link_BacktosummaryHref+item.Link_BacktosummaryHrefParameters.ToString("GET","", ViewState)
            Link_Backtosummary.DataBind()
            Link_BacktoPastoralList.InnerText += item.Link_BacktoPastoralList.GetFormattedValue().Replace(vbCrLf,"")
            Link_BacktoPastoralList.HRef = item.Link_BacktoPastoralListHref+item.Link_BacktoPastoralListHrefParameters.ToString("None","", ViewState)
            Link_BacktoPastoralList.DataBind()
            link_Menu.InnerText += item.link_Menu.GetFormattedValue().Replace(vbCrLf,"")
            link_Menu.HRef = item.link_MenuHref+item.link_MenuHrefParameters.ToString("None","", ViewState)
            link_Menu.DataBind()
            Link_SearchRequest.InnerText += item.Link_SearchRequest.GetFormattedValue().Replace(vbCrLf,"")
            Link_SearchRequest.HRef = item.Link_SearchRequestHref+item.Link_SearchRequestHrefParameters.ToString("GET","", ViewState)
            Link_SearchRequest.DataBind()
            link_Assignments.InnerText += item.link_Assignments.GetFormattedValue().Replace(vbCrLf,"")
            link_Assignments.HRef = item.link_AssignmentsHref+item.link_AssignmentsHrefParameters.ToString("GET","", ViewState)
            link_Assignments.DataBind()
            Link10.InnerText += item.Link10.GetFormattedValue().Replace(vbCrLf,"")
            Link10.HRef = item.Link10Href+item.Link10HrefParameters.ToString("GET","", ViewState)
            Link10.DataBind()
            Link6.InnerText += item.Link6.GetFormattedValue().Replace(vbCrLf,"")
            Link6.HRef = item.Link6Href+item.Link6HrefParameters.ToString("GET","", ViewState)
            Link6.DataBind()
            Link5.InnerText += item.Link5.GetFormattedValue().Replace(vbCrLf,"")
            Link5.HRef = item.Link5Href+item.Link5HrefParameters.ToString("GET","", ViewState)
            Link5.DataBind()
    End If
'End Page_Load Event BeforeIsPostBack

'Panel Panel_MenuStudentMaintain Event BeforeShow. Action Custom Code @48-73254650
    ' -------------------------
    'ERA: if in the proper groups then display Maintain panel (eg: 8 doesn't see it but 9 does.
    '23-July-2015|EA| convert to global setting incase we need to add a new group in future
	dim strHigherGroups as String = System.Configuration.ConfigurationManager.AppSettings("strHigherSecurityGroups") 
    dim arrHigherGroups as String() = strHigherGroups.split(",")
	 'If (DBUtility.AuthorizeUser(New String(){"2","3","4","5","6","7","9","12"})) Then
	 If (DBUtility.AuthorizeUser(arrHigherGroups)) Then
            Panel_MenuStudentMaintain.visible = true
     End If
    ' -------------------------
'End Panel Panel_MenuStudentMaintain Event BeforeShow. Action Custom Code

     If (Not IsPostBack) Then
        InitialiseStudentDetails()
        InitialiseStudentSubjects()
        InitialiseInformationDisplay()
        InitialiseActivityViewDefaults()
     End If

     RefreshActivityListQuery()

    End Sub 'Page_Load Event tail @1-E31F8E2A

 Protected Overrides Sub OnUnload(ByVal e As System.EventArgs) 'Page_Unload Event @1-D998A98F

    End Sub 'Page_Unload Event tail @1-E31F8E2A

'OnInit Event @1-7CD4ED69
    #Region " Web Form Designer Generated Code "
    Protected Overrides Sub OnInit(ByVal e As EventArgs)
'End OnInit Event

'OnInit Event Body @1-D1F021BC
        ClientScript.GetPostBackEventReference(Me, "")
        Utility.SetThreadCulture()
        PageStyleName = Utility.GetPageStyle()
        AssignmentSubmissionListContentMeta = "text/html; charset=" +  CType(System.Threading.Thread.CurrentThread.CurrentCulture,CCSCultureInfo).Encoding
        If Application(Request.PhysicalPath) Is Nothing Then
            Application.Add(Request.PhysicalPath,Response.ContentEncoding.WebName)
        End If
        InitializeComponent()
        MyBase.OnInit(e)
        If Not(User.Identity.IsAuthenticated) Then
            Response.Redirect(Settings.AccessDeniedUrl & "?ret_link=" & Server.UrlEncode(Request("SCRIPT_NAME") & "?" & Request("QUERY_STRING")))
        End If
'End OnInit Event Body

'OnInit Event tail @1-BB95D25C
    PageStyleName = Server.UrlEncode(PageStyleName)
    End Sub
'End OnInit Event tail

'InitializeComponent Event @1-EA5E2628
    ' <summary>
    ' Required method for Designer support - do not modify
    ' the contents of this method with the code editor.
    ' </summary>
    Private Sub InitializeComponent()
    End Sub
    #End Region
'End InitializeComponent Event



      ' |RW|16/8/2020
      ' Begin of items developed in Visual Studio using standard ASP.NET Web Forms

      ' Initialise some data items that are necessary for displaying the student activity for the current user:
      ' - The list of all subject IDs that the student is/has been enrolled in during the selected enrolment year
      ' - The status of the signed in user: a learning advisor and/or teacher of the student?
      ' - If the user is a teacher, grab the list of subject IDs for which they are the student's teacher

      Private Sub InitialiseStudentDetails()
         Dim dataAccess = Settings.connDECVPRODSQL2005DataAccessObject
         Dim studentID = Request.QueryString("STUDENT_ID")
         Dim enrolmentYear = Request.QueryString("ENROLMENT_YEAR")

         If ((Not String.IsNullOrEmpty(studentID)) AndAlso (Not String.IsNullOrEmpty(enrolmentYear))) Then
            ' Use ADO.NET - it's safer than CodeCharge with its handling of input parameters, and more lightweight with the DataReader
            Using connection As New SqlConnection(Settings.connDECVPRODSQL2005Connection.Connection)
               connection.Open()

               Using command = connection.CreateCommand()
                  command.CommandType = CommandType.Text
                  command.CommandText = "select
                                          concat(rtrim(s.FIRST_NAME), ' ', rtrim(s.SURNAME)) as StudentName,
                                          se.PASTORAL_CARE_ID as LearningAdvisorID,
                                          dbo.ProperCase(concat(rtrim(la.FIRSTNAME), ' ', rtrim(la.SURNAME))) as LearningAdvisorName
                                        from
                                          dbo.STUDENT as s
                                          inner join dbo.STUDENT_ENROLMENT as se
                                             on (se.STUDENT_ID = s.STUDENT_ID)
                                          left join dbo.STAFF as la
                                             on (la.STAFF_ID = se.PASTORAL_CARE_ID)
                                        where
                                          (se.STUDENT_ID = @studentID)
                                          and (se.ENROLMENT_YEAR = @enrolmentYear);"

                  With command.Parameters
                     .AddWithValue("@studentID", Integer.Parse(studentID))
                     .AddWithValue("@enrolmentYear", Integer.Parse(enrolmentYear))
                  End With

                  Dim reader = command.ExecuteReader()
                  If reader.Read() Then
                     StudentName = reader("StudentName").ToString()
                     LearningAdvisorID = reader("LearningAdvisorID").ToString().Trim().ToUpper()
                     LearningAdvisorName = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(reader("LearningAdvisorName").ToString().ToLower())

                     litPageTitle.Text = $"Student {StudentName} - LMS Activity"
                  End If
               End Using
            End Using
         End If
      End Sub


      Private Sub InitialiseStudentSubjects()
         Dim dataAccess = Settings.connDECVPRODSQL2005DataAccessObject
         Dim studentID = Request.QueryString("STUDENT_ID")
         Dim enrolmentYear = Request.QueryString("ENROLMENT_YEAR")

         If ((Not String.IsNullOrEmpty(studentID)) AndAlso (Not String.IsNullOrEmpty(enrolmentYear))) Then
            ' Use ADO.NET - it's safer than CodeCharge with its handling of input parameters, and more lightweight with the DataReader
            Using connection As New SqlConnection(Settings.connDECVPRODSQL2005Connection.Connection)
               connection.Open()

               Using command = connection.CreateCommand()
                  command.CommandType = CommandType.Text
                  command.CommandText = "select
                                          ss.SUBJECT_ID as SubjectID,
                                          sbj.SUBJECT_TITLE as SubjectTitle,
                                          ss.STAFF_ID as SubjectTeacherID,
                                          cast(iif(ss.SUBJ_ENROL_STATUS < 'F', 'true', 'false') as bit) as IsSubjectActive
                                        from
                                          dbo.STUDENT_ENROLMENT as se
                                          inner join dbo.STUDENT_SUBJECT as ss
                                             on (
                                                   (ss.STUDENT_ID = se.STUDENT_ID)
                                                   and (ss.ENROLMENT_YEAR = se.ENROLMENT_YEAR)
                                                )
                                          inner join dbo.SUBJECT as sbj
                                             on (sbj.SUBJECT_ID = ss.SUBJECT_ID)
                                        where
                                          (se.STUDENT_ID = @studentID)
                                          and (se.ENROLMENT_YEAR = @enrolmentYear)
                                        order by
                                          SubjectTitle;"

                  With command.Parameters
                     .AddWithValue("@studentID", Integer.Parse(studentID))
                     .AddWithValue("@enrolmentYear", Integer.Parse(enrolmentYear))
                  End With

                  Dim allSubjectIDsSB = New StringBuilder(100)
                  Dim activeSubjectIDsSB = New StringBuilder(100)
                  Dim mySubjectIDsSB = New StringBuilder(100)
                  Dim myActiveSubjectIDsDB = New StringBuilder(100)
                  Dim mySubjectNamesSB = New StringBuilder(100)

                  Dim reader = command.ExecuteReader()
                  While (reader.Read())
                     Dim subjectID = reader("SubjectID").ToString()
                     Dim subjectTeacherID = reader("SubjectTeacherID").ToString().Trim().ToUpper()
                     Dim isSubjectActive = DirectCast(reader("IsSubjectActive"), Boolean)
                     Dim subjectTitle = reader("SubjectTitle").ToString().Trim()

                     allSubjectIDsSB.Append(subjectID)
                     allSubjectIDsSB.Append(","c)

                     If (isSubjectActive) Then
                        activeSubjectIDsSB.Append(subjectID)
                        activeSubjectIDsSB.Append(","c)
                     End If

                     ' Add each of the subjects explicitly to the subject filter dropdown
                     ddlSubjects.Items.Add(New ListItem(subjectTitle, subjectID))

                     If (subjectTeacherID.Equals(SignedInUserID)) Then
                        mySubjectIDsSB.Append(subjectID)
                        mySubjectIDsSB.Append(","c)
                        mySubjectNamesSB.Append(subjectTitle)
                        mySubjectNamesSB.Append(", ")

                        If (isSubjectActive) Then
                           myActiveSubjectIDsDB.Append(subjectID)
                           myActiveSubjectIDsDB.Append(","c)
                        End If
                     End If
                  End While

                  SubjectIDs = allSubjectIDsSB.ToString().TrimEnd({","c})
                  ActiveSubjectIDs = activeSubjectIDsSB.ToString().TrimEnd({","c})
                  MySubjectIDs = mySubjectIDsSB.ToString().TrimEnd({","c})
                  MySubjectNames = mySubjectNamesSB.ToString().TrimEnd({" "c, ","c})
                  MyActiveSubjectIDs = myActiveSubjectIDsDB.ToString().TrimEnd({","c})
               End Using
            End Using
         End If
      End Sub


      Private Sub InitialiseInformationDisplay()
         litStudentName.Text = StudentName
         litMySubjectNames.Text = MySubjectNames
         litLearningAdvisorName.Text = LearningAdvisorName
      End Sub


      Private Sub InitialiseActivityViewDefaults()
         If (LearningAdvisorID.Equals(SignedInUserID)) Then
            ' By default learning advisors of the student view the activity in reverse chronological order
            ddlFocusOn.SelectedValue = "CA"
         Else
            ' By default teachers of the student and others view the activity by subject
            ddlFocusOn.SelectedValue = "SA"

            ' In addition if the teacher is not the student's learning advisor, apply a default filter to the taught subjects only
            If (Not MySubjectIDs.Equals("")) Then
               ddlSubjects.SelectedValue = "MS"
            End If
         End If
      End Sub


      Private Sub RefreshActivityListQuery()
         sqldsStudentActivity.SelectCommand = GenerateStudentActivityListSQL()
      End Sub


      Private Function GenerateStudentActivityListSQL() As String
         Dim baseQuery = "select
                              vsa.ActivityId,
                              vsa.CourseIdNum as SubjectID,
                              cast(vsa.CourseName as varchar(100)) as Subject,
                              vsa.ActivityType,
                              cast(vsa.ActivityName as varchar(100)) as Activity,
                              vsa.LastSubmissionDate as LastReceived,
                              vsa.LastReturnDate as LastReturned,
                              vsa.StaffUsername as ReturnedBy,
                              vsa.Mark
                            from
                              dbo.vwStudentActivity as vsa
                            where
                              (vsa.StudentUsername = concat(cast(@studentID as varchar(10)), '@vsv.vic.edu.au'))"

         Dim activitySQL = baseQuery

         ' At the very least the activities need to be filtered to the student's subjects in the selected enrolment year
         Dim filterSubjectIDs = SubjectIDs

         If (ddlSubjects.SelectedValue.Equals("AS")) Then
            filterSubjectIDs = ActiveSubjectIDs
         ElseIf (ddlSubjects.SelectedValue.Equals("MS")) Then
            filterSubjectIDs = MySubjectIDs
         ElseIf (ddlSubjects.SelectedValue.Equals("MAS")) Then
            filterSubjectIDs = MyActiveSubjectIDs
         ElseIf (Not (ddlSubjects.SelectedValue.Equals("") OrElse (ddlSubjects.SelectedValue.Equals("-")))) Then
            ' A specific subject ID has been selected
            filterSubjectIDs = ddlSubjects.SelectedValue
         End If
         If (filterSubjectIDs.Equals("")) Then
            ' No subjects to filter to - nothing should be shown, and let the query optimiser know it
            activitySQL &= " and (0 = 1)"
         Else
            activitySQL &= $" and (vsa.CourseIdNum in ({filterSubjectIDs}))"
         End If

         If (Not ddlActivity.SelectedValue.Equals("")) Then
            activitySQL &= $" and (vsa.ActivityType = '{ddlActivity.SelectedValue}')"
         End If

         If (ddlSubmissions.SelectedValue.Equals("RO")) Then
            activitySQL &= " and (vsa.LastReturnDate is not null)"
         ElseIf (ddlSubmissions.SelectedValue.Equals("UR")) Then
            activitySQL &= " and (vsa.LastReturnDate is null)"
         End If

         If (ddlFocusOn.SelectedValue.Equals("CA")) Then
            activitySQL &= " order by vsa.LastSubmissionDate desc"
         Else
            activitySQL &= " order by vsa.CourseName, vsa.ActivityType, vsa.ActivityName"
         End If

         Return activitySQL
      End Function


      Function GetLMSActivityTypeDisplayName(activityType As String) As String
         ' TODO: Refine the labels to more accurate descriptions as needed
         Select Case activityType
            Case "assign"
               Return "Assignment"
            Case "attendance"
               Return "Attendance"
            Case "book"
               Return "Learning Activity"
            Case "chat"
               Return "Chat"
            Case "choice"
               Return "Poll"
            Case "data"
               Return "Data"
            Case "facetoface"
               Return "Face to Face"
            Case "feedback"
               Return "Feedback"
            Case "folder"
               Return "Folder"
            Case "forum"
               Return "Forum"
            Case "geogebra"
               Return "Geogebra"
            Case "glossary"
               Return "Glossary"
            Case "hvp"
               Return "Interactive Content"
            Case "label"
               Return "Label"
            Case "lesson"
               Return "Lesson"
            Case "lightboxgallery"
               Return "Lightbox Gallery"
            Case "login"
               Return "Login"
            Case "oublog"
               Return "Blog"
            Case "page"
               Return "Page"
            Case "questionnaire"
               Return "Questionnaire"
            Case "quiz"
               Return "Quiz"
            Case "resource"
               Return "Resource"
            Case "scorm"
               Return "SCORM Package"
            Case "subpage"
               Return "Subpage"
            Case "url"
               Return "URL"
            Case "wiki"
               Return "Wiki"
            Case "workshop"
               Return "Workshop"
            Case Else
               ' Tidy up the others as and if they're requested
               Return activityType
         End Select
      End Function


      Function GenerateLMSActivityHTML(activityID As String, activityType As String, activityName As String) As String
         If (activityType.Equals("login")) Then
            ' A hack to pretty up the login display labels. TODO: See if they can be cleaned up at the source
            activityName = CultureInfo.CurrentCulture.TextInfo.ToTitleCase(activityName)
         End If

         Dim activityTypeDisplayName = GetLMSActivityTypeDisplayName(activityType)
         Dim activityTypeIcon = GetLMSIconLink(activityType)
         Dim activityImage = $"<img class=""ActivityIcon"" title=""{activityTypeDisplayName}"" src=""{activityTypeIcon}"">"
         Dim activityHTML As String

         If (IsActivityLinkable(activityType)) Then
            Dim activityHref = $"https://lms.vsvonline.vic.edu.au/mod/{activityType}/view.php?id={activityID}"
            activityHTML = $"<a href=""{activityHref}"" target=""_blank"" title=""Open the LMS activity in a new browser window"">{activityImage}{activityName}</a>"
         Else
            activityHTML = $"{activityImage}{activityName}"
         End If

         Return activityHTML
      End Function


      Function IsActivityLinkable(activityType As String) As Boolean
         Select Case activityType
            Case "assign", "book", "choice", "facetoface", "feedback", "folder", "forum", "geogebra", "glossary", "hvp",
                 "lesson", "lightboxgallery", "page", "quiz", "resource", "scorm", "subpage", "url", "workshop"
               Return True
            Case Else
               Return False
         End Select
      End Function


      Function GetLMSIconLink(activityType As String) As String
         Dim baseImageFolder = ResolveClientUrl("~/images/LMS/")
         Dim imageFile As String = Nothing

         Select Case activityType
            Case "login"
               imageFile = "login.png"
            Case "oublog"
               imageFile = "oublog.png"
            Case "subpage"
               imageFile = "subpage.gif"
            Case Else
               imageFile = activityType & ".svg"
         End Select

         Return baseImageFolder & imageFile
      End Function


      Function GenerateLMSActivityLink(activityID As String, activityType As String) As String
         Return $"https://lms.vsvonline.vic.edu.au/mod/{activityType}/view.php?id={activityID}"
      End Function


      Function GetReturnedByID(staffUsername As String) As String
         Dim atCharIndex = staffUsername.IndexOf("@"c)
         If (atCharIndex <> -1) Then
            Return staffUsername.Substring(0, atCharIndex).ToUpper()
         Else
            Return staffUsername
         End If
      End Function


      Protected Sub ddlFocusOn_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlFocusOn.SelectedIndexChanged
         lvStudentActivity.DataBind()
      End Sub


      Protected Sub ddlSubjects_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlSubjects.SelectedIndexChanged
         lvStudentActivity.DataBind()
      End Sub


      Protected Sub ddlActivity_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlActivity.SelectedIndexChanged
         lvStudentActivity.DataBind()
      End Sub


      Protected Sub ddlSubmissions_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlSubmissions.SelectedIndexChanged
         lvStudentActivity.DataBind()
      End Sub


      Private ReadOnly Property SignedInUserID As String
         Get
            Return DBUtility.UserId.ToString().Trim().ToUpper()
         End Get
      End Property


      Private Property StudentName As String
         Get
            Return ViewState("StudentName")?.ToString()
         End Get
         Set(value As String)
            ViewState("StudentName") = value
         End Set
      End Property


      Private Property SubjectIDs As String
         Get
            Return If(ViewState("SubjectIDs")?.ToString(), "")
         End Get
         Set(value As String)
            ViewState("SubjectIDs") = value
         End Set
      End Property


      Private Property ActiveSubjectIDs As String
         Get
            Return If(ViewState("ActiveSubjectIDs")?.ToString(), "")
         End Get
         Set(value As String)
            ViewState("ActiveSubjectIDs") = value
         End Set
      End Property


      Private Property MySubjectIDs As String
         Get
            Return If(ViewState("MySubjectIDs")?.ToString(), "")
         End Get
         Set(value As String)
            ViewState("MySubjectIDs") = value
         End Set
      End Property


      Private Property MyActiveSubjectIDs As String
         Get
            Return If(ViewState("MyActiveSubjectIDs")?.ToString(), "")
         End Get
         Set(value As String)
            ViewState("MyActiveSubjectIDs") = value
         End Set
      End Property


      Private Property MySubjectNames As String
         Get
            Return If(ViewState("MySubjectNames")?.ToString(), "")
         End Get
         Set(value As String)
            ViewState("MySubjectNames") = value
         End Set
      End Property


      Private Property LearningAdvisorID As String
         Get
            Return If(ViewState("LearningAdvisorID")?.ToString(), "")
         End Get
         Set(value As String)
            ViewState("LearningAdvisorID") = value
         End Set
      End Property


      Private Property LearningAdvisorName As String
         Get
            Return If(ViewState("LearningAdvisorName")?.ToString(), "")
         End Get
         Set(value As String)
            ViewState("LearningAdvisorName") = value
         End Set
      End Property

'Page class tail @1-DD082417
End Class
End Namespace
'End Page class tail

