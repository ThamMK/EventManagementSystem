<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckAvailability.aspx.cs" Inherits="EventManagementSystem.CheckAvailability" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/flatpickr/dist/flatpickr.min.css">
    <script src="https://unpkg.com/flatpickr"></script>
    <script type="text/javascript">
                    $(function () {
                        $('#datetimepicker').flatpickr({
                            minDate: "today",
                            allowInput: "true",
                            dateFormat: "d-m-Y"
                        });
                    });
                </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container">
                <div class='col-sm-6'>
                    <asp:TextBox ID="datetimepicker" runat="server" placeholder="dd-mm-yyyy" OnTextChanged="datetimepicker_TextChanged" AutoPostBack="True" ></asp:TextBox>
                    <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
                    <asp:DropDownList ID="ddlVenue" runat="server" Enabled ="false" AutoPostBack="True">
                        <asp:ListItem>Yum Yum</asp:ListItem>
                        <asp:ListItem>Sport Complex</asp:ListItem>
                        <asp:ListItem>Red Brick</asp:ListItem>
                        <asp:ListItem>Toilet</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlTime" runat="server" Enabled ="true" AutoPostBack="True"></asp:DropDownList>
            </div>
        </div>
    </div>
    </form>

</body>

</html>
