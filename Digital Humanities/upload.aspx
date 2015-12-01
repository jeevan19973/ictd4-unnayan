<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 540px; width: 709px;">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FILE UPLOAD<br />
        <asp:FileUpload ID="Uploadim" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload this file" />
        <br />
        <br />
        <asp:Label ID="details" runat="server" Text="Upload Details"></asp:Label>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Digital Humanities/showuploadimages.aspx">See Images</asp:HyperLink>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Digital Humanities/watch videos.aspx">Watch Videos</asp:HyperLink>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Digital Humanities/showaudios.aspx">Listen audio</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
