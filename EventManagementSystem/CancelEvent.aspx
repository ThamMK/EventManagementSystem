<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="CancelEvent.aspx.cs" Inherits="EventManagementSystem.CancelEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <ItemTemplate>
            <div style="clear:both;margin-left:50px;margin-top:30px;border:0.5px solid dimgrey;width:92%;height:151.5px;background-color:white">
                <asp:Image runat="server" Width="220px" Height="150px" ImageUrl="<%# ((EventManagementSystem.Event)Container.DataItem).imagePath.ToString() %>" style="float:left;margin-right:20px" /><br />
                <div style="background-color:deepskyblue;width:100%;height:35px;margin-top:-20px;padding-top:5px;">
                    <asp:Label ID="lblItem" runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventName.ToString() %>" style="color:white;font-size:18px;font-weight:bold" /><br />
                </div>
                <asp:Label ID="Label1" runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventDate.ToString() %>"/><br />
                <asp:Label ID="Label2" runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventTime.ToString() %>"/><br />
                <asp:Label ID="Label3" runat="server" Text="<%# ((EventManagementSystem.Event)Container.DataItem).eventVenue.ToString() %>"/><br />
                <asp:Button runat="server" ID="btnCancel" CommandName="cancelEvent" Text="Cancel Event" CommandArgument="<%# ((EventManagementSystem.Event)Container.DataItem).eventName.ToString() %>" OnClientClick="return confirm('Are you sure you want to delete this event?');" AlternateText="Delete"/>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
