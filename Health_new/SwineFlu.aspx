<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SwineFlu.aspx.cs" Inherits="Jaundice" %>

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
            width: 280px;
        }
        .auto-style12 {
            width: 256px;
        }
        .auto-style13 {
            width: 274px;
        }
        .auto-style14 {
            width: 261px;
        }
        .auto-style15 {
            width: 218px;
        }
        .auto-style16 {
            width: 221px;
        }
        .auto-style17 {
            width: 253px;
            text-align: left;
        }
        .auto-style18 {
            width: 214px;
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
    
        <asp:Label ID="Label1" runat="server" Text="Swine Flu" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3399"></asp:Label>
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
        <audio id="0" style="display:none" controls ><source src="info_swineflu/swin_about.mp3"/>Your browser doesn't support</audio>

            </div>
           
            <div id="about" hidden="hidden">
                
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Health_new/images/causes-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Swine flu, also known as the H1N1 virus, is a relatively new strain of an influenza virus that causes symptoms similar to the regular flu. It originated in pigs, but is spread primarily from person to person.
                            <br />
                            <br />
                            Swine flu made headlines in 2009 when it was first discovered in humans and became a pandemic. Pandemics are contagious diseases affecting people throughout the world or on multiple continents at the same time.ins, your yellow skin will likely diminish.
                            <br />
                            <br />
                            Like other strains of the flu, H1N1 is highly contagious, allowing it to spread quickly from person to person. A simple sneeze can cause thousands of germs to spread through the air. The virus can linger on tables and surface areas like door knobs, waiting to be picked up. </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style8" onclick="fun('symptoms');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Symptoms:
                  <image id="1i" src="rsz_1rsz_02_play-512.png"  onclick="play(1);" /> <br />
        <audio id="1" style="display:none" controls ><source src="info_swineflu/swin_symp.mp3"/>Your browser doesn't support</audio>

             </div>
            <div id="symptoms" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Health_new/images/symptoms-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">The symptoms of swine flu are very much like those of regular influenza. They include:<br />
                            <asp:BulletedList ID="BulletedList1" runat="server">
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
                            <br />
                             <img alt="" src="download.jpe" style="width: 216px; height: 233px" /><img 
                                alt="" src="download%20(1).jpe" style="width: 240px; height: 157px" /><img 
                                alt="" src="download%20(8).jpe" style="width: 302px; height: 167px" /><br />
                            <img alt="" src="download%20(4).jpe" style="width: 233px; height: 217px" /><img 
                                alt="" src="download%20(9).jpe" style="width: 183px; height: 275px" /><img 
                                alt="" src="images%20(1).jpe" style="width: 225px; height: 252px" />
                        </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style9" onclick="fun('diagonise');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Diagonise & Treatment:<br />
                  <image id="2i" src="rsz_1rsz_02_play-512.png"  onclick="play(2);" /> <br />
        <audio id="2" style="display:none" controls ><source src="info_swineflu/swin_diago.mp3"/>Your browser doesn't support</audio>


             </div>
            <div id="diagonise" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Health_new/images/treatments-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Your doctor can make a diagnosis by sampling fluid from your body. To take a sample, your doctor or a nurse may swab your nose or throat.
                            <br />
                            <br />
                            The swab will be analyzed using various genetic and laboratory techniques to identify the specific type of virus.
                            <br />
                            <br />
                            Most cases of swine flu don’t require medication for treatment. You don’t need to see a doctor unless you’re at risk for developing medical complications from the flu. You should focus on relieving your symptoms and preventing the spread of the H1N1 to other people.
                            <br />
                            <br />
                            However two antiviral drugs are recommended for treating swine flu: the oral drugs oseltamivir (Tamiflu) and zanamivir (Relenza).</td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style10" onclick="fun('preventive');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Preventive Measures:
                  <image id="3i" src="rsz_1rsz_02_play-512.png"  onclick="play(3);" /> <br />
        <audio id="3" style="display:none" controls ><source src="info_swineflu/swin_preve.mp3"/>Your browser doesn't support</audio>
<br />
            </div>
        <div id="preventive" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style14">
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/Health_new/images/prevention-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">The best way to prevent swine flu is to get a yearly flu vaccination. Other easy ways to prevent swine flu include:<br />
                            <asp:BulletedList ID="BulletedList2" runat="server">
                                <asp:ListItem>frequently washing hands with soap or hand sanitizer</asp:ListItem>
                                <asp:ListItem>not touching your nose, mouth, or eyes (the virus can survive on surfaces like telephones and tabletops)</asp:ListItem>
                                <asp:ListItem>staying home from work or school if you&#39;re ill</asp:ListItem>
                                <asp:ListItem>avoiding large gatherings when swine flu is in season</asp:ListItem>
                            </asp:BulletedList>
                            <br />
                             <img alt="" src="download.jpe" style="width: 216px; height: 233px" /><img 
                                alt="" src="download%20(1).jpe" style="width: 240px; height: 157px" /><img 
                                alt="" src="download%20(8).jpe" style="width: 302px; height: 167px" /><br />
                            <img alt="" src="download%20(4).jpe" style="width: 233px; height: 217px" /><img 
                                alt="" src="download%20(9).jpe" style="width: 183px; height: 275px" /><img 
                                alt="" src="images%20(1).jpe" style="width: 225px; height: 252px" />
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
                    <td class="auto-style15">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Health_new/images/docter-200x200.png" />
                    </td>
                    <td>  <asp:Panel ID="Panel1" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList2" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/d_swineflu/{0}") %>' type="audio/mp3" >
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
                    <td class="auto-style16">
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/Health_new/images/people-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel2" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList1" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/p_swineflu/{0}") %>' type="audio/mp3" >
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