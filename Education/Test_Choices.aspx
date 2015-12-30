<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test_Choices.aspx.cs" Inherits="Education_Test_Choices" %>

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
        <div>
            <span class="auto-style1"><strong>Choose Language of test :-
        </strong></span>
        <br />
            <asp:RadioButtonList ID="Language" runat="server" CssClass="auto-style4">
                <asp:ListItem>English</asp:ListItem>
                <asp:ListItem>Hindi</asp:ListItem>
                <asp:ListItem>Bengali</asp:ListItem>
            </asp:RadioButtonList>
            <br />
        </div>
        <div>
            <p class="auto-style1">
                <strong>Choose Your Class :
            </strong>
            </p>
            <asp:RadioButtonList ID="Class" runat="server" CssClass="auto-style4">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <asp:Button ID="Button_Submit" runat="server" Text="Submit" OnClick="Button2_Click"  />
    </form>

</body>
</html>
