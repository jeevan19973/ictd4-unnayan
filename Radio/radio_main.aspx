<%@ Page Title="" Language="C#" MasterPageFile="~/inner_master.master" AutoEventWireup="true" CodeFile="radio_main.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 174px;
            height: 170px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" Height="217px">
            <asp:Panel ID="Panel2" runat="server" style="text-align: center" Height="206px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img class="auto-style1" src="../images/Radio.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="115px" ImageUrl="~/images/Radio.jpg" style="text-align: center" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="184px" ImageUrl="~/images/Radio_MAIN(VERSION4)150px.png" />
                &nbsp;
                <br /></asp:Panel>
            <br />
            &nbsp;</asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <iframe src="http://unnayan.radio12345.com/" width="100%" height="534px" ></iframe>
    </asp:Panel>
    </asp:Content>


