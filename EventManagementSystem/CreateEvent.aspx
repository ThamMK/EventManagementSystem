        <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="CreateEvent.aspx.cs" Inherits="EventManagementSystem.CreateEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <!-- Latest compiled and minified CSS -->
        <link href="Scripts/CreateEvent.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

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

    </head>
    <body>
        <div class="container">
            <div class="eventDetail">

                <div class="containerEventDetail">

                    <asp:Label ID="lblEventDetail" runat="server" Text="Event Details"></asp:Label>

                </div>

                <asp:Label ID="lblEventTitle" runat="server" Text="Event Title"></asp:Label>

                <asp:TextBox ID="txtEventDetail" runat="server" Width="1029px"></asp:TextBox>

                <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>

                <asp:TextBox ID="txtLocation" runat="server" Width="1029px"></asp:TextBox>

                <div class="containerDate">

                    <div class="containerStartDate">

                        <asp:Label ID="lblStart" runat="server" Text="Start"></asp:Label>

                        <div>
                            <asp:TextBox ID="startdatetimepicker" CssClass="dateTextBox" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True"></asp:TextBox>

                            <asp:DropDownList ID="ddlTime" runat="server" Enabled="false" AutoPostBack="True" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged">

                                <asp:ListItem Value="" Text="Time"></asp:ListItem>

                            </asp:DropDownList>

                        </div>
                       
                    </div>

                    <div class="containerEndDate">

                        <div>
                            <asp:Label ID="lblEnd" runat="server" Text="End"></asp:Label>

                            <asp:TextBox ID="enddatetimepicker" CssClass="dateTextBox" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True"></asp:TextBox>

                            <asp:DropDownList ID="DropDownList1" runat="server" Enabled="false" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                               
                                 <asp:ListItem Value="" Text="Time"></asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>

            <div class="createTicket">
                <div class="containerCreateTicket">
                    <asp:Label ID="lblCreateTicket" runat="server" Text="Create Tickets"></asp:Label>
                </div>
            </div>
            <div class="additionalSetting">
                <div class="containerAdditionalSetting">
                    <asp:Label ID="lblAdditionalSetting" runat="server" Text="Additional Setting"></asp:Label>
                </div>
            </div>

        </div>
    </body>
    </html>
</asp:Content>
