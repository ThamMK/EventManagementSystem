<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="Login.aspx.cs" Inherits="EventManagementSystem.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title></title>
        <link href="Scripts/Login.css" rel="stylesheet" />
    </head>
    <body>

        <div id="background">

            <div id="left-login-panel">

                <div id="not-member">NOT A MEMBER ?</div>

                <div id="not-member-content">
                    <p>
                        Register now to become the member of TAR2DAY. Membership of TAR2DAY<br>
                        offers variety of benefits to register for college events and create event for<br>
                        advertising. Click on the button below to sign up now.
                    </p>
                </div>

                <asp:Button runat="server" CssClass="login-signup-button" Height="50px" Width="350px" Text="Sign Up" />
            </div>

            <div id="login">

                    <div class="login-div">
                        <label>Login</label>
                    </div>


                    <div class="form-horizontal">
                        <div class="email-input">
                            <div id="email-icon">
                                <img style="width:22px;height:22px;margin-top:11px;margin-left:11px;" src="Images/Login/email-icon.png" />
                            </div>
                            <input id="email" type="email" placeholder="Email" />
                        </div>

                        <div class="password-input">
                            <div id="password-icon">
                                <img style="width:22px;height:22px;margin-top:11px;margin-left:11px;" src="Images/Login/password-icon.png" />
                            </div>
                            <input id="pwd" type="password" placeholder="Password" />
                        </div>


                        <div class="form-group">
                            <div class="login-button">
                                <button id="btn-submit" type="submit">Log In</button>
                            </div>
                        </div>
                    </div>
                    <div class="login-div">
                        <a class="no-account-signup" id="ContentPlaceHolder1_HyperLink1">Don't have an account? Sign up!</a>
                    </div>

            </div>

        </div>


    </body>
    </html>
</asp:Content>
