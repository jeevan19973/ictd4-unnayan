<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ind_hosp.aspx.cs" Inherits="ind_hosp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
            width: 300px;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 191px;
        }
        .auto-style7 {
            width: 457px;
        }
        .auto-style8 {
            width: 60%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="margin-right: 150px; margin-bottom: 0px; margin-left: 150px">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Hospital Name" ForeColor="#CC99FF"></asp:Label>
        <br />
        <br />
        <table class="auto-style8">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="About:" Font-Bold="True" Font-Italic="True" ForeColor="#66CCFF"></asp:Label>
                    <br />
                    ------------------------------------------------<br />
                    ------------------------------------------------<br />
                    ------------------------------------------------<br />
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Health_new/images/rsz_1hospital.png" />
&nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="auto-style8">
            <tr>
                <td style="border: thin solid #FFCC99">No.of Beds Available -
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style8">
            <tr>
                <td style="background-color: #99FFCC">
                    <asp:Label ID="Label4" runat="server" Text="Appointment" Font-Bold="True" Font-Italic="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style6"><br />Dr.Ram</td>
                            <td class="auto-style7"><br />9:30 to 10:30 am</td>
                            <td><br />
                                <asp:Button ID="Button1" runat="server" Text="Get Appointment" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><br />Dr.Ram</td>
                            <td class="auto-style7"><br />10:30 to 11:30 am</td>
                            <td><br />
                                <asp:Button ID="Button2" runat="server" Text="Get Appointment" OnClick="Button2_Click" />
                            </td>
                        </tr>
                       <tr>
                            <td class="auto-style6"><br />Dr.Ram</td>
                            <td class="auto-style7"><br />1:30 to 3:30 pm</td>
                            <td><br />
                                <asp:Button ID="Button3" runat="server" Text="Get Appointment" OnClick="Button3_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><br />Dr.Ram<br /></td>
                            <td class="auto-style7"><br />4:30 to 5:30 pm<br /></td>
                            <td><br />
                                <asp:Button ID="Button4" runat="server" Text="Get Appointment" OnClick="Button4_Click" />
                           <br /> </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
