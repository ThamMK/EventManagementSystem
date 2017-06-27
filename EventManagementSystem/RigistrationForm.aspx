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
                <asp:DropDownList ID="DropDownListYear" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
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
                <label for="country" class="col-sm-3 control-label">Country</label>
                <div class="col-sm-9">
                    <select id="country" class="form-control">
                        <option>Afghanistan</option>
                        <option>Bahamas</option>
                        <option>Cambodia</option>
                        <option>Denmark</option>
                        <option>Ecuador</option>
                        <option>Fiji</option>
                        <option>Gabon</option>
                        <option>Haiti</option>
                    </select>
                </div>
            </div> <!-- /.form-group -->
            <div class="form-group">
                <label class="control-label col-sm-3">Gender</label>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" id="femaleRadio" value="Female"/>Female
                            </label>
                        </div>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" id="maleRadio" value="Male">Male
                            </label>
                        </div>
                        <div class="col-sm-4">
                            <label class="radio-inline">
                                <input type="radio" id="uncknownRadio" value="Unknown">Unknown
                            </label>
                        </div>
                    </div>
                </div>
            </div> <!-- /.form-group -->
            <div class="form-group">
            <label class="control-label col-sm-3">Meal Preference</label>
            <div class="col-sm-9">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="calorieCheckbox" value="Low calorie">Low calorie
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="saltCheckbox" value="Low salt">Low salt
                    </label>
                </div>
            </div>
            </div> <!-- /.form-group -->
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">I accept <a href="#">terms</a>
                        </label>
                    </div>
                </div>
            </div> <!-- /.form-group -->
            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <button type="submit" class="btn btn-primary btn-block">Register</button>
                </div>
            </div>
               
        </form>
        <!-- /form -->
    </body>
</html>
