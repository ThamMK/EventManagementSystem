<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="CheckAvailability.aspx.cs" Inherits="EventManagementSystem.CheckAvailability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
        <!-- Latest compiled and minified CSS -->
    <link href="Scripts/Event.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css"/>
    <script src="https://unpkg.com/flatpickr"></script>

</head>
<body>
        <div class="container">
                <div class='col-sm-6'>
                    
                    <asp:TextBox ID="datetimepicker" Cssclass="dateTextBox"   runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True" ></asp:TextBox>
                    <asp:DropDownList ID="ddlVenue" runat="server" Enabled ="false" AutoPostBack="True" OnSelectedIndexChanged="ddlVenue_SelectedIndexChanged">
                        <asp:ListItem Value="" Text="Venue" ></asp:ListItem>
                        <asp:ListItem Value="1">Yum Yum</asp:ListItem>
                        <asp:ListItem Value="2">Sport Complex</asp:ListItem>
                        <asp:ListItem Value="3">Red Brick</asp:ListItem>
                        <asp:ListItem Value="4">Toilet</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlTime" runat="server" Enabled ="false" AutoPostBack="True">
                        <asp:ListItem Value="" Text="Time"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="txt" runat="server" Text=""></asp:Label>
            </div>
        </div>
</body>
<script type="text/javascript">
    $(document).ready(function () {
        $(".datetimepicker").focus(function () {
            $(".datetimepicker").flatpickr({
                minDate: "today",
                allowInput: "true",
                dateFormat: "d-m-Y"
            })
        });
    });
</script>
</html>
</asp:Content>