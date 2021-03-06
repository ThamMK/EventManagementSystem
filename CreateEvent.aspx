﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="CreateEvent.aspx.cs" Inherits="EventManagementSystem.CreateEvent" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <!-- Latest compiled and minified CSS -->

        <link href="Scripts/CreateEvent.css" rel="stylesheet" type="text/css" />


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
        <div class="container-CreateEvent">

             <div class="container-Navigation">

                    <asp:Image ID="imgNav2" CssClass="imgNav2" ImageUrl="~/Images/Event/navigation2.png" runat="server"  />

                </div>

            <div class="eventDetail">

                <div class="eventDetail-Header">

                    <asp:Image ID="imgeOne" CssClass="imgOne" ImageUrl="~/Images/Event/1.png" runat="server"  />

                    <asp:Label ID="lblEventDetail" CssClass="lblEventDetail" runat="server" Text="Event Details"></asp:Label>

                </div>

                <div class="eventDetail-2">

                    <div class="eventDetail-Title">

                        <asp:Label ID="lblEventTitle" CssClass="lblEventTitle" runat="server" Text="Event Title"></asp:Label>

                        <asp:TextBox ID="txtEventTitle" CssClass="txtEventTitle" runat="server"></asp:TextBox>

                    </div>

                    <div class="eventDetail-Location">

                        <asp:Label ID="lblLocation" CssClass="lblLocation" runat="server" Text="Location"></asp:Label>

                        <asp:TextBox ID="txtLocation" CssClass="txtLocation" runat="server"></asp:TextBox>

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

                                    <asp:TextBox ID="startdatetimepicker" CssClass="startDateTextBox" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True"></asp:TextBox>

                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $(".startdatetimepicker").focus(function () {
                                                $(".startdatetimepicker").flatpickr({
                                                    minDate: "today",
                                                    allowInput: "true",
                                                    dateFormat: "d-m-Y"
                                                })
                                            });
                                        });
                                    </script>

                                </div>

                                <div class="eventDetail-StartDate-Time">

                                    <asp:DropDownList ID="ddlStartTime" CssClass="ddlStartTime" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged" placeholder="Please select a time.">

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

                                    <asp:TextBox ID="enddatetimepicker" CssClass="endDateTextBox" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True"></asp:TextBox>

                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $(".enddatetimepicker").focus(function () {
                                                $(".enddatetimepicker").flatpickr({
                                                    minDate: "today",
                                                    allowInput: "true",
                                                    dateFormat: "d-m-Y"
                                                })
                                            });
                                        });
                                    </script>

                                </div>

                                <div class="eventDetail-EndDate-Time">

                                    <asp:DropDownList ID="ddlEndTime" CssClass="ddlEndTime" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" placeholder="Please select a time.">

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

                        <asp:FileUpload ID="FUImage" runat="server" style="display: none;"/>

                        <asp:ImageButton  ID="imgAddImage" CssClass="imgAddImage" onClientClick="chooseFile();" runat="server" AutoPostBack="False" ImageUrl="~/Images/Event/ADD_IMAGE.png" />

                        <script type="text/javascript">
                            function chooseFile() {
                                document.getElementById("FUImage").click();
                                if (FUImage.HasFile) {
                                    FUImage.SaveAs(MapPath("/Images/Event/" + FUImage.FileName));
                                    //imgViewFile.ImageUrl = Server.MapPath("~/Event/" + FUImage.FileName);
                                    imgAddImage.ImageUrl = "/Images/Event/" + FUImage.FileName;
                                }
                            }
                        </script>

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

                        <asp:TextBox ID="txtOrganizerName" CssClass="txtOrganizerName" runat="server"></asp:TextBox>

                    </div>

                    <div class="organizationDetail-OrganizerContactNumber">

                        <asp:Label ID="lblOrganizationContactNumber" CssClass="lblOrganizerContactNumber" runat="server" Text="Organizer Contact Number"></asp:Label>

                        <asp:TextBox ID="txtOrganizationContactNumber" CssClass="txtOrganizerContactNumber" placeholder="e.g. 016-1234567" runat="server"></asp:TextBox>

                    </div>

                    <div class="organizationDetail-OrganizerEmail">

                        <asp:Label ID="lblOrganizationEmail" CssClass="lblOrganizerEmail" runat="server" Text="Organizer Email Address"></asp:Label>

                        <asp:TextBox ID="txtOrganizationEmail" CssClass="txtOrganizerEmail" placeholder="e.g. xxx_xx@gmail.com" runat="server"></asp:TextBox>

                    </div>

                </div>

            </div>

            <div class="eventButton">

                <asp:Button ID="btnSubmit" CssClass="btnSubmit" runat="server" Text="Submit" />

                <asp:Button ID="btnCancel" CssClass="btnCancel" runat="server" Text="Cancel" />

                <asp:Button ID="btnReset" CssClass="btnReset" runat="server" Text="Reset" />

            </div>

        </div>

    </body>

    </html>

</asp:Content>
