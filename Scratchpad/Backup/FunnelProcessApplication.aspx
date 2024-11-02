<%@ Page Language="vb" CodeFile="FunnelProcessApplication.aspx.vb" Async="true" AsyncTimeout="6000" AutoEventWireup="false" Inherits="FunnelProcessApplicationPage" %>

<html lang="en-au">
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />

   <title>
      <asp:Literal runat="server" ID="ltPageTitle"></asp:Literal>
   </title>

   <link rel="stylesheet" type="text/css" href="Styles/Blueprint/Style.css">
   <link rel="stylesheet" type="text/css" href="js/css/cupertino/jquery-ui.min.css">

   <style type="text/css">
      .bold
      {
         font-weight: bold;
      }


      ul
      {
         margin-left: 0px;
         padding-left: 20px;
      }

         ul li:not(:last-child)
         {
            margin-bottom: 10px;
         }


      input[type=submit]
      {
         padding: 5px;
         padding-left: 15px;
         padding-right: 15px;
         min-width: 120px;
      }


      .ui-datepicker-trigger
      {
         margin-left: 8px;
         vertical-align: text-bottom;
      }


      .TableContainer
      {
         margin: 0 auto;
         margin-top: 60px;
         max-width: 1800px;
      }


      .TableContainer td, .TableContainer th
      {
         padding: 7px;
         padding-left: 14px;
      }


      .Header, .Grid
      {
         border-collapse: collapse;
         padding: 0px;
      }


      td.HeaderLeft
      {
         padding: 0px;
      }


      tr.Row:nth-child(odd) > td,
      option:nth-child(odd)
      {
         background-color: #ebf2f8;
      }


      tr.Row:not(.selectedItem):hover > td
      {
         background-color: lightgoldenrodyellow;
      }


      tr.Row.selectedItem > td
      {
         background-color: khaki;
      }


      tr.Row.ExistingStudentSelection > td.match
      {
         background-color: #bff7a7;
      }


      tr.Row.ExistingStudentSelection > td.matchWithPossibleDataError
      {
         background-color: #fbd4b4;
      }


      tr.Row.PreviewUpdate > td.modified
      {
         background-color: khaki;
      }


      tr.Row.PreviewUpdate > td.modifiedWithTruncation
      {
         background-color: #fbd4b4;
      }


      tr.Row.PreviewUpdate > td.invalidValue
      {
         background-color: #e5b8b7;
      }


      .successMessage
      {
         display: inline-block;
         background-color: #bff7a7;
         border: none;
         border-radius: 6px;
         padding: 8px;
         padding-left: 15px;
         padding-right: 15px;
      }


      .warningMessage
      {
         background-color: #fbd4b4;
         border: none;
         border-radius: 6px;
         padding: 8px;
         padding-left: 15px;
         padding-right: 15px;
      }


      .errorMessage
      {
         display: none;
         margin-top: 20px;
         background-color: #e5b8b7;
         border: none;
         border-radius: 6px;
         padding: 20px;
         white-space: pre-line;
      }
   </style>

