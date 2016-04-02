<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadProbs2.aspx.cs" Inherits="uploadProbs2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div style="margin-left: 50px; margin-top: 20px;">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF6600" Text="Upload your problems"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/healthServices/home.aspx">home</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#6699FF" Text="Images: (Upload images of your symptoms)"></asp:Label>
        <br />
        <br />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;or&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Capture from cam" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#6699FF" Text="Videos"></asp:Label>
        <br />
        <br />
        <asp:FileUpload ID="FileUpload2" runat="server" />
        &nbsp;or&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Capture from cam" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#6699FF" Text="Report:"></asp:Label>
        <br />
        <br />
        <asp:FileUpload ID="FileUpload3" runat="server" />
        &nbsp;or&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Fill Report" OnClick="Button4_Click" />
        &nbsp;&nbsp;&nbsp;
        or&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Scan " OnClick="Button5_Click" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Submit" />
    
    </div>
    </form>
</body>
</html>


