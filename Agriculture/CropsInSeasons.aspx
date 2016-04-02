<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CropsInSeasons.aspx.cs" Inherits="CropsInSeasons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="Summer" runat="server" Height="175px" ImageUrl="~/images/lolwa/summer.jpg" OnClick="Summer_Click" Width="250px" />
    
        <br />
        <br />
        <asp:ImageButton ID="Winter" runat="server" Height="175px" Width="250px" ImageUrl="~/images/lolwa/winter.jpg" OnClick="Winter_Click" />
    
        <br />
        <br />
        <asp:ImageButton ID="Rainy" runat="server" Height="175px" Width="250px" ImageUrl="~/images/lolwa/rainy.jpg" OnClick="Rainy_Click" />
    
    </div>
    </form>
</body>
</html>
