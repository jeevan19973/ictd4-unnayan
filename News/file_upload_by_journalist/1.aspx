<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1.aspx.cs" Inherits="_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 73px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Upload FILE" onclick="Button1_Click"/>
        <br />
        <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="259px" Width="328px" />
    <div>
    
    </div>
    </form>
</body>
</html>
