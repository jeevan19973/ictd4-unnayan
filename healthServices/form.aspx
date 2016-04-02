<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-top: 50px; margin-left: 50px">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF9966" Text="Medical Report:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" Runat="server" NavigateUrl="#" onclick="javascript:history.go(-1);return false;">Back</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="1)Patient Info:"></asp:Label>
        <br />
        <br />
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Gender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        Weight:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        Location:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="2)Nature of case:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList6" runat="server">
            <asp:ListItem>Trauma</asp:ListItem>
            <asp:ListItem>Medical</asp:ListItem>
            <asp:ListItem>Psychological</asp:ListItem>
            <asp:ListItem>OBS/delivery</asp:ListItem>
            <asp:ListItem>Pediatric</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="3)Chief complaint:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="4)Medical History"></asp:Label>
        <br />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" >
            <asp:ListItem>Diabetes</asp:ListItem>
            <asp:ListItem>Cardiac</asp:ListItem>
            <asp:ListItem>Cancer</asp:ListItem>
            <asp:ListItem>Seizures</asp:ListItem>
            <asp:ListItem>HTN</asp:ListItem>
            <asp:ListItem>COPD</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="5)Allergies"></asp:Label>
        <br />
        <asp:CheckBoxList ID="CheckBoxList3" runat="server">
            <asp:ListItem>None</asp:ListItem>
            <asp:ListItem>PCN</asp:ListItem>
            <asp:ListItem>Sulfa</asp:ListItem>
            <asp:ListItem>Codeine</asp:ListItem>
            <asp:ListItem>Iodine</asp:ListItem>
            <asp:ListItem>Unknown</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Label ID="Label7" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="6)Patient Assesment:"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="skin color:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>Cyanotic</asp:ListItem>
            <asp:ListItem>Pale/ash</asp:ListItem>
            <asp:ListItem>Jaundice</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label9" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="Temp:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>Hot</asp:ListItem>
            <asp:ListItem>Cold</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label10" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="Pupils:Left - Right"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
            <asp:ListItem>Normal</asp:ListItem>
            <asp:ListItem>Constrict</asp:ListItem>
            <asp:ListItem>Dialated</asp:ListItem>
            <asp:ListItem>Fixed</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label11" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="Lungs:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
            <asp:ListItem>Resp.distress</asp:ListItem>
            <asp:ListItem>Apnea</asp:ListItem>
            <asp:ListItem>Clear</asp:ListItem>
            <asp:ListItem>Crepitaion</asp:ListItem>
            <asp:ListItem>Wheezes</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label12" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="Blood Pressure:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="Blood Sugar:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="Pulse:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Italic="True" ForeColor="#3366FF" Text="Comments:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
