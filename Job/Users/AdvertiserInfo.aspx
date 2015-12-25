<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvertiserInfo.aspx.cs" Inherits="Job_Users_AdvertiserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: right;
            width: 171px;
        }

        .auto-style3 {
            width: 171px;
        }

        .auto-style4 {
            width: 205px;
        }

        .auto-style5 {
            color: #FF0000;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            font-size: xx-large;
        }

        .auto-style8 {
            text-align: right;
            width: 171px;
            height: 26px;
        }

        .auto-style9 {
            width: 205px;
            height: 26px;
        }

        .auto-style10 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="auto-style6">
                <span class="auto-style7"><strong>Advertisers, Enter your information here..................</strong></span><br />
                <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: right">Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Usn" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Usn" runat="server" ControlToValidate="TextBox_Usn" CssClass="auto-style5" ErrorMessage="Name is required" ValidationGroup="v"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Village</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Village" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Village" runat="server" ControlToValidate="TextBox_Village" CssClass="auto-style5" ErrorMessage="Village name is required" ValidationGroup="v"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Contact Number</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox_Contact" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Contact" runat="server" ControlToValidate="TextBox_Contact" CssClass="auto-style5" ErrorMessage="Contact Number is required" ValidationGroup="v"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Address</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox_Address" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Address" runat="server" ControlToValidate="TextBox_Address" CssClass="auto-style5" ErrorMessage="Address is required" ValidationGroup="v"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Skills you are looking for</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label_SkillsSet" runat="server"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>

                </tr>
            </table>

        </div>
        <div>
            <asp:ImageButton ID="ImageButton_Fishing" runat="server" Height="150px" ImageUrl="~/images/Job_Skills/download.jpg" Width="150px" OnClick="Button_Fishing_Click" />
            <asp:ImageButton ID="ImageButton_Handicraft" runat="server" Height="150px" ImageUrl="~/images/Job_Skills/images.jpg" Width="150px" OnClick="Button_Handicraft_Click" />
            <asp:ImageButton ID="ImageButton_Farming" runat="server" Height="150px" ImageUrl="~/images/Job_Skills/indian-farmer.jpg" Width="150px" OnClick="Button_Farming_Click" />
            <asp:ImageButton ID="ImageButton_Teaching" runat="server" Height="150px" ImageUrl="~/images/Job_Skills/Teaching_in_Indian_Village_Schools_1.jpg" Width="150px" OnClick="Button_Teaching_Click" />
            <asp:ImageButton ID="ImageButton_Weaving" runat="server" Height="150px" ImageUrl="~/images/Job_Skills/Weaving_in_Indian_Villages.jpg" Width="150px" OnClick="Button_Weaving_Click" />

            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Fishing" runat="server" OnClick="Button_Fishing_Click" Text="Fishing" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Handicraft" runat="server" Text="Handicraft" OnClick="Button_Handicraft_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Farming" runat="server" Text="Farming" OnClick="Button_Farming_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Teaching" runat="server" Text="Teaching" OnClick="Button_Teaching_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Weaving" runat="server" Text="Weaving" OnClick="Button_Weaving_Click" />
            <br />
        </div>
        <div style="margin-left: 160px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
&nbsp;<asp:Button ID="Button_RegForm_Submit" runat="server" OnClick="Button_RegForm_Submit_Click" Text="Submit" Width="100px" ValidationGroup="v" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label_AlreadyExists" runat="server" Text="You have already selected this skills for advertisement" Visible="False"></asp:Label>
            &nbsp;
                    </div>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
