<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="EventManagementSystem.Testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
             <div class="eventDetail-EventImage">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="lblEventImage" CssClass="lblEventImage" runat="server" Text="Event Image"></asp:Label>

                        <asp:FileUpload ID="FUImage" runat="server" style="display: none;"/>

                        <asp:ImageButton  ID="imgAddImage" CssClass="imgAddImage" onClientClick="chooseFile();" OnClick="createEvent" runat="server" AutoPostBack="False" ImageUrl="~/Images/Event/ADD_IMAGE.png" />
                            
                        <script type="text/javascript">
                            function chooseFile() {
                                document.getElementById("FUImage").click();
                            }
                        </script>
                 
                  
                    </div>
    </div>
    </form>
</body>
</html>
