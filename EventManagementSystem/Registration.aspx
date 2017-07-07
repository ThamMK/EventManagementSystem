<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EventManagementSystem.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script type="text/javascript">
             $(document).ready(function () {
                 $('#<%= butCancel.ClientID %>').click(function(e) 
                 {
                     showDialog('#txtFullName'.toString());
                 })
                 return false;
             });
         </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
    
    <body>
        
            <div class="form-group">
                <h2>Registration Form</h2>
            </div>
            <div class="form-group">
                <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                <div class="col-sm-9">
                    <input type="text" id="txtFullName" name="txtFullName" placeholder="Full Name" class="form-control"/>
                    <span class="help-block">Full Name = Last Name First Name, eg.: Smith Harry or Zuo Jun Yong</span>
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                    <input type="email" id="txtEmail" placeholder="Email" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                    <input type="password" id="txtPassword" placeholder="Password" class="form-control"/>
                </div>
            </div>
        <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Comfirm Password</label>
                <div class="col-sm-9">
                    <input type="password" id="txtComfirmPassword" placeholder="Comfirm Password" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                <div class="container">
                    <div class="form-group">
                    <asp:DropDownList ID="DropDownListYear" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListYear_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownListMonth" runat="server" OnSelectedIndexChanged="DropDownListMonth_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
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
                </div>
            </div>
            <div class="form-group">
                    <asp:Button ID="butRegister" runat="server" Text="Register"/>
                    <asp:Button ID="butCancel" runat="server" Text="Cancel" Width="70px"  />
                    <asp:Button ID="butReset" runat="server" Text="Reset" />
             </div>
            
     
    </body>
</html>
</asp:Content>
