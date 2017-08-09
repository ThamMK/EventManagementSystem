    <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TestMaster.Master" CodeBehind="CreateEvent.aspx.cs" Inherits="EventManagementSystem.CreateEvent" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <!-- Latest compiled and minified CSS -->

        <link href="Scripts/CreateEvent.css" rel="stylesheet" type="text/css" />


        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"> </script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css" />
        <script src="https://unpkg.com/flatpickr"></script>

        <!-- CKEDITOR -->
        <script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>

    </head>

    <body>
        <div class="container-CreateEvent">

            <div class="container-topSection">

                <div class="title">Create Event</div>
                <div class="desc">Create And Organize Your Event.</div>
                <asp:Image ID="imgNav2" CssClass="imgNav2" ImageUrl="~/Images/Event/Navigation2.png" runat="server" />
                <div class="state">
                    Your current state is <span style="font-weight: bold; color: #12ABE3">fill in the event details.</span>
                </div>
            </div>

            <div class="container-form">
                <div class="eventDetail">
                    <div style="padding-left: 28%;">
                        <div class="eventDetail-Header">

                            <asp:Image ID="imgeOne" CssClass="imgOne" ImageUrl="~/Images/Event/1.png" runat="server" />

                            <div class="container-labelEvent">
                                <asp:Label ID="lblEventDetail" CssClass="lblEventDetail" runat="server" Text="Event Details"></asp:Label>
                            </div>
                        </div>

                        <div class="eventDetail-2">

                            <div class="eventDetail-Title">

                                <asp:Label ID="lblEventTitle" CssClass="lblEventTitle" runat="server" Text="Event Title"></asp:Label>

                                <asp:TextBox ID="txtEventTitle" CssClass="txtEventTitle" runat="server"></asp:TextBox>

                            </div>

                            <div class="eventDetail-Location">

                                <asp:Label ID="lblLocation" CssClass="lblLocation" runat="server" Text="Location"></asp:Label>

                                <asp:TextBox ID="txtLocation" CssClass="txtLocation" Enabled="false" runat="server"></asp:TextBox>

                            </div>

                            <div class="eventDetail-EventDescription">

                                <asp:Label ID="lblEventDescription" CssClass="lblEventDescription" runat="server" Text="Event Description"></asp:Label>

                                <div class="eventDetail-CKEditor">

                                    <CKEditor:CKEditorControl ID="CKEditor1" CssClass="CKEditor1" BasePath="/ckeditor/" runat="server" float="left" clear="left"></CKEditor:CKEditorControl>

                                </div>

                            </div>

                            <div class="eventDetail-Date">

                                <div class="eventDetail-StartDate">

                                    <asp:Label ID="lblStart" CssClass="lblStart" runat="server" Text="Start"></asp:Label>

                                    <div class="eventDetail-StartDateTime">

                                        <div class="eventDetail-StartDate-Date">

                                            <asp:TextBox ID="startDateTextBox" CssClass="startDateTextBox" runat="server" placeholder="dd-mm-yyyy" AutoPostBack="True"></asp:TextBox>

                                            <script type="text/javascript">
                                                $(document).ready(function () {
                                                    $(".startDateTextBox").focus(function () {
                                                        $(".startDateTextBox").flatpickr({
                                                            minDate: "today",
                                                            allowInput: "true",
                                                            dateFormat: "d-m-Y"
                                                        })
                                                    });
                                                });
                                            </script>

                                        </div>

                                        <div class="eventDetail-StartDate-Time">

                                            <asp:DropDownList ID="ddlStartTime" CssClass="ddlStartTime" placeholder="Time" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged">

                                                <asp:ListItem>8:30</asp:ListItem>
                                                <asp:ListItem>9:00</asp:ListItem>
                                                <asp:ListItem>9:30</asp:ListItem>

                                            </asp:DropDownList>

                                        </div>

                                    </div>

                                </div>

                                <div class="eventDetail-EndDate">

                                    <asp:Label ID="lblEnd" CssClass="lblEnd" runat="server" Text="End"></asp:Label>

                                    <div class="eventDetail-EndDateTime">

                                        <div class="eventDetail-EndDate-Date">

                                            <asp:TextBox ID="endDateTextBox" CssClass="endDateTextBox" runat="server" placeholder="dd-mm-yyyy" AutoPostBack="True"></asp:TextBox>

                                            <script type="text/javascript">
                                                $(document).ready(function () {
                                                    $(".endDateTextBox").focus(function () {
                                                        $(".endDateTextBox").flatpickr({
                                                            minDate: "today",
                                                            allowInput: "true",
                                                            dateFormat: "d-m-Y"
                                                        })
                                                    });
                                                });
                                            </script>

                                        </div>

                                        <div class="eventDetail-EndDate-Time">

                                            <asp:DropDownList ID="ddlEndTime" CssClass="ddlEndTime" placeholder="Time" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >

                                                <asp:ListItem>10:30</asp:ListItem>
                                                <asp:ListItem>11:00</asp:ListItem>
                                                <asp:ListItem>11:30</asp:ListItem>

                                            </asp:DropDownList>

                                        </div>

                                    </div>
                                </div>

                            </div>

                            <div>

                                <asp:Label ID="lblCategory" CssClass="lblCategory" runat="server" Text="Event Category"></asp:Label>

                                <asp:DropDownList ID="ddlCategory" CssClass="ddlCategory" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" placeholder="Please select a category.">

                                    <asp:ListItem>Business</asp:ListItem>
                                    <asp:ListItem>Foods & Dining</asp:ListItem>
                                    <asp:ListItem>Musics</asp:ListItem>
                                    <asp:ListItem>Outdoors</asp:ListItem>
                                    <asp:ListItem>Seminars & Talks</asp:ListItem>
                                    <asp:ListItem>Socials</asp:ListItem>
                                    <asp:ListItem>Technologies</asp:ListItem>

                                </asp:DropDownList>

                            </div>

                            <div class="eventDetail-EventImage">

                                <asp:Label ID="lblEventImage" CssClass="lblEventImage" runat="server" Text="Event Image"></asp:Label>

                                <asp:FileUpload ID="FUImage" runat="server" Style="display: none;" />

                                <div class="imgButton">

                                    <asp:ImageButton ID="imgAddImage" CssClass="imgAddImage" OnClick="addImage_Click" runat="server" AutoPostBack="False" ImageUrl="~/Images/Event/ADD_IMAGE.png" />
                                    </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="organizationDetail">

                <div class="organizationDetail-Detail">

                    <div style="padding-left: 28%;">

                        <div class="organizerDetail-Header">

                            <asp:Image ID="imgTwo" CssClass="imgTwo" ImageUrl="~/Images/Event/2.png" runat="server" />

                            <div style="padding-top: 8px;">

                                <asp:Label ID="lblOrganizerDetail" CssClass="lblOrganizerDetail" runat="server" Text="Organizer Details"></asp:Label>

                            </div>

                        </div>

                        <div class="organizationDetail-2">

                            <div class="organizationDetail-OrganizerName">

                                <asp:Label ID="lblOrganizerName" CssClass="lblOrganizerName" runat="server" Text="Organizer Name"></asp:Label>

                                <asp:TextBox ID="txtOrganizerName" CssClass="txtOrganizerName" placeholder="Example: Computer Science Society" runat="server"></asp:TextBox>

                            </div>

                            <div class="organizationDetail-OrganizerContactNumber">

                                <asp:Label ID="lblOrganizationContactNumber" CssClass="lblOrganizerContactNumber" runat="server" Text="Organizer Contact Number"></asp:Label>

                                <asp:TextBox ID="txtOrganizationContactNumber" CssClass="txtOrganizerContactNumber" placeholder="Example: 016-1234567" runat="server"></asp:TextBox>

                            </div>

                            <div class="organizationDetail-OrganizerEmail">

                                <asp:Label ID="lblOrganizationEmail" CssClass="lblOrganizerEmail" runat="server" Text="Organizer Email Address"></asp:Label>

                                <asp:TextBox ID="txtOrganizationEmail" CssClass="txtOrganizerEmail" placeholder="Example: xxx_xx@gmail.com" runat="server"></asp:TextBox>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="eventButton">

            <asp:Button ID="btnSubmit" CssClass="btnSubmit" runat="server" Text="Submit" />

            <asp:Button ID="btnCancel" CssClass="btnCancel" runat="server" Text="Cancel" />

            <asp:Button ID="btnReset" CssClass="btnReset" runat="server" Text="Reset" />

        </div>


    </body>

    </html>

</asp:Content>
