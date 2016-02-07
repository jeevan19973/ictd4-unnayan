<%@ Page Title="" Language="C#" MasterPageFile="~/inner_master.master" AutoEventWireup="true" CodeFile="culture_main.aspx.cs" Inherits="_Default" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="217px">
            <asp:Panel ID="Panel2" runat="server" style="text-align: center" Height="206px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="auto-style1" src="../images/Peacock.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/images/Culture4.jpg" style="text-align: center" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="184px" ImageUrl="~/images/Culture_MAIN(VERSION4).png" />
                &nbsp;
                <br />
                <br />
                <br />
            </asp:Panel>
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Culture/culture_history.aspx">ইতিহাস</asp:HyperLink>
                            <br />&nbsp;
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Culture/culture_tradition.aspx">পরম্পরা</asp:HyperLink>
                            &nbsp;
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Culture/culture_festival.aspx">সাংস্কৃতিক অনুষ্ঠান</asp:HyperLink>
                            &nbsp;<br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Culture/culture_list.aspx">অনুষ্ঠান সূচি</asp:HyperLink>
&nbsp;
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Culture/culture_news.aspx">স্থানীয় খবর</asp:HyperLink>
                            &nbsp;<br />
                            <br />
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="162px" ImageUrl="~/images/lolwa/upload.jpg" OnClick="ImageButton5_Click" Width="164px" />
                            <br />
                        </div>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
            </table>
    </asp:Content>


