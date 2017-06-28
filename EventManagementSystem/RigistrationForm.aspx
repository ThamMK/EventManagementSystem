<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RigistrationForm.aspx.cs" Inherits="EventManagementSystem.RigistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form id="form1" runat="server">
            <h2>Registration Form</h2>
            <div class="form-group">
                <asp:label runat="server" ID="lblfullname">Full Name</asp:label>
                <asp:textbox id="txtfullname" runat="server"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label runat="server" ID="lblemail">Email</asp:label>
                <asp:textbox id="txtemail" runat="server"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label runat="server" ID="lblpassword">Password</asp:label>
                <asp:textbox id="txtpassword" runat="server"></asp:textbox>
            </div>
            <div class="form-group">
                <asp:label runat="server" ID="lbldob">Date of Birth</asp:label>
                <asp:DropDownList ID="DropDownListYear" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListYear_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownListMonth" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" >
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownListDay" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:label id="lblcountry" runat="server">Country</asp:label>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div> <!-- /.form-group -->
            <div class="form-group">
                <asp:label id="lblGender" runat="server">Gender</asp:label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2" 
                    RepeatDirection="Vertical" RepeatLayout="Table">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="form-group">
            <asp:label id="lblmealpreference" runat="server">Meal Preference</asp:label>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="163px">
                    <asp:ListItem>Junk Food</asp:ListItem>
                    <asp:ListItem>More Junk Food</asp:ListItem>
                </asp:CheckBoxList>
            </div> 
            <div class="form-group">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="I had read the terms and conditions"/>
            </div> 
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            </div> 
        </form>
    </body>
</html>
