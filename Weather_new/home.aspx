<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style8 {
            width: 76px;
        }
        .auto-style9 {
            width: 75px;
        }
        .auto-style10 {
            width: 86px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="margin-right: 150px; margin-left: 150px">
    
        <asp:Label ID="LabelHeader" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#99FF33" Text="Weather"></asp:Label>
        <br />
        <br />
        <br />
        Enter name of your city:<br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="City"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    
        <br />
        <br />
    
        &nbsp;<asp:Label ID="Label29" runat="server" Font-Bold="True"></asp:Label>
    
        <br />
        <br />
       
        <asp:Panel ID="Panel1" runat="server" Height="711px" Width="50%" Style="margin-left: auto; margin-right: auto;">
            <table class="auto-style4" style="margin: 10px auto 10px auto; width: 100%">
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Min:
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Max:
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Image ID="Image1" runat="server" Width="85px" />
                        <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Min:
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Max:
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Image ID="Image2" runat="server" Width="85px" />
                        <br />
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Min:
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Max:
                        <asp:Label ID="Label11" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Image ID="Image3" runat="server" Width="85px" />
                        <br />
                        <asp:Label ID="Label12" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Min:
                        <asp:Label ID="Label14" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Max:
                        <asp:Label ID="Label15" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Image ID="Image4" runat="server" Width="85px" />
                        <br />
                        <asp:Label ID="Label16" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Min:
                        <asp:Label ID="Label18" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Max:
                        <asp:Label ID="Label19" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Image ID="Image5" runat="server" Width="85px" />
                        <br />
                        <asp:Label ID="Label20" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Min:
                        <asp:Label ID="Label22" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Max:
                        <asp:Label ID="Label23" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Image ID="Image6" runat="server" Width="85px" />
                        <br />
                        <asp:Label ID="Label24" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <br />
                        <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CCFF"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Min:
                        <asp:Label ID="Label26" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">Max:
                        <asp:Label ID="Label27" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Image ID="Image7" runat="server" Width="85px" />
                        <br />
                        <asp:Label ID="Label28" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
           
        </asp:Panel>
           
        <br />
    
    </div>
    </form>
</body>
</html>
