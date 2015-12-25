<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advertisement.aspx.cs" Inherits="Job_Users_Advertisement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Advertisements for various jobs -</strong></div>
    <p >
        <asp:GridView ID="GridView_Advertisements" runat="server" >
        </asp:GridView>
        </p>
        <p class="auto-style2" >
            <strong>Select the skill you have to see advertisement for that skill</strong></p>
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
        <p>
    </form>
    </body>
</html>
