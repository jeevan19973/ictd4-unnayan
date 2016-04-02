<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 246px;
        }
        .auto-style5 {
            width: 271px;
        }
        .auto-style6 {
            width: 294px;
        }
        .auto-style7 {
            width: 177px;
        }
    </style>
</head>
<body>
   



    <form id="form1" runat="server">
    <div style="height: 540px; width: 709px;">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FILE UPLOAD<br />
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:ImageButton ID="Buttonimg" runat="server" ImageUrl="~/images/lolwa/camera.png" Height="125px" Width="183px" OnClick="Buttonimg_Click"/>
                </td>
                <td class="auto-style5">
                    <asp:ImageButton ID="Buttonvid" runat="server" ImageUrl="~/images/lolwa/video.png" Height="125px" Width="183px" OnClick="Buttonvid_Click" />
                </td>
                <td class="auto-style6">
                    <asp:ImageButton ID="Buttonaud" runat="server" ImageUrl="~/images/lolwa/audio.png" Height="125px" Width="183px" OnClick="Buttonaud_Click"/>
                </td>
                <td class="auto-style7">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/lolwa/txt.png" Height="120px" Width="117px" OnClick="ImageButton1_Click1"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:FileUpload ID="Uploadim" runat="server" accept="image/*" capture ="camera" Visible ="false" />
                </td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" accept="video/*" capture="camera" Visible="false" />
                </td>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload2" runat="server" accept="audio/*" Visible="false" />
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload this file" />
        <br />
        <br />
        <asp:Label ID="details" runat="server" Text="Upload Details"></asp:Label>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Digital Humanities/showuploadimages.aspx">User Output</asp:HyperLink>
    
        <br />
        <br />
    
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Digital Humanities/geolocation.aspx">See Locations</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
