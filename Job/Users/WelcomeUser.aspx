<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomeUser.aspx.cs" Inherits="Job_Users_WelcomeUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }

        .auto-style2 {
            color: #0033CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center" class="auto-style1">
            
            Welcome 
            <asp:Label ID="Label_Username" runat="server" Style="font-size: large; font-weight: 700"></asp:Label>

        </div>

        <p class="auto-style2" style="text-align: left; font-size: xx-large">
            Choose What you want to do now ?
        </p>
    </form>
</body>
</html>
