<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WinterCrops.aspx.cs" Inherits="Agriculture_WinterCrops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 375px;
            height: 300px;
        }
        .auto-style3 {
            width: 375px;
            height: 301px;
        }
        .auto-style4 {
            height: 301px;
        }
        .auto-style5 {
            height: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:ImageButton ID="ImageButton3" Width="250px" Height="175px" runat="server" ImageUrl="~/images/lolwa/wheat.jpg" OnClick="ImageButton3_Click" />
                    <br />
                    <br />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="WheatInfo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ImageButton ID="ImageButton4" Width="250px" Height="175px" runat="server" ImageUrl="~/images/lolwa/barley.jpeg" OnClick="ImageButton4_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="BarleyInfo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
