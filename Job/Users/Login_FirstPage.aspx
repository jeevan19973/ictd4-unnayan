<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_FirstPage.aspx.cs" Inherits="Job_Users_Login_FirstPage" %>

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
            width: 187px;
        }
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            width: 131px;
        }
        .auto-style5 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Username</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox_Username" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Usn" runat="server" ControlToValidate="TextBox_Username" ErrorMessage="Username is required" ValidationGroup="abc"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox_Password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Password" ErrorMessage="RequiredFieldValidator" ValidationGroup="abc"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" ValidationGroup="abc" />
                </td>
                <td>
                    <asp:Label ID="Label_Error" runat="server" Text="Username/passwrod is wrong" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    <p class="auto-style5">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Not a User:Register" />
        </p>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
            <strong>Search for Employess</strong></p>
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
        <p style="margin-left: 520px">
            <asp:Button ID="Button_Advertise" runat="server" OnClick="Button_Advertise_Click" Text="Advertise" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_CareerAdvice" runat="server" OnClick="Button_CareerAdvice_Click" Text="Get Some Career Advice" />
        </p>
        <p class="auto-style5"><strong>People with selcted skills are shown here</strong><asp:GridView ID="GridView_UserData" runat="server" AutoGenerateColumns="False" DataKeyNames="Username"  >
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Village" HeaderText="Village" SortExpression="Village" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
        </asp:GridView></p>
    </form>
    </body>
</html>
