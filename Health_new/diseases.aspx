<%@ Page Language="C#" AutoEventWireup="true" CodeFile="diseases.aspx.cs" Inherits="diseases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            height: 18px;
            text-align: center;
            width: 179px;
        }
        .auto-style7 {
            text-align: center;
            width: 120px;
        }
        .auto-style8 {
            height: 24px;
            text-align: center;
            width: 120px;
        }
        .auto-style9 {
            text-align: center;
            width: 103px;
        }
        .auto-style10 {
            height: 24px;
            text-align: center;
            width: 103px;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            text-align: center;
            width: 179px;
        }
        .auto-style13 {
            height: 24px;
            text-align: left;
            width: 179px;
        }
        .auto-style14 {
            width: 75%;
        }
        .auto-style15 {
            text-align: center;
            width: 120px;
            height: 35px;
        }
        .auto-style16 {
            text-align: center;
            width: 179px;
            height: 35px;
        }
        .auto-style17 {
            text-align: center;
            width: 103px;
            height: 35px;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style19 {
            text-align: left;
            width: 179px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-right: 100px; margin-bottom: 100px; margin-left: 100px">
        <table class="auto-style14">
            <tr>
                <td class="auto-style2" style="color: #33CCFF; font-style: italic; font-weight: bold;">Check your Symptoms here<br />
                    |</td>
            </tr>
            <tr>
                <td>
                     <table class="auto-style11" style="border: thin solid #EFEFEF">
            <tr>
                <td class="auto-style15" style="background-color: #FFCC99">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="Name"></asp:Label>
                </td>
                <td class="auto-style16" style="border-top-style: solid; border-right-style: solid; border-left-style: solid; border-width: medium; border-color: #33CCFF; background-color: #99FFCC;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="Symptoms"></asp:Label>
                </td>
                <td class="auto-style17" style="background-color: #FFCC99">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    Malaria<br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl="~/Health_new/images/mosquito.jpg" Width="197px" />
                    <br />
                </td>
                <td class="auto-style13" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF; border-right-style: solid; border-left-style: solid; border-right-width: medium; border-left-width: medium; border-right-color: #33CCFF; border-left-color: #33CCFF;">
                    <br />
                            <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Disc">
                                <asp:ListItem>shaking chills that can range from moderate to severe</asp:ListItem>
                                <asp:ListItem>high fever</asp:ListItem>
                                <asp:ListItem>profuse sweating</asp:ListItem>
                                <asp:ListItem>headache</asp:ListItem>
                                <asp:ListItem>nausea</asp:ListItem>
                                <asp:ListItem>vomiting</asp:ListItem>
                                <asp:ListItem>diarrhea</asp:ListItem>
                                <asp:ListItem>anemia</asp:ListItem>
                                <asp:ListItem>muscle pain</asp:ListItem>
                                <asp:ListItem>convulsions</asp:ListItem>
                                <asp:ListItem>coma</asp:ListItem>
                            </asp:BulletedList>
                        <div class="auto-style18">
                            <br />
                    <br />
                    </div>
                </td>
                <td class="auto-style10" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Health_new/Malaria.aspx">More Info</asp:HyperLink>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    Jaundice<br />
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="123px" ImageUrl="~/Health_new/images/jaundice.JPG" Width="197px" />
                    <br />
                </td>
                <td class="auto-style19" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF; border-right-style: solid; border-left-style: solid; border-right-width: medium; border-left-width: medium; border-right-color: #33CCFF; border-left-color: #33CCFF;">
                    <br />
                            <asp:BulletedList ID="BulletedList2" runat="server">
                                <asp:ListItem>Yellow-tinted skin and eyes characterize jaundice. </asp:ListItem>
                                <asp:ListItem>In more severe cases, the whites of your eyes may turn brown or orang-colored. </asp:ListItem>
                                <asp:ListItem>You may also have dark urine and pale stools. </asp:ListItem>
                            </asp:BulletedList>
                            <br />
                </td>
                <td class="auto-style9" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Health_new/Jaundice.aspx">More Info</asp:HyperLink>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    Chikungunya<br />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="123px" ImageUrl="~/Health_new/images/mosquito.jpg" Width="197px" />
                    <br />
                </td>
                <td class="auto-style19" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF; border-right-style: solid; border-left-style: solid; border-right-width: medium; border-left-width: medium; border-right-color: #33CCFF; border-left-color: #33CCFF;">
                            <asp:BulletedList ID="BulletedList3" runat="server">
                                <asp:ListItem>depression</asp:ListItem>
                                <asp:ListItem>fatigue</asp:ListItem>
                                <asp:ListItem>headache</asp:ListItem>
                                <asp:ListItem>muscle pain</asp:ListItem>
                                <asp:ListItem>rash</asp:ListItem>
                            </asp:BulletedList>
                </td>
                <td class="auto-style9" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Health_new/Chikungunya.aspx">More Info</asp:HyperLink>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    Typhoid<br />
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="123px" ImageUrl="~/Health_new/images/typhoid.jpg" Width="197px" />
                    <br />
                </td>
                <td class="auto-style12" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF; border-right-style: solid; border-left-style: solid; border-right-width: medium; border-left-width: medium; border-right-color: #33CCFF; border-left-color: #33CCFF;">
                    <br />
                    <div class="auto-style18">
                            <asp:BulletedList ID="BulletedList4" runat="server">
                                <asp:ListItem>severe headache</asp:ListItem>
                                <asp:ListItem>high fever (above 104 degrees Fahrenheit)</asp:ListItem>
                                <asp:ListItem>rash that begins on the back or chest and spreads</asp:ListItem>
                                <asp:ListItem>confusion</asp:ListItem>
                                <asp:ListItem>stupor and seeming out of touch with reality</asp:ListItem>
                                <asp:ListItem>low blood pressure (hypotension)</asp:ListItem>
                                <asp:ListItem>eye sensitivity to bright lights</asp:ListItem>
                                <asp:ListItem>severe muscle pain</asp:ListItem>
                            </asp:BulletedList>
                        </div>
                    <br />
                </td>
                <td class="auto-style9" style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #EFEFEF">
                    <br />
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Health_new/Typhoid.aspx">More Info</asp:HyperLink>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <br />
                    Swine Flu<br />
                    <br />
                    <asp:Image ID="Image5" runat="server" Height="123px" ImageUrl="~/Health_new/images/swine_flu.jpg" Width="197px" />
                    <br />
                </td>
                <td class="auto-style4" style="border-right-style: solid; border-right-width: medium; border-right-color: #33CCFF; border-left-style: solid; border-left-width: medium; border-left-color: #33CCFF; border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #33CCFF;">
                    <br />
                    <div class="auto-style18">
                            <asp:BulletedList ID="BulletedList5" runat="server">
                                <asp:ListItem>chills</asp:ListItem>
                                <asp:ListItem>fever</asp:ListItem>
                                <asp:ListItem>coughing</asp:ListItem>
                                <asp:ListItem>sore throat</asp:ListItem>
                                <asp:ListItem>runny or stuffy nose</asp:ListItem>
                                <asp:ListItem>body aches</asp:ListItem>
                                <asp:ListItem>fatigue</asp:ListItem>
                                <asp:ListItem>diarrhea</asp:ListItem>
                                <asp:ListItem>nausea and vomiting</asp:ListItem>
                            </asp:BulletedList>
                        </div>
                    <br />
                </td>
                <td class="auto-style9">
                    <br />
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Health_new/SwineFlu.aspx">More Info</asp:HyperLink>
                    <br />
                </td>
            </tr>
        </table>

                </td>
            </tr>
        </table>
       
    
    </div>
    </form>
</body>
</html>

