<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Malaria.aspx.cs" Inherits="Malaria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>

        function fun(str) {
           
            var ab = document.getElementById(str);
            if (ab.hidden == true)
                ab.hidden = false;
            else
                ab.hidden = true;
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style7 {
            width: 320px;
        }
        .auto-style8 {
            width: 188px;
        }
        .auto-style9 {
            width: 381px;
        }
        .auto-style10 {
            width: 338px;
        }
        .auto-style11 {
            width: 249px;
        }
        .auto-style12 {
            width: 268px;
        }
        .auto-style13 {
            width: 262px;
        }
        .auto-style15 {
            width: 345px;
            text-align: left;
        }
        .auto-style16 {
            width: 241px;
        }
        .auto-style17 {
            width: 258px;
            text-align: left;
        }
        .auto-style18 {
            width: 222px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="margin-right: 150px; margin-bottom: 100px; margin-left: 150px">
    
        <asp:Label ID="Label1" runat="server" Text="Malaria" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3399"></asp:Label>
        <br />
        <br />
        <div>
            <asp:Image ID="Image1" runat="server" />
&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" />
&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" />
&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" />
&nbsp;&nbsp;
            <asp:Image ID="Image5" runat="server" Width="16px" />
        </div>
        <div class="auto-style2">
            <br />
            <div class="auto-style8" onclick="fun('about');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                About:</div>
           
            <div id="about" hidden="hidden">
                
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/causes-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Malaria is a life-threatening disease. It’s typically transmitted through the bite of an infected Anopheles mosquito. Infected mosquitoes carry the Plasmodium parasite. When this mosquito bites you, the parasite is released into your bloodstream. Once the parasites are inside your body, they travel to the liver, where they mature.
                            <br />
                            After several days, the mature parasites enter the bloodstream and begin to infect red blood cells. Within 48 to 72 hours, the parasites inside the red blood cells multiply, causing the infected cells to burst open. The disease can be controlled and treated if diagnosed early on.</td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style8" onclick="fun('symptoms');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Symptoms:</div>
            <div id="symptoms" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/symptoms-200x200.png" />
                        </td>
                        <td>
                            <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Disc" Font-Names="Segoe UI,Tahoma,Geneva,Verdana,sans-serif" Font-Size="Large">
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
                        </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style9" onclick="fun('diagonise');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Diagonise & Treatment:</div>
            <div id="diagonise" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/treatments-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Early diagnosis of malaria is critical for a patient&#39;s recovery, any individual showing signs of malaria should be tested immediately. Your doctor will be able to diagnose malaria. During your appointment, your doctor will review your health history, including any recent travel to tropical climates. A physical exam will also be performed. Your doctor will be able to determine if you have an enlarged spleen or liver. If you have symptoms of malaria, your doctor may order additional blood tests to confirm your diagnosis.
                            <br />
                            If left untreated, malaria can be fatal.Treatment for the disease is typically provided in a hospital. Your doctor will prescribe medications based on the type of parasite that you have. In some instances, the medication prescribed will not clear you of the infection. Parasites that are resistant to drugs have been reported. These parasites make many drugs ineffective. If this occurs, your doctor may need to use more than one medication or change medications altogether to treat your condition. </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style10" onclick="fun('preventive');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Preventive Measures:</div>
        <div id="preventive" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/images/prevention-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Talk to your doctor about long-term prevention if you live in an area where malaria is common. 
                            <br />
                            <br />
                            Sleeping under a mosquito net may help prevent being bitten by an infected mosquito. 
                            <br />
                            Covering your skin or using bug sprays containing DEET may also help prevent infection. 
                            <br />
                            <br />
                            If you’re unsure if malaria is prevalent in your area, the CDC has an up-to-date map of where malaria can be found. </td>
                    </tr>
                </table>
                <br />
            </div>
            <br />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Doctor's Voices" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF99CC"></asp:Label>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style16">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/docter-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel1" runat="server" Height="219px" Width="450px" ScrollBars="Vertical">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style15">
                            <br />
                            Dr.Uttam Mate&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio controls="controls">
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <br />
                            Dr.Rahul Cataria&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio controls="controls">
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <br />
                            Dr.Archana Avhale&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <br />
                            Dr.Sohan Jain&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <br />
                           &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <br />
                            Dr.P Balaji Raman&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                </table>
            </asp:Panel>&nbsp;</td>
                </tr>
            </table>
            <br />
            
            <br />
            <asp:Label ID="Label7" runat="server" Text="People's Voices" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF99CC"></asp:Label>
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/images/people-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel2" runat="server" Height="225px" Width="450px" ScrollBars="Vertical">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style17">
                            <br />
                            Mr.Shankar Shinde&nbsp;&nbsp;&nbsp;&nbsp;
                           </td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <br />
                            Mr.Anil Deshpande</td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <br />
                            Mr.Ram&nbsp;Narayan</td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <br />
                            Mr.Ashok Kumar&nbsp;&nbsp;&nbsp;
                            </td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <br />
                            Mr.Avanish Thakur
                            </td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                </table>
            </asp:Panel>&nbsp;</td>
                </tr>
            </table>
            <br />
            
            <br />
            <br />
           
                   <asp:Label ID="Label8" runat="server" Text="Upload Your Own Voice:" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#9999FF"></asp:Label>
                    
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" accept="audio/mp3"/>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
    </div>
    </form>
</body>
</html>