<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="TestComfirmBox.aspx.cs" Inherits="EventManagementSystem.TestComfirmBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    
    <style>
        #white-background{
            display:none;
            width:100%;
            height:100%;
            position:fixed;
            top:0px;
            left:0px;
            background-color:#fefefe;
            opacity:0.7;
            z-index:9999;
        }

        #dlgbox{
            display:none;
            position:fixed;
            width:480px;
            z-index:9999;
            border-radius:10px;
            background-color:#7c7d7e;
        }

        #dlg-header{
            background-color:#6d84b4;
            color:white;
            font-size:20px;
            padding:10px;
            margin:10px 10px 10px 10px;
        }

        #dlg-body{
            background-color:white;
            color:black;
            font-size:20px;
            padding:10px;
            margin:0px 10px 10px 10px;
        }

        #dlg-footer{
            background-color:#f2f2f2;
            text-align:right;
            font-size:20px;
            padding:10px;
            margin:10px 10px 10px 10px;
        }

        #dlg-footer button{
            background-color:#6d84b4;
            color:white;
            padding:5px;
            border:0px;
        }
    </style>

    <script type="text/javascript">
//        function dlgLogin() {
//            var whitebg = document.getElementById("white-background")
//            var dlg = document.getElementById("dlgbox")
//            whitebg.style.display = "none";
//            dlg.style.display = "none"
//        }

//        function showDialog() {
//            var whitebg = document.getElementById("white-background")
//            var dlg = document.getElementById("dlgbox")
//            whitebg.style.display = "block";
//            dlg.style.display = "block"

 //           var winWidth = window.innerWidth;
//            var winHeight = window.innerHeight;

 //           dlg.style.left = (winWidth / 2) - 480 / 2 + "px";
//            dlg.style.top = "150px"

//            return false;
        //        }



        //$(document).ready(function () {

        //    $("#btnClick").click(function (e) {

        //        e.preventDefault();
        //        $("#dialog").dialog({
        //            resizable: false,
        //            height: "auto",
        //            width: 400,
        //            modal: true,
        //            buttons: {
        //                "Delete events": function () {
        //                    $(this).dialog("close");
        //                    return true;
        //                },
        //                Cancel: function () {
        //                    $(this).dialog("close");
        //                    return false;
        //                }
        //            }
        //        });
        //    });

        //});

        $(document).ready(function () {

            $("#btnClick").click(function (e) {
                e.preventDefault();
                swal({
                    title: "Are you sure?",
                    text: "You will not be able to recover this imaginary file!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Yes, delete it!",
                    cancelButtonText: "No, cancel plx!",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
                function (isConfirm) {
                    if (isConfirm) {
                        swal("Deleted!", "Your imaginary file has been deleted.", "success");
                    } else {
                        swal("Cancelled", "Your imaginary file is safe :)", "error");
                    }
                });
            });
            });

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="white-background"></div>
    <div id="dlgbox">
        <div id="dlg-header">You are logged out</div>
        <div id="dlg-body">Kindly log in to continue</div>
        <div id="dlg-footer">
            <!--<asp:Button runat="server" OnClientClick="return dlgLogin()" Text="Login"></asp:Button>-->
        </div>
    </div>

    <div id="messgae" title="Delete an event?">
        <p>Are you sure?</p>
    </div>

    <h1>Dialog Box Demo</h1>
    <p>Tiis is a dialog box example</p>
    <asp:Button ID="btnClick" runat="server" Text="Click Me" ClientIDMode="Static"></asp:Button>

    <div id="dialog" style="display: none">
        This is a simple popup
    </div>
    <asp:Button ID="btnPopup" runat="server" Text="Show Popup" />

</asp:Content>
