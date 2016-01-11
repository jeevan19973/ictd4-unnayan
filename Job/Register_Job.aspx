<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_Job.aspx.cs" Inherits="Job_Register_Job" %>

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
            &nbsp;<span class="auto-style7"><strong>Create a new account here..................</strong></span><br />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="text-align: right">Username</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox_Usn" runat="server" Width="200px"  ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Usn" runat="server" ControlToValidate="TextBox_Usn" CssClass="auto-style5" ErrorMessage="Username is required" ValidationGroup="req"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox_Pass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Pass" runat="server" ControlToValidate="TextBox_Pass" CssClass="auto-style5" ErrorMessage="Password is required" ValidationGroup="req"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Village</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox_Village" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Village" runat="server" ControlToValidate="TextBox_Village" CssClass="auto-style5" ErrorMessage="Village name is required" ValidationGroup="req"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact Number</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox_Contact" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Contact" runat="server" ControlToValidate="TextBox_Contact" CssClass="auto-style5" ErrorMessage="Contact Number is required" ValidationGroup="req"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Address</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox_Address" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Address" runat="server" ControlToValidate="TextBox_Address" CssClass="auto-style5" ErrorMessage="Address is required" ValidationGroup="req"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                
            </tr>
        </table>
    
    </div>
        <div style="margin-left: 160px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_RegForm_Submit" runat="server"  OnClick="Button_RegForm_Submit_Click" Text="Submit" Width="100px" ValidationGroup="req" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_Usn" runat="server" Visible="False">It seems that the username is already taken, please choose another username</asp:Label>
        </div>
        <asp:Button ID="Button1" runat="server" CausesValidation="False" OnClick="Button1_Click" Text="Already a User" />
    </form>
</body>
</html>
