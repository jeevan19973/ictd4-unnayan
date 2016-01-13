<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
            width: 169px;
        }
        .auto-style13 {
            width: 50%;
        }
        .auto-style14 {
            text-align: right;
            width: 171px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2" style="margin-right: 150px; margin-bottom: 0px; margin-left: 150px">
    
        <div style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Health - Home" ForeColor="#FF5050"></asp:Label>
        </div>
        <br />
        <table class="auto-style13" style="border: thin solid #EFEFEF">
            <tr>
                <td class="auto-style2" style="background-color: #99FFCC">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Diseases"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="seasonal.aspx">Seasonal</asp:HyperLink>
                                : </td>
                            <td class="auto-style6">&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" PostBackUrl="~/seasonal.aspx" ImageUrl="~/images/rsz_picture1.png" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <br />
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="diseases.aspx">All Diseases</asp:HyperLink>
                                :<br />
                                &nbsp; </td>
                            <td class="auto-style6">
                                <br />
                                &nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" PostBackUrl="~/diseases.aspx" ImageUrl="~/images/rsz_picture2.png" />
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style13" style="border: thin solid #EFEFEF">
            <tr>
                <td style="background-color: #99CCFF; text-align: center;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Services"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    Get details like info / no.of beds / appointment
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/rsz_services.jpg" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style14">Search hospitals nearby:</td>
                            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="100px" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>AIIMS Patna</asp:ListItem>
                                    <asp:ListItem>Ford Hospital</asp:ListItem>
                                    <asp:ListItem>Nalanda Hospital</asp:ListItem>
                                    <asp:ListItem>Dharbanga Hospital</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">Search hospitals around India:<br />
                                <br />
                            </td>
                            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100px" AutoPostBack="True">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Apollo Hospitals</asp:ListItem>
                                    <asp:ListItem>Fortis Hospital</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
        <br />
    
    </div>
    </form>
</body>
</html>
