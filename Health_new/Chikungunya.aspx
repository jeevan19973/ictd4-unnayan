<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chikungunya.aspx.cs" Inherits="Chikungunya" %>

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
            width: 429px;
            cursor: pointer;
        }
        .auto-style9 {
            width: 615px;
            cursor: pointer;
        }
        .auto-style10 {
            width: 608px;
            cursor: pointer;
        }
        .auto-style11 {
            width: 245px;
        }
        .auto-style12 {
            width: 247px;
        }
        .auto-style13 {
            width: 242px;
        }
        .auto-style14 {
            width: 243px;
        }
        .auto-style16 {
            width: 267px;
            text-align: left;
        }
        .auto-style17 {
            width: 391px;
            text-align: left;
        }
        .auto-style18 {
            width: 358px;
            cursor: pointer;
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
    
        <asp:Label ID="Label1" runat="server" Text="Chikungunya" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3399"></asp:Label>
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
            <div class="auto-style18" onclick="fun('about');" style="color: #CC99FF; font-style: italic; font-weight: bold; font-size: x-large;">
                About:      
        <image id="0i" src="rsz_1rsz_02_play-512.png"  onclick="play(0);" /> <br />
        <audio id="0" style="display:none" controls ><source src="info_chikungunya/chik_about.mp3"/>Your browser doesn't support</audio>

            </div>
           
            <div id="about" hidden="hidden">
                
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Health_new/images/causes-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Chikungunya is a virus that is transmitted by mosquitoes. Also known as CHIKV, the virus was first detected in 1952 in southern Tanzania. The name means “to become contorted” in the Kimakonde language. The name alludes to the stooped appearance of chikungunya sufferers with joint pain, which is one of the symptoms of the infection.
                            <br />
                            <br />
                            Two mosquito species, Aedes aegypti and Aedes albopictus, are carriers for the chikungaya virus.When an infected mosquito bites a person, the virus can be transmitted and then multiplies rapidly in the blood.The chikungaya virus is more likely to infect a person than other mosquito-transmitted viruses. </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style8" onclick="fun('symptoms');" style="color: #CC99FF; font-style: italic; font-weight: bold; font-size: x-large;">
                Symptoms:
        <image id="1i" src="rsz_1rsz_02_play-512.png"  onclick="play(1);" /> <br />
        <audio id="1" style="display:none" controls ><source src="info_chikungunya/chik_symp.mp3"/>Your browser doesn't support</audio>

             </div>
            <div id="symptoms" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Health_new/images/symptoms-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Chikungunya symptoms closely mirror those of the dengue fever, which can make diagnosis difficult. The most common symptom is joint aches and pains. The disease also causes the following symptoms:<br />
                            <asp:BulletedList ID="BulletedList1" runat="server">
                                <asp:ListItem>depression</asp:ListItem>
                                <asp:ListItem>fatigue</asp:ListItem>
                                <asp:ListItem>headache</asp:ListItem>
                                <asp:ListItem>muscle pain</asp:ListItem>
                                <asp:ListItem>rash</asp:ListItem>
                            </asp:BulletedList>
                            <br />
                            Symptoms normally last for 3 to 7 days. However, some people can experience them for as long as 12 days.</td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style9" onclick="fun('diagonise');" style="color: #CC99FF; font-style: italic; font-weight: bold; font-size: x-large;">
                Diagonise & Treatment:<br />
        <image id="2i" src="rsz_1rsz_02_play-512.png"  onclick="play(2);" /> <br />
        <audio id="2" style="display:none" controls ><source src="info_chikungunya/chik_diago.mp3"/>Your browser doesn't support</audio>

             </div>
            <div id="diagonise" hidden="hidden">  <br />
                <table class="auto-style3" style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Health_new/images/treatments-200x200.png" />
                        </td>
                        <td>Physicians diagnose chikungunya based on symptoms. A blood test can also reveal higher than normal amounts of antibodies, which can indicate a virus. Sometimes, these are not detected until a patient has had the virus for four to five days, according to the European Centre for Disease Prevention and Control.
                            <br />
                            <br />
                            There is no cure for Chikungunya. As with the flu virus and other similar viruses, treatment focuses on keeping the patient as comfortable and pain-free as possible. Over-the-counter medications that do not contain aspirin, and non-steroidal anti-inflammatory medications, such as ibuprofen and acetaminophen, are usually recommended. A doctor may prescribe pain medications if pain is severe. </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style10" onclick="fun('preventive');" style="color: #CC99FF; font-style: italic; font-weight: bold; font-size: x-large;">
                Preventive Measures: 
        <image id="3i" src="rsz_1rsz_02_play-512.png"  onclick="play(3);" /> <br />
        <audio id="3" style="display:none" controls ><source src="info_chikungunya/chik_preve.mp3"/>Your browser doesn't support</audio>

             </div>
        <div id="preventive" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style14">
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/Health_new/images/prevention-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">To prevent mosquito bites, you can take the following steps:
                            <br />
                            <asp:BulletedList ID="BulletedList2" runat="server">
                                <asp:ListItem>Avoid sources of standing water, such as stagnant ponds or even flowerpots that have collected rain.</asp:ListItem>
                                <asp:ListItem>Use screens, windows, and doors to keep mosquitoes from coming into your home. You also can sleep with mosquito netting over your bed to keep mosquitoes from biting you while you are asleep. </asp:ListItem>
                                <asp:ListItem>Wear long-sleeved shirts and pants when outdoors. </asp:ListItem>
                                <asp:ListItem>Apply insect repellants that contain DEET, picaridin, IR3535, oil of lemon eucalyptus, or para-menthane-diol to protect against mosquitoes. Apply this repellant after any sunscreen. </asp:ListItem>
                                <asp:ListItem>Treat your clothes with permethrin or purchase permethrin-treated clothes to protect against mosquito bites.</asp:ListItem>
                            </asp:BulletedList>
                            <br />
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
                    <td>
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Health_new/images/docter-200x200.png" />
                    </td>
                    <td>
                        <asp:Panel ID="Panel1" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList1" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/p_chikungunya/{0}") %>' type="audio/mp3" >
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
            <asp:Label ID="Label7" runat="server" Text="People's Voices" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF99CC"></asp:Label>
            <br />
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/Health_new/images/people-200x200.png" />
                    </td>
                    <td> <asp:Panel ID="Panel2" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList2" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/d_chikungunya/{0}") %>' type="audio/mp3" >
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
