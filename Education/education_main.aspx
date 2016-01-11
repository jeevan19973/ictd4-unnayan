<%@ Page Title="" Language="C#" MasterPageFile="~/inner_master.master" AutoEventWireup="true" CodeFile="education_main.aspx.cs" Inherits="_Default" %>

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
            height: 930px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="217px">
            <asp:Panel ID="Panel2" runat="server" style="text-align: center" Height="206px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="auto-style1" src="../images/Cart.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="115px" ImageUrl="~/images/Edu4.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="auto-style2" src="../images/Agricultue4.png" /><br /><br /></asp:Panel>
            <br />
            &nbsp;</asp:Panel>
        <table class="auto-style6">
            <tr>
                <td class="auto-style20">
                <img class="auto-style3" src="../images/Desin%20template%20-2.png" /></td>
                <td class="auto-style19">
                    <asp:Panel ID="Panel3" runat="server" Height="940px">
                        <div class="auto-style9">
                            &nbsp;&nbsp; &nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<a href="education_rabi.aspx"><asp:Image ID="Image4" runat="server" ImageUrl="~/images/ICT4D png/RBU-LOGO.png" /></a>
                            &nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Education/education_rabi.aspx">রবীন্দ্র মুক্ত বিদ্যালয় </asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/learningAndStudying.jpg" OnClick="ImageButton5_Click1" />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="education_rash.aspx"><asp:Image ID="Image5" runat="server" Height="129px" ImageUrl="~/images/ICT4D png/NIOS.png" Width="127px" />
                            </a>&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Education/education_rash.aspx">রাষ্ট্রীয় মুক্ত বিদ্যালয়ী শিক্ষা সংস্থান </asp:HyperLink>
                            &nbsp;<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="education_netaji.aspx"><asp:Image ID="Image6" runat="server" Height="122px" ImageUrl="~/images/ICT4D png/NSUB.png" Width="127px" />
                            </a>&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Education/education_netaji.aspx"> নেতাজী সুভাষ মুক্ত বিশ্ববিদ্যালয়</asp:HyperLink>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image9" runat="server" Height="120px" ImageUrl="~/images/ICT4D png/ignu.png" Width="128px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Education/education_indira.aspx">ইন্দিরা গান্ধী জাতীয় মুক্ত বিশ্ববিদ্যালয়</asp:HyperLink>
                            &nbsp;<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image8" runat="server" Height="100px" ImageUrl="~/images/ICT4D png/dd_doordarshan_hd.png" Width="125px" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Education/education_gyanbani.aspx">জ্ঞানবাণী </asp:HyperLink>
                            &nbsp;<br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="education_gyandarshan.aspx"><asp:Image ID="Image7" runat="server" Height="57px" ImageUrl="~/images/ICT4D png/FormImages-gyandarshan.png" Width="131px" />
                            </a>&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Education/education_gyandarshan.aspx">জ্ঞানদর্শন</asp:HyperLink>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </asp:Panel>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            </table>
    </asp:Content>


