<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EventManagementSystem.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    
        <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <link href="Scripts/RegistrationForm.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <body>
            <div class="overall-container">
                <div class="container-RegistrationForm">
                    <h2>Registration Form</h2>       
                    <div class="username-input">
                        <div id="username-icon">
                            <img style="width:22px;height:22px;margin-top:11px;margin-left:11px;" src="Images/Registeration/usericon.png" />
                        </div>
                        <input type="text" id="txtFullName" class="txtFullName" name="txtFullName" placeholder="Username" runat="server" />  
                    </div>
                    <div class="Email">    
                        <div id="email-icon">
                            <img style="width:22px;height:22px;margin-top:11px;margin-left:11px;" src="Images/Registeration/emailicon.png" />
                        </div>
                        <input type="email" id="txtEmail" class="txtEmail" name="txtEmail" placeholder="Email"  runat="server" />
                    </div> 
                    <div class="pass-input">  
                        <div id="pass-icon">
                            <img style="width:22px;height:22px;margin-top:11px;margin-left:11px;" src="Images/Registeration/comfirm-pass-icon.png" />
                        </div>
                        <input type="password" id="txtPassword" class="txtPassword" placeholder="Password" runat="server"/> 
                    </div>   
                    <div class="confirmPass">  
                        <div id="comfirm-pass-icon">
                            <img style="width:22px;height:22px;margin-top:11px;margin-left:11px;" src="Images/Registeration/password-icon.png" />
                        </div>  
                        <input type="password" id="txtComfirmPassword" class="txtComfirmPassword" placeholder="Confirm Password"  runat="server"/>
                    </div>    
                    <div class="birthdropdownlist">
                        <div class="container">
                            <div class="ddlYear">
                                <asp:DropDownList ID="DropDownListYear" CssClass="dropdownlist-style" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListYear_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="ddlMonth">
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
                            </div>
                            <div class="ddlDay">
                                <asp:DropDownList ID="DropDownListDay" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>           
                        </div>
                    </div>
                    <div class="buttonaction">
                        <asp:Button ID="btnRegister" class="btnRegister" runat="server" Text="Register" />
                        <asp:Button ID="btnCancel" class="btnCancel" runat="server" Text="Cancel" />
                    </div>
                </div>
                <div class="side-content">
                    
                    <h2>Benefits becoming one of us</h2>
                    <p>
                        You can find 
                    </p>
                </div>
            </div>
        </body>
    </html>
</asp:Content>
