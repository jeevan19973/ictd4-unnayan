<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news_abp.aspx.cs" Inherits="news_abp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 180px;
            height: 188px;
        }
        .auto-style6 {
            width: 100%;
            height: 546px;
        }
        .auto-style7 {
            width: 225px;
        }
        .auto-style3 {
            width: 178px;
            height: 546px;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style14 {
            width: 778px;
        }
        .auto-style18 {
            width: 50px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Panel ID="Panel2" runat="server" style="text-align: center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="auto-style1" src="../images/news.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/images/News4.jpg" style="text-align: center" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="184px" ImageUrl="~/images/Job_MAIN(VERSION4).png" />
                &nbsp;
                <br />
                <br />
                <br />
            </asp:Panel>
            <br />
            &nbsp;</asp:Panel>
        <table class="auto-style6">
            <tr>
                <td class="auto-style7">
                <img class="auto-style3" src="../images/Desin%20template%20-2.png" /></td>
                <td>
                    <asp:Panel ID="Panel3" runat="server" Height="558px">
                        <div class="auto-style9">
                            <iframe id="I1" name="I1" src="http://www.anandabazar.com/" style="width: 1012px; height: 534px"></iframe>
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            </table>
    <table class="auto-style8">
        <tr>
            <td class="auto-style14">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" ImageUrl="~/images/Logo 2.jpg" Width="150px" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Radio_MAIN(VERSION4)150px.png" Width="170px" />
                &nbsp;&nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/Emergency numbers_MAIN(VERSION4).png" Width="170px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/Feedback_MAIN(VERSION4).png" Width="170px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td>
                <img class="auto-style18" src="images/Facebook.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
