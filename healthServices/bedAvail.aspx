<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bedAvail.aspx.cs" Inherits="bedAvail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 54%;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: right;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF9933" Text="Bed Availability:"></asp:Label>
        &nbsp;<br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#CC33FF" Text="Hospital Name"></asp:Label>
&nbsp;&nbsp; <br />
                    <br />
                </td>
                <td class="auto-style5">&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#CC33FF" Text="Number of beds"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Apollo :</td>
                <td class="auto-style2">&nbsp; <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Chanakya :</td>
                <td class="auto-style2">&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gautam Buddha :</td>
                <td class="auto-style2">&nbsp;
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Maha Raja :</td>
                <td class="auto-style2">&nbsp;
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="auto-style3">Maha Veer :</td>
                <td class="auto-style2">&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                 </td>
            </tr>
        </table>
        <div class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/healthServices/home.aspx">home</asp:HyperLink>
        <br />
    
        </div>
    
    </div>
    </form>
</body>
</html>
