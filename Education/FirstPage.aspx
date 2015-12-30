<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="Education_FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-weight: 700; font-size: x-large">
    <form id="form1" runat="server">
    <div>
    
        What do you want to do ?<br />
    
    </div>
        <asp:Button ID="Button_StudySchool" runat="server" OnClick="Button_StudySchool_Click" Text="Study(for school)" />
        <br />
        <br />
        <asp:Button ID="Button_Test" runat="server" Text="Take a test" OnClick="Button_Test_Click" />
        <br />
        <br />
        <asp:Button ID="Button_JobSkills" runat="server" OnClick="Button_JobSkills_Click" Text="Learn some job skills" />
        <br />
        <br />
        <asp:Button ID="Button_Question" runat="server" OnClick="Button_Question_Click" Text="Ask  A Question" />
    </form>
</body>
</html>
