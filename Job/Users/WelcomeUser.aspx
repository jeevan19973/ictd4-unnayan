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

    <div style="text-align: center" class="auto-style1">
        Welcome 
            <asp:Label ID="Label_Username" runat="server" Style="font-size: large; font-weight: 700"></asp:Label>

    </div>

    <div class="auto-style2" style="text-align: left; font-size: xx-large">
        &nbsp;What would you like to do now ?
    </div>

    <form id="form1" runat="server">
        
       
            &nbsp;
        <p>
            &nbsp;
            <asp:Button ID="Button_Profile" runat="server" Text="Edit Profile" OnClick="Button_Profile_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_JobApplication" runat="server" OnClick="Button_JobApplication_Click" Text="Work I can do" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_CareerAdvice" runat="server" OnClick="Button_CareerAdvice_Click" Text="Get Some Career Advice" />
        </p>
    </form>
</body>
</html>
