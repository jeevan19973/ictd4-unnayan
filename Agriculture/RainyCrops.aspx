<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RainyCrops.aspx.cs" Inherits="Agriculture_RainyCrops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 100px;
        }
        .auto-style2 {
            width: 377px;
        }
        .auto-style3 {
            width: 377px;
            height: 265px;
        }
        .auto-style4 {
            height: 265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
    
        <asp:ImageButton ID="ImageButton1" Height="175px" Width="250px" runat ="server" ImageUrl="~/images/lolwa/rice.jpg" OnClick="ImageButton1_Click" />
    
                </td>
                <td class="auto-style4">
                    <asp:Label ID="RiceInfo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:ImageButton ID="ImageButton2" Height="175px" Width="250px" runat="server" ImageUrl="~/images/lolwa/maize.jpg" OnClick="ImageButton2_Click" />
    
                </td>
                <td>
                    <asp:Label ID="MaizeInfo" runat="server"></asp:Label>
&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
