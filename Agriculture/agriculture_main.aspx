<%@ Page Title="" Language="C#" MasterPageFile="~/inner_master.master" AutoEventWireup="true" CodeFile="agriculture_main.aspx.cs" Inherits="_Default" %>

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
            width: 258px;
        }
        .auto-style6 {
            margin-top: 7px;
        }
        .auto-style1 {
            height: 157px;
            width: 247px;
        }
        .auto-style10 {
            font-size: xx-large;
        }
        .auto-style9 {
            height: 576px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="204px">
            <asp:Panel ID="Panel2" runat="server" style="text-align: center; margin-bottom: 0px;" Height="202px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="auto-style1" src="../images/Cart.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="115px" ImageUrl="~/images/Agri_4.jpg" style="text-align: center" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="184px" ImageUrl="~/images/Agricultue4.png" />
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
                            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="/Agriculture/agriculture_rate_gov.aspx" style="text-align: center"><span class="auto-style10">বাজার - দর ( সরকারি )</span></a><br class="auto-style10" />
                            <br class="auto-style10" />
                            <br class="auto-style10" />
                            <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><a href="/Agriculture/agriculture_rate_other.aspx"><span class="auto-style10">বাজার - দর ( অন্যান্য )</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br class="auto-style10" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/ICT4D png/kisan-call-centre.png" Width="153px" />
                            <a href="tel:1800-180-1551"><span class="auto-style10">কিষান কল সেন্টার</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br class="auto-style10" />
                            <br />
                            <br class="auto-style10" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="tel:1800-180-3001"><span class="auto-style10">কৃষি সহায়তা </span></a>
                            &nbsp;
                            <br class="auto-style10" />
                            <br class="auto-style10" />
                            <br class="auto-style10" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10"><a href="tel:1800-11-4000">ক্রেতা সুরক্ষা </a></span>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Agriculture/CropsInSeasons.aspx">CROPS IN SEASONS</asp:HyperLink>
                        </div>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
            </table>
    </asp:Content>


