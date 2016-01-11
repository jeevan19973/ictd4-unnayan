<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="Education_FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="PageBody" style="font-weight: 700; font-size: x-large">
    <form id="form1" runat="server" >
    <div>
    
        What do you want to do ?<br />
    
    </div>
        <asp:ImageButton ID="Button_StudySchool" OnClick="Button_StudySchool_Click" runat="server"  ImageUrl="~/images/studyforschool.jpg"  />
        <br />
        <br />
        <asp:ImageButton ID="Button_JobSkills" OnClick="Button_JobSkills_Click" runat="server" ImageUrl="~/images/searchforjob.jpg" />
        <br />
        <br />
        <asp:ImageButton ID="Button_Question" OnClick="Button_Question_Click" runat="server" ImageUrl="~/images/askAQueastion.jpg" />
        <br />
        <br />
        <asp:ImageButton ID="Button_Test" OnClick="Button_Test_Click" runat="server" ImageUrl="~/images/takeaTest.jpg" />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
