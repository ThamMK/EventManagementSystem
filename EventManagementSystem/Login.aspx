<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainPage.Master" CodeBehind="Login.aspx.cs" Inherits="EventManagementSystem.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Scripts/Login.css" rel="stylesheet" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


    <div id="background">
        <div id="login">
            <div class="login-div">
                <label>Login</label>
            </div>
            <form class="form-horizontal">
                

                <div class="form-group">
                
                <label class="control-label col-sm-2" for="email">Email</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="email" placeholder="Enter email"/>
                </div>
                </div>
                <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password</label>
                <div class="col-sm-10"> 
                    <input type="password" class="form-control" id="pwd" placeholder="Enter password"/>
                </div>
                </div>
                
                <div class="form-group"> 
                <div class="col-sm-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Submit</button>
                </div>
                </div>
            </form>
            <div class="login-div">
                <asp:HyperLink ID="HyperLink1" runat="server">Don't have an account? Sign up!</asp:HyperLink>
            </div>
        </div>
    </div>


</body>
</html>
</asp:Content>