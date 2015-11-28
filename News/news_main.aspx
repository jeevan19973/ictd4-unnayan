<%@ Page Title="" Language="C#" MasterPageFile="~/inner_master.master" AutoEventWireup="true" CodeFile="~/Health/health_main.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 546px;
            width: 178px;
        }
        .auto-style19 {
            width: 1071px;
        }
        .auto-style20 {
            width: 245px;
        }
        .auto-style1 {
            width: 236px;
            height: 147px;
        }
        .auto-style2 {
            width: 210px;
            height: 184px;
        }
        .auto-style9 {
            text-align: left;
            height: 592px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="217px">
            <asp:Panel ID="Panel2" runat="server" style="text-align: center" Height="206px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="auto-style1" src="../images/news.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="115px" ImageUrl="~/images/Edu4.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="auto-style2" src="../images/News%20and%20weather_MAIN(VERSION1).jpg" /><br /><br /></asp:Panel>
            <br />
            &nbsp;</asp:Panel>
        <table class="auto-style6">
            <tr>
                <td class="auto-style20">
                <img class="auto-style3" src="../images/Desin%20template%20-2.png" /></td>
                <td class="auto-style19">
                    <asp:Panel ID="Panel3" runat="server" Height="578px">
                        <div class="auto-style9">
                            &nbsp;&nbsp; &nbsp;&nbsp;
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="news_abp.aspx"><asp:Image ID="Image4" runat="server" Height="21px" ImageUrl="~/images/ICT4D png/ananda bajar patrika.png" Width="133px" /></a>                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="news_current.aspx"><asp:Image ID="Image5" runat="server" Height="21px" ImageUrl="~/images/ICT4D png/Bartaman_logo.png" Width="93px" /></a>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="news_now.aspx"><asp:Image ID="Image6" runat="server" Height="47px" ImageUrl="~/images/ICT4D png/ei samay.png" Width="106px" />
                            </a>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="news_statesman.aspx"><asp:Image ID="Image7" runat="server" ImageUrl="~/images/ICT4D png/5TATESMAN_LOGO.png" />
                            </a>&nbsp;<br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="news_sanmarg.aspx"><asp:Image ID="Image8" runat="server" Height="23px" ImageUrl="~/images/ICT4D png/sanmarg.png" Width="95px" /></a>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
            </table>
    </asp:Content>


