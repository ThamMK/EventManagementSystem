<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="ConfirmationCreateEvent.aspx.cs" Inherits="EventManagementSystem.ConfirmationCreateEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>



    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <!-- Latest compiled and minified CSS -->

        <link href="Scripts/ConfirmationEvent.css" rel="stylesheet" type="text/css" />


        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css" />
        <script src="https://unpkg.com/flatpickr"></script>

        <!-- CKEDITOR -->
        <script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>

    </head>

    <body>

        <div class="container-ConfirmationCreateEvent">

            <div class="container-Navigation">

                    <asp:Image ID="imgNav3" CssClass="imgNav3" ImageUrl="~/Images/Event/Navigation3 .png" runat="server"  />

                </div>

            <div class="eventDetail">

                <div class="eventDetail-Header">

                    <asp:Image ID="imgeOne" CssClass="imgOne" ImageUrl="~/Images/Event/1.png" runat="server"  />

                    <asp:Label ID="lblEventDetail" CssClass="lblEventDetail" runat="server" Text="Event Details"></asp:Label>

                </div>

                <div class="eventDetail-2">

                    <div class="eventDetail-Title">

                        <asp:Label ID="lblEventTitle" CssClass="lblEventTitle" runat="server" Text="Event Title"></asp:Label>

                        <asp:TextBox ID="txtEventTitle" CssClass="txtEventTitle" Enabled="false" runat="server"></asp:TextBox>

                    </div>

                    <div class="eventDetail-Location">

                        <asp:Label ID="lblLocation" CssClass="lblLocation" runat="server" Text="Location"></asp:Label>

                        <asp:TextBox ID="txtLocation" CssClass="txtLocation" Enabled="false" runat="server"></asp:TextBox>

                    </div>

                    <div class="eventDetail-EventDescription">

                        <asp:Label ID="lblEventDescription" CssClass="lblEventDescription" runat="server" Text="Event Description"></asp:Label>

                        <div class="eventDetail-CKEditor">

                            <textarea id="txtEventDescription" class="txtEventDescription" cols="20" rows="2" disabled="disabled" draggable="false"></textarea>

                        </div>

                    </div>

                    <div class="eventDetail-Date">

                        <div class="eventDetail-StartDate">

                            <asp:Label ID="lblStart" CssClass="lblStart" runat="server" Text="Start"></asp:Label>

                            <div class="eventDetail-StartDateTime">

                                <div class="eventDetail-StartDate-Date">

                                    <asp:TextBox ID="startdatetimepicker" CssClass="startDateTextBox" runat="server" Enabled="false" placeholder="dd-mm-yyyy"  AutoPostBack="True"></asp:TextBox>

                                </div>

                                <div class="eventDetail-StartDate-Time">

                                    <asp:TextBox ID="txtStartTime" CssClass="txtStartTime" runat="server" Enabled="false" AutoPostBack="True"></asp:TextBox>
                                    
                                </div>

                            </div>

                        </div>

                        <div class="eventDetail-EndDate">

                            <asp:Label ID="lblEnd" CssClass="lblEnd" runat="server" Text="End"></asp:Label>

                            <div class="eventDetail-EndDateTime">

                                <div class="eventDetail-EndDate-Date">

                                    <asp:TextBox ID="enddatetimepicker" CssClass="endDateTextBox" runat="server" Enabled="false" placeholder="dd-mm-yyyy"  AutoPostBack="True"></asp:TextBox>

                                </div>

                                <div class="eventDetail-EndDate-Time">

                                    <asp:TextBox ID="txtEndTime" CssClass="txtEndTime" runat="server" Enabled="false" AutoPostBack="True"></asp:TextBox>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div>

                        <asp:Label ID="lblCategory" CssClass="lblCategory" runat="server" Text="Event Category"></asp:Label>

                        <asp:TextBox ID="txtCategory" CssClass="txtCategory" runat="server" Enabled="false" AutoPostBack="True"></asp:TextBox>
                        
                    </div>

                    <div class="eventDetail-EventImage">

                        <asp:Label ID="lblEventImage" CssClass="lblEventImage" runat="server" Text="Event Image"></asp:Label>

                        <asp:FileUpload ID="FUImage" runat="server" style="display: none;"/>

                        <asp:ImageButton  ID="imgAddImage" CssClass="imgAddImage" onClientClick="chooseFile();" runat="server" AutoPostBack="False" ImageUrl="~/Images/Event/ADD_IMAGE.png" />

                    </div>

                </div>
            </div>

            <div class="organizationDetail">

                <div class="organizerDetail-Header">

                    <asp:Image ID="imgTwo" CssClass="imgTwo" ImageUrl="~/Images/Event/2.png" runat="server"  />

                    <asp:Label ID="lblOrganizerDetail" CssClass="lblOrganizerDetail" runat="server" Text="Organizer Details"></asp:Label>

                </div>

                <div class="organizationDetail-Detail">

                    <div class="organizationDetail-OrganizerName">

                        <asp:Label ID="lblOrganizerName" CssClass="lblOrganizerName" runat="server" Text="Organizer Name"></asp:Label>

                        <asp:TextBox ID="txtOrganizerName" CssClass="txtOrganizerName" Enabled="false" runat="server"></asp:TextBox>

                    </div>

                    <div class="organizationDetail-OrganizerContactNumber">

                        <asp:Label ID="lblOrganizationContactNumber" CssClass="lblOrganizerContactNumber" runat="server" Text="Organizer Contact Number"></asp:Label>

                        <asp:TextBox ID="txtOrganizationContactNumber" CssClass="txtOrganizerContactNumber" Enabled="false" placeholder="e.g. 016-1234567" runat="server"></asp:TextBox>

                    </div>

                    <div class="organizationDetail-OrganizerEmail">

                        <asp:Label ID="lblOrganizationEmail" CssClass="lblOrganizerEmail" runat="server" Text="Organizer Email Address"></asp:Label>

                        <asp:TextBox ID="txtOrganizationEmail" CssClass="txtOrganizerEmail" Enabled="false" placeholder="e.g. xxx_xx@gmail.com" runat="server"></asp:TextBox>

                    </div>

                </div>

            </div>

            <div class="eventButton">

                <asp:Button ID="btnSubmit" CssClass="btnSubmit" runat="server" Text="Confirm" />

                <asp:Button ID="btnCancel" CssClass="btnCancel" runat="server" Text="Cancel" />

                <asp:Button ID="btnReset" CssClass="btnReset" runat="server" Text="Edit" />

            </div>

        </div>

    </body>

    </html>

</asp:Content>
