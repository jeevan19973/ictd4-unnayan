<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hospitals.aspx.cs" Inherits="hospitals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 53%;
        }
        .auto-style2 {
            margin-left: 41px;
        }
        .auto-style3 {
            width: 217px;
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
            width: 325px;
        }
    </style>
    </head>
<body>
  
      
   
    <form id="form1" runat="server" style="margin-left: 50px">
        <br />
   
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF9933" Text="Select a hospital"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="300px">
                        <asp:ListItem>Apollo</asp:ListItem>
                        <asp:ListItem>Chanakya</asp:ListItem>
                        <asp:ListItem>Gautam Buddha</asp:ListItem>
                        <asp:ListItem>Maha Raja</asp:ListItem>
                        <asp:ListItem>Ashoka</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td class="auto-style4">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="203px" Width="379px" CssClass="auto-style2" TextMode="MultiLine" ReadOnly="True">
Doctors:
Name: Dr.Chakraborthy Ms.
Name: Dr.Asho kumar Md., Ms. 
Name: Dr.Omprakash Md.
                    </asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
      
 
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/healthServices/home.aspx">home</asp:HyperLink>
      
 
    </form>
</body>
</html>
