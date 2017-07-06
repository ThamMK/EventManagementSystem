<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="CreateEvent.aspx.cs" Inherits="EventManagementSystem.CreateEvent" %>
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

        <!-- CKEDITOR -->
        <script src="//cdn.ckeditor.com/4.7.1/standard/ckeditor.js"></script>

    </head>

    <body>
        <div class="container-CreateEvent">

            <div class="eventDetail">

                <div class="eventDetail-Header">

                    <asp:Label ID="lblEventDetail" CssClass="lblEventDetail" runat="server" Text="Event Details"></asp:Label>

                </div>

                <div class="eventDetail-Title">

                    <asp:Label ID="lblEventTitle" CssClass="lblEventTitle" runat="server" Text="EVENT TITLE"></asp:Label>

                    <asp:TextBox ID="txtEventTitle" CssClass="txtEventTitle" runat="server" ></asp:TextBox>

                </div>

                <div class="eventDetail-Location">

                    <asp:Label ID="lblLocation" CssClass="lblLocation" runat="server" Text="LOCATION"></asp:Label>

                    <asp:TextBox ID="txtLocation" CssClass="txtLocation" runat="server" ></asp:TextBox>

                </div>

                <div class="eventDetail-Date">

                    <div class="eventDetail-StartDate">

                     <asp:Label ID="lblStart" CssClass="lblStart" runat="server" Text="START"></asp:Label>

                            <div class="eventDetail-StartDateTime">

                                <div class="eventDetail-StartDate-Date">

                                    <asp:TextBox ID="startdatetimepicker" CssClass="startDateTextBox" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True"></asp:TextBox>
                        
                                </div>

                                <div class="eventDetail-StartDate-Time">

                                    <asp:DropDownList ID="ddlStartTime" CssClass="ddlStartTime" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged">

                                        <asp:ListItem Value="" Text="Time"></asp:ListItem>

                                        <asp:ListItem>8:30</asp:ListItem>
                                        <asp:ListItem>9:00</asp:ListItem>
                                        <asp:ListItem>9:30</asp:ListItem>

                                    </asp:DropDownList>

                                </div>

                            </div>

                    </div>

                    <div class="eventDetail-EndDate">
                        
                            <asp:Label ID="lblEnd" CssClass="lblEnd" runat="server" Text="END"></asp:Label>
                          
                        <div class="eventDetail-EndDateTime">  

                            <div class="eventDetail-EndDate-Date">

                                <asp:TextBox ID="enddatetimepicker" CssClass="endDateTextBox" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True"></asp:TextBox>

                            </div>

                            <div class="eventDetail-EndDate-Time">

                                <asp:DropDownList ID="ddlEndTime" CssClass="ddlEndTime" runat="server" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">

                                    <asp:ListItem Value="" Text="Time"></asp:ListItem>

                                    <asp:ListItem>10:30</asp:ListItem>
                                    <asp:ListItem>11:00</asp:ListItem>
                                    <asp:ListItem>11:30</asp:ListItem>

                                </asp:DropDownList>

                            </div>

                        </div>

                    </div>

                </div>

                <div class="eventDetail-EventImage">

                    <asp:Label ID="lblEventImage" CssClass="lblEventImage" runat="server" Text="EVENT IMAGE"></asp:Label>    

                    <asp:Image ID="imgAddImage" CssClass="imgAddImage" runat="server"  ImageUrl="\Images\Event\ADD_IMAGE.png" />

                </div>

                <div class="eventDetail-EventDescription">

                    <asp:Label ID="lblEventDescription" CssClass="lblEventDescription" runat="server" Text="EVENT DESCRIPTION"></asp:Label>  
                
                    <div class="eventDetail-CKEditor">

                        <CKEditor:CKEditorControl ID="CKEditor1" CssClass="CKEditor1"  BasePath="/ckeditor/" runat="server" float="left" clear="left"></CKEditor:CKEditorControl>  

                    </div> 
           
                </div>

            </div>

            <div class="organizationDetail">

                <div class="organizerDetail-Header">

                    <asp:Label ID="lblOrganizerDetail" CssClass="lblOrganizerDetail" runat="server" Text="Organizer Details"></asp:Label>

                </div>

                <div class="organizationDetail-OrganizerName">

                    <asp:Label ID="lblOrganizerName" CssClass="lblOrganizerName" runat="server" Text="ORGANIZER NAME"></asp:Label>  

                    <asp:TextBox ID="txtOrganizerName" CssClass="txtOrganizerName" runat="server"></asp:TextBox>

                </div>

                <div class="organizationDetail-OrganizerContactNumber">

                    <asp:Label ID="lblOrganizationContactNumber" CssClass="lblOrganizerContactNumber" runat="server" Text="ORGANIZER Contact Number"></asp:Label>  

                    <asp:TextBox ID="txtOrganizationContactNumber" CssClass="txtOrganizerContactNumber" placeholder="e.g. 016-1234567" runat="server"></asp:TextBox>

                </div>

                <div class="organizationDetail-OrganizerEmail">

                    <asp:Label ID="lblOrganizationEmail" CssClass="lblOrganizerEmail" runat="server" Text="ORGANIZER Email Address"></asp:Label>  

                    <asp:TextBox ID="txtOrganizationEmail" CssClass="txtOrganizerEmail" placeholder="e.g. xxx_xx@gmail.com" runat="server"></asp:TextBox>

                </div>

            </div>

            <div class="createTicket">


            </div>

            <div class="eventButton">

                <asp:Button ID="btnReset" CssClass="btnReset" runat="server" Text="Reset" />
                
                <asp:Button ID="btnCancel" CssClass="btnCancel" runat="server" Text="Cancel" />
                
                <asp:Button ID="btnSubmit" CssClass="btnSubmit" runat="server" Text="Submit" />

            </div>





        </div>

    </body>

    </html>

</asp:Content>
