<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="CheckAvailability.aspx.cs" Inherits="EventManagementSystem.CheckAvailability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <!-- Latest compiled and minified CSS -->
        <link href="Scripts/Event.css" rel="stylesheet" type="text/css" />

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


        <link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css" />
        <script src="https://unpkg.com/flatpickr"></script>

    </head>
    <body>
        <div class="container-CheckAvailability">

            <div class="container-Navigation">
                <asp:Image ID="imgNav" CssClass="imgNav" ImageUrl="~/Images/Event/Navigation1.png" runat="server" />

            </div>
            <div class="container-check">
                <div class="container-StartDateTime">
                    <asp:Label ID="lblStartDate" runat="server" Text="Start Date"></asp:Label>
                    <div class="container-StartDateTime2">

                        <asp:TextBox ID="startDate" CssClass="startDate" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="true"></asp:TextBox>

                        <script type="text/javascript" >
                            $(document).ready(function () {
                                $(".startDate").focus(function () {
                                    $(".startDate").flatpickr({
                                        minDate: "today",
                                        allowInput: "true",
                                        dateFormat: "d-m-Y"
                                    })
                                });
                            });

                        </script>
                        <asp:DropDownList ID="ddlStartTime" CssClass="ddlStartTime" runat="server" Enabled="false" AutoPostBack="True">

                            <asp:ListItem Value="" Text="Time"></asp:ListItem>

                        </asp:DropDownList>

                    </div>
                </div>

                <div class="container-Venue">

                    <asp:Label ID="lblVenue" CssClass="lblVenue" runat="server" Text="Please select a venue"></asp:Label>

                    <asp:DropDownList ID="ddlVenue" CssClass="ddlVenue" runat="server" Enabled="false" AutoPostBack="True" OnSelectedIndexChanged="ddlVenue_SelectedIndexChanged">

                        <asp:ListItem Value="" Text="Venue"></asp:ListItem>
                        <asp:ListItem Value="1">Yum Yum</asp:ListItem>
                        <asp:ListItem Value="2">Sport Complex</asp:ListItem>
                        <asp:ListItem Value="3">Red Brick</asp:ListItem>
                        <asp:ListItem Value="4">Toilet</asp:ListItem>

                    </asp:DropDownList>
                </div>
                <div class="container-EndDateTime">

                    <asp:Label ID="lblEnd" runat="server" Text="End Date"></asp:Label>

                    <div class="container-EndDateTime2">

                        <asp:TextBox ID="endDate" CssClass="endDate" runat="server" placeholder="dd-mm-yyyy" AutoPostBack="true"></asp:TextBox>

                        <script type="text/javascript">
                            $(document).ready(function () {
                                $(".endDate").focus(function () {
                                    $(".endDate").flatpickr({
                                        minDate: "today",
                                        allowInput: "true",
                                        dateFormat: "d-m-Y"
                                    })
                                });
                            });

                        </script>

                        <asp:DropDownList ID="ddlEndTime" CssClass="ddlEndTime" runat="server" Enabled="false" AutoPostBack="True">

                            <asp:ListItem Value="" Text="Time"></asp:ListItem>

                        </asp:DropDownList>

                    </div>

                </div>
                <div class="container-Button">

                    <asp:Button ID="btnProceed" CssClass="btnProceed" runat="server" Text="Proceed" OnClick="btnProceed_Click" />
                    <asp:Button ID="btnCancel" CssClass="btnCancel" runat="server" Text="Cancel" />

                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