</head>
<body>
   <form runat="server">

      <asp:ScriptManager runat="server" ID="smFunnelStudentImport">
      </asp:ScriptManager>

      <asp:UpdatePanel runat="server" ID="upFunnelStudentImport" UpdateMode="Conditional" style="margin-bottom: 100px;">
         <ContentTemplate>

            <div class="TableContainer" style="width: 950px;">

               <table class="Header" border="0">
                  <tr>
                     <td class="HeaderLeft">
                        <img src="Styles/Blueprint/Images/Spacer.gif">
                     </td>
                     <th>Import Applicant from Funnel to Virtual School Victoria Student Database
                     </th>
                     <th class="HeaderRight">
                        <img src="Styles/Blueprint/Images/Spacer.gif">
                     </th>
                  </tr>
               </table>
               <table class="Grid" style="table-layout: fixed;">
                  <colgroup>
                     <col style="width: 300px;" />
                     <col style="width: 650px;" />
                  </colgroup>
                  <tr class="Row">
                     <td>
                        <strong>Enrolment year for current applications</strong>
                     </td>
                     <td>
                        <%= CurrentEnrolmentYear %>
                        <div runat="server" id="divEnrolmentYearAlert" class="warningMessage" style="margin-top: 10px;" visible="false">
                        </div>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Applicant</strong>
                     </td>
                     <td>
                        <asp:HyperLink runat="server" ID="hlApplicantFunnelLink" Target="_blank"></asp:HyperLink>
                        <asp:Literal runat="server" ID="ltApplicantName"></asp:Literal>
                        <div runat="server" id="divApplicantAlert" class="warningMessage" style="margin-top: 10px;" visible="false">
                        </div>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Previous VSV Student ID</strong><br />
                        (as provided on the enrolment form)
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantPreviousVSVStudentID"></asp:Literal>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Enrolment form</strong>
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantEnrolmentForm"></asp:Literal>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Enrolment category</strong>
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantEnrolmentCategory"></asp:Literal>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Year level</strong>
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantYearLevel"></asp:Literal>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Home school</strong>
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantHomeSchool"></asp:Literal>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Shared enrolment</strong>
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantIsSharedEnrolment"></asp:Literal>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Funnel stage</strong>
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantFunnelStage"></asp:Literal>
                        <div runat="server" id="divApplicantFunnelStageAlert" class="warningMessage" style="margin-top: 10px;" visible="false">
                        </div>
                     </td>
                  </tr>
                  <tr class="Row">
                     <td>
                        <strong>Import status</strong>
                     </td>
                     <td>
                        <asp:Literal runat="server" ID="ltApplicantImportStatus"></asp:Literal>
                        <div runat="server" id="divApplicantImportStatusMessage" class="successMessage" visible="false">
                        </div>
                     </td>
                  </tr>

                  <tr class="Bottom">
                     <td colspan="2" style="margin-left: auto;">
                        <asp:Button runat="server" ID="btnStudentImportCancel" Text="Cancel Import" CausesValidation="false" />
                     </td>
                  </tr>

               </table>

               <div runat="server" id="divFunnelStudentImportError" class="errorMessage">
               </div>
            </div>

            <asp:MultiView runat="server" ID="mvFunnelSDBImport" ActiveViewIndex="0">
               <asp:View runat="server" ID="viewDefault">
               </asp:View>

               <asp:View runat="server" ID="viewExistingStudentSelection">

                  <div class="TableContainer ExistingStudentSelection">

                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Is the Applicant an Existing VSV Student?</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid">
                        <tr class="Controls">
                           <td colspan="14" style="padding-bottom: 15px;">
                              <p>
                                 <strong>The applicant's details match up with one or more existing students on the VSV student database.</strong>
                              </p>
                              <p>
                                 Please take a moment to compare the applicant's provided information here with those of the existing VSV students below, and make a selection:<br />
                              </p>
                           </td>
                        </tr>
                        <tr class="Caption">
                           <th></th>
                           <th>Student ID</th>
                           <th>First Name</th>
                           <th>Preferred Name</th>
                           <th>Middle Name</th>
                           <th>Surname</th>
                           <th>Date of Birth</th>
                           <th>Email</th>
                           <th>Mobile</th>
                           <th>Enrolment Category</th>
                           <th>Home School</th>
                           <th>Last Enrolled</th>
                           <th>Enrolment Date</th>
                           <th>Enrolment Status</th>
                        </tr>

                        <tr class="Row">
                           <td></td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantPreviousVSVNumber"></asp:Literal>
                           </td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantFirstName"></asp:Literal>
                           </td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantPreferredName"></asp:Literal>
                           </td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantMiddleName"></asp:Literal>
                           </td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantSurname"></asp:Literal>
                           </td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantDateOfBirth"></asp:Literal>
                           </td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantEmail"></asp:Literal>
                           </td>
                           <td>
                              <asp:Literal runat="server" ID="ltESApplicantMobile"></asp:Literal>
                           </td>
                           <td colspan="5"></td>
                        </tr>
                        <tr class="Controls">
                           <td colspan="14" style="padding-bottom: 15px;">
                              <p>
                                 Fields matching exactly are highlighted in green, close matches are orange.
                                       Close matches may also indicate switched first name and surname, or transposed day and month within the date of birth.<br />
                              </p>
                           </td>
                        </tr>

                        <asp:ListView runat="server" ID="lvExistingStudentSelection" ItemType="SDBStudentMatch">
                           <LayoutTemplate>
                              <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
                           </LayoutTemplate>
                           <ItemTemplate>
                              <tr class="Row ExistingStudentSelection">
                                 <td>
                                    <input type="radio" id="rbExistingStudentID_<%# Item.StudentID %>" name="rbgnExistingStudentID" value="<%# Item.StudentID %>"
                                       data-last-enrolment-year="<%# Item.LastEnrolmentYear %>" onclick="existingStudentSelectionChanged();" />
                                 </td>
                                 <td>
                                    <asp:HyperLink runat="server" ID="hlExistingStudentID" Text="<%# Item.StudentID %>" NavigateUrl="<%# Common.GenerateStudentSummaryPageLink(Item.StudentID.ToString(), Item.LastEnrolmentYear.ToString()) %>" Target="_blank"></asp:HyperLink>
                                 </td>
                                 <%# GenerateMatchingStudentElementHtml(Item.FirstName, Item.FirstNameMatchStrength) %>
                                 <%# GenerateMatchingStudentElementHtml(Item.PreferredName, Item.PreferredNameMatchStrength) %>
                                 <%# GenerateMatchingStudentElementHtml(Item.MiddleName, Item.MiddleNameMatchStrength) %>
                                 <%# GenerateMatchingStudentElementHtml(Item.Surname, Item.SurnameMatchStrength) %>
                                 <%# GenerateMatchingStudentElementHtml(Common.GetDateDisplay(Item.DateOfBirth), Item.DateOfBirthMatchStrength) %>
                                 <%# GenerateMatchingStudentElementHtml(Item.Email, Item.EmailMatchStrength) %>
                                 <%# GenerateMatchingStudentElementHtml(Item.Mobile, Item.MobileMatchStrength) %>
                                 <td>
                                    <%# Item.EnrolmentCategory %>
                                 </td>
                                 <td>
                                    <%# Item.HomeSchool %>
                                 </td>
                                 <td>
                                    <%# Item.LastEnrolmentYear %>
                                 </td>
                                 <td>
                                    <%# Common.GetDateDisplay(Item.LEYEnrolmentDate) %>
                                 </td>
                                 <td>
                                    <%# GenerateMatchingStudentEnrolmentStatus(Item) %>
                                 </td>
                              </tr>
                           </ItemTemplate>
                        </asp:ListView>

                        <tr class="Row ExistingStudentSelection">
                           <td>
                              <input runat="server" type="radio" id="rbExistingStudentIDNone" name="rbgnExistingStudentID" data-last-enrolment-year="-1"
                                 onclick="existingStudentSelectionChanged();" />
                           </td>
                           <td colspan="13">The applicant does not exist on the VSV student database: create a new student after confirming the details in the next step.
                           </td>
                        </tr>

                        <tr class="Bottom">
                           <td colspan="14">
                              <div style="display: flex; justify-content: space-between;">
                                 <div id="divExistingStudentSelectionError" class="warningMessage" style="visibility: hidden;">
                                 </div>
                                 <div>
                                    <asp:Button runat="server" ID="btnPreviewImport" Text="Summary and Confirmation" ValidationGroup="viewExistingStudentSelection"
                                       OnClientClick="onNextClicked(this);" />
                                    <asp:Button runat="server" ID="btnPreviewImportCancel" Text="Cancel Import" CausesValidation="false" Style="margin-left: 20px;" />
                                 </div>
                              </div>
                           </td>
                        </tr>

                     </table>
                  </div>
               </asp:View>


               <asp:View runat="server" ID="viewPreviewUpdate">

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Preview of Details to be Imported for
                                    <asp:Literal runat="server" ID="ltPvwStudentHeaderText"></asp:Literal>
                              <%--New/Existing Student ID xxx--%></th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid">
                        <tr class="Controls">
                           <td style="padding-bottom: 15px;">
                              <p>
                                 <strong>Please review the sections below, which display the record information that will be imported into the VSV database for this student if you continue.</strong>
                              </p>
                              <p>
                                 TODO: Conditional blurb, for new or existing students<br />
                                 Also: "Make changes in Funnel if you need to, then refresh."
                              </p>
                           </td>
                        </tr>
                     </table>
                  </div>

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Student Details</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewStudentDetailsTableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Enrolment</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewEnrolmentTableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>


                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Postal Address</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewPostalAddressTableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Residential Address</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewResidentialAddressTableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Parent/Carer A</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewParentCarerATableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Parent/Carer B</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewParentCarerBTableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Medical Details</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewMedicalDetailsTableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>

                  <div class="TableContainer" <%= StudentImportPreviewRenderer.GetPreviewTableStyleMarkup() %>>
                     <table class="Header" border="0">
                        <tr>
                           <td class="HeaderLeft">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></td>
                           <th>Census Details</th>
                           <th class="HeaderRight">
                              <img src="Styles/Blueprint/Images/Spacer.gif"></th>
                        </tr>
                     </table>
                     <table class="Grid" style="table-layout: fixed;">
                        <asp:Literal runat="server" ID="ltPreviewCensusDetailsTableContent" EnableViewState="false"></asp:Literal>
                     </table>
                  </div>
               </asp:View>


            </asp:MultiView>

         </ContentTemplate>
      </asp:UpdatePanel>

   </form>

   <script type="text/javascript">

      function existingStudentSelectionChanged()
      {
         setExistingStudentSelection();
         validateExistingStudentSelection();
      }


      function setExistingStudentSelection()
      {
         /* Initially this was set up to change the selection based on clicking anywhere within the table row, but that can be a bit dangerous:
          * Clicking the field to open the student database link will trigger it. Better to make the selection more explicit, than accidental.
          */
         var existingStudentRows = document.querySelectorAll("div.ExistingStudentSelection tr.ExistingStudentSelection");
         for (var rowIndex = 0; rowIndex < existingStudentRows.length; rowIndex++)
         {
            var rowElement = existingStudentRows[rowIndex];
            if (rowElement.querySelector("input[name='rbgnExistingStudentID']:checked") === null)
               rowElement.classList.remove("selectedItem");
            else
               rowElement.classList.add("selectedItem");
         }
      }


      function validateExistingStudentSelection()
      {
         var errorElement = document.getElementById("divExistingStudentSelectionError");
         var submitElement = document.getElementById("<%= btnPreviewImport.ClientID %>");

         var selectedElement = document.querySelector("div.ExistingStudentSelection input[name='rbgnExistingStudentID']:checked");
         if (selectedElement !== null)
         {
            var currentEnrolmentYear = <%= CurrentEnrolmentYear %>;
            var studentLastEnrolmentYear = parseInt(selectedElement.dataset.lastEnrolmentYear);
            if (currentEnrolmentYear === studentLastEnrolmentYear)
            {
               errorElement.innerHTML = "The selected student has already been enrolled for the " + currentEnrolmentYear + " enrolment year.";
               errorElement.innerHTML += " The application details in Funnel cannot be imported to the database for this student.";
               errorElement.style.visibility = "visible";
               submitElement.disabled = true;
            }
            else
            {
               errorElement.style.visibility = "hidden";
               submitElement.disabled = false;
            }
         }
         else
         {
            errorElement.style.visibility = "hidden";
            submitElement.disabled = true;
         }
      }


      function onNextClicked(buttonElement, validationGroup)
      {
         if ((validationGroup === undefined) || Page_ClientValidate(validationGroup))
         {
            buttonElement.style.minWidth = buttonElement.getBoundingClientRect().width;
            buttonElement.value = "Processing...";
         }
      }

      validateExistingStudentSelection();

   </script>

</body>
</html>
