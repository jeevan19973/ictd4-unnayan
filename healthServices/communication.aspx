<%@ Page Language="C#" AutoEventWireup="true" CodeFile="communication.aspx.cs" Inherits="communication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 245px;
        }
        .auto-style4 {
            width: 245px;
            height: 58px;
        }
        .auto-style5 {
            height: 58px;
        }
        .auto-style6 {
            height: 58px;
            width: 212px;
        }
        .auto-style7 {
            width: 212px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 50px">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF9966" Text="Available People:"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Dr. Alok Kumar
                    <br />
&nbsp;&nbsp;</td>
                <td class="auto-style6">XXXXXXXXX</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Talk" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dr. Somnath<br />
                    <br />
                </td>
                <td class="auto-style7">XXXXXXXXX</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Talk" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dr. Sukumar Garg<br />
                    <br />
                </td>
                <td class="auto-style7">XXXXXXXXX</td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Talk" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dr. Amit Kumar Singh<br />
                    <br />
                </td>
                <td class="auto-style7">XXXXXXXXX</td>
                <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Talk" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dr. Rishi Raj<br />
                    <br />
                </td>
                <td class="auto-style7">XXXXXXXXX</td>
                <td>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Talk" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dr. Abhinav Thakur<br />
                    <br />
                </td>
                <td class="auto-style7">XXXXXXXXX</td>
                <td>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Talk" />
                </td>
            </tr>
        </table>
    


    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/healthServices/home.aspx">home</asp:HyperLink>
    </form>
</body>
</html>
