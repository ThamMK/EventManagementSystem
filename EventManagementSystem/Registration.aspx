<%@ Page Title="" Language="C#" MasterPageFile="~/TestMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EventManagementSystem.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    
        <title></title>
        
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <link href="Scripts/RegistrationForm.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml"> 
        <body>
            <div class="top-background-container">
                <div style="padding-left:30%">
                    <div class="sign-up-header">
                        <asp:Label ID="lblRegistrationForm" CssClass="lblRegistrationForm" Text="Sign up" runat="server"></asp:Label>
                    </div>
                    <div class="header-tag">
                        <asp:Label ID="lblRegistrationNote" CssClass="lblRegistrationNote" Text="Come and join us to discover new experiences." runat="server"></asp:Label>
                    </div>
                    <div class="container-perosnal-information">
                        <div class="header-container">
                            <asp:Image ID="Image1" CssClass="header-image" ImageUrl="~/Images/Registeration/1.png" runat="server" />
                            <div class="header-label-container">
                                <asp:Label ID="lblPersonalInformation" CssClass="header-label" Text="Personal Information" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblFullName" CssClass="content-label" Text="Full Name" runat="server"></asp:Label>
                        
                            <asp:TextBox ID="txtName" CssClass="content-input" runat="server"></asp:TextBox>
                        
                            <asp:Label ID="lblEMFullName" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                        <div class="container-DOB">
                            <asp:Label ID="lblDOB" CssClass="content-label" Text="Date Of Birth" runat="server"></asp:Label>
                            <div class="container-DOB-ddl">
                                <div class="container-DOB-ddlMonth">
                                    <asp:DropDownList ID="DropDownListMonth" CssClass="DropDownListMonth" runat="server" OnSelectedIndexChanged="DropDownListMonth_SelectedIndexChanged1" AutoPostBack="True">
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
                                </div>
                                <div class="container-DOB-ddlDay">
                                    <asp:DropDownList ID="DropDownListDay" CssClass="DropDownListDay" runat="server" OnSelectedIndexChanged="DropDownListDay_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                                </div>
                                <div class="container-DOB-ddlYear">
                                    <asp:DropDownList ID="DropDownListYear" CssClass="DropDownListYear" runat="server" OnSelectedIndexChanged="DropDownListYear_SelectedIndexChanged1" AutoPostBack="True"></asp:DropDownList>
                                </div>
                                <asp:Label ID="lblEMDOB" CssClass="error-message" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="container-gender">
                            <asp:Label ID="Gender" CssClass="content-label" Text="Gender" runat="server"></asp:Label>
                            <div class="container-gender-selection">
                                <asp:RadioButtonList ID="RadioButtonList1"  runat="server" RepeatDirection="Vertical" RepeatColumns="2">
                                    <asp:ListItem Selected ="True" Class="ItemMale">Male</asp:ListItem>
                                    <asp:ListItem Class="ItemFemale">Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="middle-background-container">
                <div style="padding-left:30%;">
                    <div class="container-student-information">
                        <div class="header-container">
                            <asp:Image ID="Image2" CssClass="header-image" ImageUrl="~/Images/Registeration/2.png" runat="server" />
                            <div class="header-label-container">
                                <asp:Label ID="lblStudentInformation" CssClass="header-label" Text="Student Information" runat="server"></asp:Label>
                            </div>
                        
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblStudentID" CssClass="content-label" Text="Student ID" runat="server"></asp:Label>
                            <asp:TextBox ID="txtStudentID" CssClass="content-input" placeholder="Example: 1620345" runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMStudentID" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblStudentCourse" CssClass="content-label" Text="Student Course" runat="server"></asp:Label>
                            <asp:TextBox ID="txtStudentCourse" CssClass="content-input" runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMStudentCourse" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblStudentSociety" CssClass="content-label" Text="Are you in any society?" runat="server"></asp:Label>
                            <asp:TextBox ID="txtStudentSociety" CssClass="content-input" placeholder="Example: No. or Example: Yes, Chinese scociety." runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMStudentSociety" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-background-container">
                <div style="padding-left:30%">
                    <div class="container-account-information">
                        <div class="header-container">
                            <asp:Image ID="Image3" CssClass="header-image" ImageUrl="~/Images/Registeration/3.png" runat="server" />
                            <div class="header-label-container">
                                <asp:Label ID="lblAccountInformation" CssClass="header-label" Text="Account Information" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblUsername" CssClass="content-label" Text="Username" runat="server"></asp:Label>
                            <asp:TextBox ID="txtUsername" CssClass="content-input" placeholder="You will be using this username to login." runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMUsername" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblEmail" CssClass="content-label" Text="Email" runat="server"></asp:Label>
                            <asp:TextBox ID="txtEmail" CssClass="content-input" runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMEmail" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblPhoneNo" CssClass="content-label" Text="Phone Number" runat="server"></asp:Label>
                            <asp:TextBox ID="txtPhoneNo" CssClass="content-input" placeholder="Example: 012-3456789" runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMPhoneNo" CssClass="eror-message" runat="server"></asp:Label>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblPassword" CssClass="content-label" Text="Password" runat="server"></asp:Label>
                            <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="content-input" runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMPassword" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                        <div class="container-section-holder">
                            <asp:Label ID="lblPasswordConfirmation" CssClass="content-label" Text="Confirm Password" runat="server"></asp:Label>
                            <asp:TextBox ID="txtPasswordConfirmation" TextMode="Password" CssClass="content-input" placeholder="Please re-enter your password here." runat="server"></asp:TextBox>
                            <asp:Label ID="lblEMPasswordConfirmation" CssClass="error-message" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="container-button">
                        <div class="container-button-submit">
                            <asp:Button ID="btnSubmit" CssClass="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        </div>
                        <div class="container-button-cancel">
                            <asp:Button ID="btnCancel" CssClass="btnCancel" runat="server" Text="Cancel" PostBackUrl="~/Homepage.aspx" />
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>
</asp:Content>
