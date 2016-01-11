<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserJobProfile.aspx.cs" Inherits="Job_Users_UserJobProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center" class="auto-style1">
            Welcome 
            <asp:Label ID="Label_Username" runat="server" Style="font-size: large; font-weight: 700"></asp:Label>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_Logout" runat="server" Text="logout" OnClick="Button_Logout_Click" style="text-align: right" />

            <br />

        </div>

        <div class="auto-style1">
            <strong style="text-align: left">
            <asp:HyperLink ID="Back" runat="server"  NavigateUrl="~\Job\Users\WelcomeUser.aspx" style="text-align: left">Back</asp:HyperLink>
            <br />
            <br />
            Work you can do 
            </strong>
            <br />
            <asp:Label ID="Label_SkillsSet" runat="server"></asp:Label>
            <br />
            <br />
        </div>
        <div class="auto-style1">
            <strong>Select an image&nbsp;Or click on the name to add a SKILL to your known Work list</strong><br />
            <br />
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

        <asp:Label ID="Label_AlreadyExists" runat="server" Text="The skill you have added already exists in your skill set" Visible="False"></asp:Label>

    </form>
</body>
</html>
