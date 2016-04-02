<%@ Page Language="C#" AutoEventWireup="true" CodeFile="results.aspx.cs" Inherits="results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 50px">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF9966" Text="Your Results:"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Download Report" OnClick="Button4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Print Report" />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/healthServices/images/lab_report.png" Height="830px" Width="632px" />
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/healthServices/images/results.jpg" />
        <br />
    </div>
    </form>
</body>
</html>
