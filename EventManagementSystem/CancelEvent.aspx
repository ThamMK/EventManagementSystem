<%@ Page Title="" Language="C#" MasterPageFile="~/TestMaster.Master" AutoEventWireup="true" CodeBehind="CancelEvent.aspx.cs" Inherits="EventManagementSystem.CancelEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        a.cancel-event-button:link{
            text-decoration:none;
            color:white;
            text-align:center;
            vertical-align:middle;
            display:table-cell;
            width:130px;
            height:30px;
            font-size:15px;
            padding-top:12px;
        }
        
        .cancel-event-button{
            width:130px;
            height:30px;
            background-color:#DD6B55;
            font-size:15px;
            color:white;
            float:right;
            border: 0.5px solid #DD6B55;
        }

        .cancel-event-button:hover{
            background-color:#D46752;
            border: 0.5px solid #D46752;
        }

        .site__title {
            position: relative;
            font-size: 24px;
            line-height: 24px;
            color: #435a65;
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

    </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script type="text/javascript">

        function deletealert(ctl, e) {
            var defaultAction = $(ctl).prop("href");
            e.preventDefault();
            swal({
                title: "Are you sure yoou want delete?",
                text: "You will not be able to recover this after delete!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function (isConfirm) {
                if (isConfirm) {
                    swal({title: "Deleted!", text: "Your registered event has been deleted.", type: "success"},
                    function () {
                        // RESUME THE DEFAULT LINK ACTION
                        window.location.href = defaultAction;
                        return true;
                    });
                } else {
                    swal("Cancelled", "Your registered event is safe :)", "error");
                    return false;
                }
            });
        }
        
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div style="margin-top:130px;margin-left:50px;text-align:center;margin-bottom:40px;">
            <h2 class="site__title">My Upcoming Event</h2>
        </div>
        <div style="font-family:sans-serif">
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <div style="clear:both;margin-left:130px;margin-top:30px;border:0.5px solid dimgrey;width:80%;height:151.5px;background-color:white">
                        <asp:Image runat="server" ImageUrl='<%# ((EventManagementSystem.Event)Container.DataItem).imagePath.ToString() %>' style="height:150px;width:250px;float:left;margin-right:20px" /><br>
                        <div style="background-color:deepskyblue;width:100%;height:30px;margin-top:-19px;padding-top:10px;">
                            <asp:Label runat="server" ID="lblItem" style="color:white;font-size:18px;font-weight:bold" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventName.ToString() %>" /><br />
                            <div style="float:right;margin-right:20px;margin-top:-22px;color:white;">
                                <span style="margin-right:5px;">Price : </span><asp:Label runat="server" style="font-weight:bold;font-size:18px;" Text="<%#((EventManagementSystem.Event)Container.DataItem).eventPrice.ToString() %>"></asp:Label>
                            </div>
                        </div>
                        <div style="margin-top:20px;font-size:16px;width:27%;float:left">
                            <div style="margin-bottom:5px;">

                                <span>Date : </span>
                                <asp:Label runat="server" Text='<%# ((EventManagementSystem.Event)Container.DataItem).eventStartDate + " - " + ((EventManagementSystem.Event)Container.DataItem).eventEndDate.ToString() %>'
                                    Visible="<%# !(((EventManagementSystem.Event)Container.DataItem).eventStartDate.Equals(((EventManagementSystem.Event)Container.DataItem).eventEndDate)) %>"></asp:Label>
                                <asp:Label runat="server" Text='<%# ((EventManagementSystem.Event)Container.DataItem).eventStartDate %>'
                                    Visible="<%# ((EventManagementSystem.Event)Container.DataItem).eventStartDate.Equals(((EventManagementSystem.Event)Container.DataItem).eventEndDate) %>"></asp:Label> 
    
                            </div>

                            <div style="margin-bottom:5px;">

                                <span ">Time : </span>
                                <asp:Label runat="server" Text='<%# ((EventManagementSystem.Event)Container.DataItem).eventStartTime + " - " + ((EventManagementSystem.Event)Container.DataItem).eventEndTime.ToString() %>'
                                    Visible="<%# !(((EventManagementSystem.Event)Container.DataItem).eventStartTime.Equals(((EventManagementSystem.Event)Container.DataItem).eventEndTime)) %>"></asp:Label>
                                <asp:Label runat="server" Text='<%# ((EventManagementSystem.Event)Container.DataItem).eventStartTime %>'
                                    Visible="<%# ((EventManagementSystem.Event)Container.DataItem).eventStartTime.Equals(((EventManagementSystem.Event)Container.DataItem).eventEndTime) %>"></asp:Label> 
    
                            </div>

                            <span >Venue : </span><asp:Label runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventVenue.ToString() %>"></asp:Label>
                        </div>

                        <div style="margin-top:20px;font-size:16px;float:left">
                            <div style="margin-bottom:5px;">
                                <span>Category : </span><asp:Label runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventCategory.ToString() %>"></asp:Label>
                            </div>

                            <div style="margin-bottom:5px;">
                                <span>Organizer : </span><asp:Label runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventOrganizer.ToString() %>"></asp:Label>
                            </div>

                            <span>Email : </span><asp:HyperLink runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).contactPerson.ToString() %>" NavigateUrl='<%# "mailto:" + ((EventManagementSystem.Event)Container.DataItem).contactPerson.ToString() %>'></asp:HyperLink>

                        </div>
                        <div style="float:right;margin-right:20px;margin-top:35px;">
                            <asp:LinkButton runat="server" ID="btnCancel" OnClientClick="return deletealert(this, event);" Text="Cancel Event" alternatetext="Delete" CommandName="cancelEvent" CommandArgument="<%#((EventManagementSystem.Event)Container.DataItem).eventName.ToString() %>" CssClass="cancel-event-button"/>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
</asp:Content>
