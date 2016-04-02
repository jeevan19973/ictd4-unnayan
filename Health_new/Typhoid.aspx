<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Typhoid.aspx.cs" Inherits="Typhoid" %>

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
            width: 281px;
        }
        .auto-style12 {
            width: 283px;
        }
        .auto-style13 {
            width: 286px;
        }
        .auto-style16 {
            width: 217px;
        }
        .auto-style17 {
            width: 219px;
        }
        .auto-style18 {
            width: 244px;
            text-align: left;
        }
        .auto-style19 {
            width: 350px;
            text-align: left;
        }
    </style>
     <script>
        //Assuming 4 videos to be played
        var flag = [1,1,1,1];
        function play(name){
            if (flag[name]) {
                document.getElementById(name).play();
                document.getElementById(name + "i").src = "rsz_1rsz_pause-512.png";
                flag[name]=0
            }
            else {
                document.getElementById(name).pause();
                document.getElementById(name + "i").src = "rsz_1rsz_02_play-512.png";
                flag[name] = 1
            }
        }

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="margin-right: 150px; margin-bottom: 100px; margin-left: 150px">
    
        <asp:Label ID="Label1" runat="server" Text="Typhoid" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3399"></asp:Label>
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
                About:
                  <image id="0i" src="rsz_1rsz_02_play-512.png"  onclick="play(0);" /> <br />
        <audio id="0" style="display:none" controls ><source src="info_typhoid/typh_about.mp3"/>Your browser doesn't support</audio>
            </div>
           
            <div id="about" hidden="hidden">
                
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Health_new/images/causes-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Typhoid fever is an acute illness associated with fever caused by the Salmonella typhi bacteria. It can also be caused by Salmonella paratyphi, a related bacterium that usually causes a less severe illness. The bacteria are deposited in water or food by a human carrier and are then spread to other people in the area.
                            <br />
                            <br />
                            Typhoid fever is contracted by drinking or eating the bacteria in contaminated food or water. People with acute illness can contaminate the surrounding water supply through stool, which contains a high concentration of the bacteria. Contamination of the water supply can, in turn, taint the food supply. The bacteria can survive for weeks in water or dried sewage. </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style8" onclick="fun('symptoms');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Symptoms:
                   <image id="1i" src="rsz_1rsz_02_play-512.png"  onclick="play(1);" /> <br />
        <audio id="1" style="display:none" controls ><source src="info_typhoid/typh_symp.mp3"/>Your browser doesn't support</audio>
             </div>
            <div id="symptoms" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Health_new/images/symptoms-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Symptoms that are associated with&nbsp; typhoid are:<br />
                            <asp:BulletedList ID="BulletedList1" runat="server">
                                <asp:ListItem>severe headache</asp:ListItem>
                                <asp:ListItem>high fever (above 104 degrees Fahrenheit)</asp:ListItem>
                                <asp:ListItem>rash that begins on the back or chest and spreads</asp:ListItem>
                                <asp:ListItem>confusion</asp:ListItem>
                                <asp:ListItem>stupor and seeming out of touch with reality</asp:ListItem>
                                <asp:ListItem>low blood pressure (hypotension)</asp:ListItem>
                                <asp:ListItem>eye sensitivity to bright lights</asp:ListItem>
                                <asp:ListItem>severe muscle pain</asp:ListItem>
                            </asp:BulletedList>
                        <br />
                             <img alt="" src="download%20(1).jpe" style="width: 240px; height: 157px" /><img 
                                alt="" src="download%20(2).jpe" style="width: 318px; height: 159px" /><img 
                                alt="" src="download%20(3).jpe" style="width: 289px; height: 174px" /><br />
                            <img alt="" src="download%20(6).jpe" style="width: 275px; height: 183px" /><img 
                                alt="" src="download%20(7).jpe" style="width: 274px; height: 184px" /><img 
                                alt="" src="download.png" 
                                style="width: 265px; height: 218px; margin-right: 0px" />
                        </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style9" onclick="fun('diagonise');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Diagonise & Treatment:<br />
                   <image id="2i" src="rsz_1rsz_02_play-512.png"  onclick="play(2);" /> <br />
        <audio id="2" style="display:none" controls ><source src="info_typhoid/typh_diago.mp3"/>Your browser doesn't support</audio>
             </div>
            <div id="diagonise" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Health_new/images/treatments-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">If you suspect that you have typhoid, your doctor will ask about your symptoms and your medical history.
                            <br />
                            Other tests include : Western blot, blood test, immunofluorescence test etc <br />
                            <br />
                            Antibiotics most commonly used to treat typhoid include: doxycycline (preferred treatment) cholramphenicol (option for those not pregnant or breast-feeding) ciprofloxacin (used for those who are unable to take doxycycline)</td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style10" onclick="fun('preventive');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Preventive Measures:
                   <image id="3i" src="rsz_1rsz_02_play-512.png"  onclick="play(3);" /> <br />
        <audio id="3" style="display:none" controls ><source src="info_typhoid/typh_preve.mp3"/>Your browser doesn't support</audio>
             </div>
        <div id="preventive" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/Health_new/images/prevention-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Suggestions for prevention include:
                            <br />
                            <asp:BulletedList ID="BulletedList2" runat="server">
                                <asp:ListItem>maintaining personal hygiene (helps guard against lice carrying the disease) </asp:ListItem>
                                <asp:ListItem>controlling the rodent population (rodents are known to carry arthropods)</asp:ListItem>
                                <asp:ListItem>avoiding travel to regions where typhus exposure has occurred, or to countries that are high risk due to lack of sanitation </asp:ListItem>
                                <asp:ListItem>chemoprophylaxis with doxycycline (used as a preventive only in those at high risk, such as those on humanitarian campaigns in areas with extreme poverty and little or no sanitation) </asp:ListItem>
                                <asp:ListItem>Use tick and insect repellant.</asp:ListItem>
                            </asp:BulletedList>
                        </td>
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
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Health_new/images/docter-200x200.png" />
                    </td>
                    <td>  <asp:Panel ID="Panel1" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList2" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/d_typhoid/{0}") %>' type="audio/mp3" >
                                <source type = "audio/mp3">
                                <source type = "audio/ogg">
                                Your browser does not support the video tag.
                            </audio>
                          <br />
                        
                      </ItemTemplate>
                         
        </asp:DataList>
        </asp:Panel>
&nbsp;</td>
                </tr>
            </table>
            <br />
            
            <br />
            <asp:Label ID="Label7" runat="server" Text="People's Voices" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF99CC"></asp:Label>
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style17">
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/Health_new/images/people-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel2" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList1" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/p_typhoid/{0}") %>' type="audio/mp3" >
                                <source type = "audio/mp3">
                                <source type = "audio/ogg">
                                Your browser does not support the video tag.
                            </audio>
                          <br />
                        
                      </ItemTemplate>
                         
        </asp:DataList>
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
