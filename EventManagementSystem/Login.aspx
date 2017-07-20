    <%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/TestMaster.Master" CodeBehind="Login.aspx.cs" Inherits="EventManagementSystem.Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        function checkValidation(){
            var msg = "";

                var email = document.getElementById("email");
                var password = document.getElementById("pwd");
                var regularExpression = /^(?=.*\d)(?=.*[A-Za-z]).{6,20}$/;
                var emailRe = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

                if (email.value == "") {
                    msg += 'Please enter your username.\n';
                    email.style.borderColor = "red";
                    email.style.backgroundColor = "#FDE1DF";
                }
                else {
                    if (!(emailRe.test(email.value))) {
                        msg += "The email is in wrong format.\n"
                        email.style.borderColor = "red";
                        email.style.backgroundColor = "#FDE1DF";
                    }
                    else{
                        email.style.borderColor = "dimgrey";
                        email.style.backgroundColor = "white";
                    }
                }

                if (pwd.value == "") {
                    if (msg.indexOf("Please enter your username.\n") == -1)
                        msg += 'Please enter your password\n'
                    else {
                        msg = msg.replace("Please enter your username.\n", "Please enter your username and your password.\n")
                    }
                    pwd.style.borderColor = "red";
                    pwd.style.backgroundColor = "#FDE1DF";
                    
                }
                else {
                    if(pwd.value)
                    if (!(regularExpression.test(pwd.value))) {

                        msg += 'Password must contain at least 6 characters.\n'

                        pwd.style.borderColor = "red";
                        pwd.style.backgroundColor = "#FDE1DF";
                        
                    }
                    else {
                        pwd.style.borderColor = "dimgrey";
                        username.style.backgroundColor = "white";
                    }
                }

                if (msg != "") {
                    var error_div = document.getElementById("error-output");
                    var login_error = document.getElementById("login-error");
                    document.getElementById("login-div").style.display = "none"
                    document.getElementById("login-container").style.display = "block"
                    login_error.style.display = "block";
                    error_div.textContent = msg;
                    document.getElementById("error-output")
                    return false;
                }
                else {
                    return true;
                }

        }
    </script>
</asp:Content>

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
                        Register now to become the member of TAR2DAY. Membership of TAR2DAY<br />
                        offers variety of benefits to register for college events and create event for<br />
                        advertising. Click on the button below to sign up now.
                    </p>
                </div>

                <asp:Button runat="server" CssClass="login-signup-button" Height="50px" Width="350px" Text="Sign Up" />
            </div>

            <div id="login">
                   
                    <div id="login-div">
                        <label>Login</label>
                    </div>

                    <div id="login-container" style="height:81px;display:none">
                        <div id="login-error" style="background-color:#FDE1DF;color:red;font-size:15px;margin-left:-40px;padding-left:25px;padding-top:3px;padding-bottom:3px;width:425px;display:none;margin-top:0px;margin-left:0px;position:absolute;z-index:9999">
                                <pre id="error-output" style="font-family:sans-serif"></pre>
                        </div>
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

                        <div class="forget-password">
                            <asp:HyperLink runat="server" Text="Forget Password?" CssClass="forget-hyper"></asp:HyperLink>
                        </div>

                        <div class="form-group">
                            <div class="login-button">
                                <button id="btn-submit" type="submit" onclick="return checkValidation()">Log In</button>
                            </div>
                        </div>
                    </div>

                    
                    <div class="login-button-div">
                        <asp:HyperLink runat="server" CssClass="no-account-signup" Text="Don't have an account? Sign up!"></asp:HyperLink>
                    </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
