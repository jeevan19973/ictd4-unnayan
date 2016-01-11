<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SampleTest.aspx.cs" Inherits="Education_SampleTest" %>
<style type="text/css">
         .auto-style3 {
            width: 800px;
            height: 37px;
            font-size: 23px;
            font-family: Arial;
            background-color : #FFFFCC;
        }
         .auto-style4 {
            font-size: 19px;
            font-family: Arial ;
        }
        .auto-style20 {
            width: 1000px;
            height: 220px;
        }
        </style>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server"   >

    <div style="border-style: solid; border-width: 2px; overflow-y:scroll; background-color: #FFFFCC;" class="auto-style20" >
      <div id="Q1">
        Q1.)Light is a form of ?<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server"  CssClass="auto-style4" >
            <asp:ListItem>Mass</asp:ListItem>
            <asp:ListItem>Energy</asp:ListItem>
            <asp:ListItem>Power</asp:ListItem>
            <asp:ListItem>Length</asp:ListItem>
        </asp:RadioButtonList>
        <br />
       <a href ="#Q2">Next</a>
        <br />
        <br />
        <br /></div>
        <div id="Q2">
        Q2.)Sound travels in form of ?<br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="auto-style4">
            <asp:ListItem>Waves</asp:ListItem>
            <asp:ListItem>All of these</asp:ListItem>
            <asp:ListItem>Magnetic</asp:ListItem>
            <asp:ListItem>Particle</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <a href ="#Q1">Previous</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href ="#Q3">Next</a>
        <br />
        <br />
        <br /></div>
        <div id="Q3">
        Q3.) Number of vibration produced in one second is called ?<br />
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" Height="64px"  Width="300px" CssClass="auto-style4" BorderStyle="None">
            <asp:ListItem>Wavelength</asp:ListItem>
            <asp:ListItem>Amplitude</asp:ListItem>
            <asp:ListItem>Time-Period</asp:ListItem>
            <asp:ListItem>Frequency</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <a href ="#Q2">Previous</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href ="#Q4">Next</a>
        <br />
        <br />
        <br /></div>
        <div id="Q4">
        Q4.)Speed light is fastest in?<br />
        <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="auto-style4">
            <asp:ListItem>Air</asp:ListItem>
            <asp:ListItem>Diamond</asp:ListItem>
            <asp:ListItem>Glass</asp:ListItem>
            <asp:ListItem>Water</asp:ListItem>
        </asp:RadioButtonList>
        <br />
         <a href ="#Q4">Previous</a>
        <br />   
        <br />      
        <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="submit" />
        <br />
        <br />
        <br />
            </div>
    
    </div>
        <asp:Label ID="Output" runat="server"></asp:Label>
    </form>
</body>
</html>
