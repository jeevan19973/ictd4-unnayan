<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jaundice.aspx.cs" Inherits="SwineFlu" %>

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
        .auto-style11 {
            width: 275px;
        }
        .auto-style12 {
            width: 250px;
        }
        .auto-style13 {
            width: 249px;
        }
        .auto-style15 {
            width: 300px;
            text-align: left;
        }
        .auto-style16 {
            width: 272px;
        }
        .auto-style17 {
            width: 266px;
            text-align: left;
        }
        .auto-style18 {
            width: 236px;
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
    
        <asp:Label ID="Label1" runat="server" Text="Jaundice" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3399"></asp:Label>
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
        <audio id="0" style="display:none" controls ><source src="info_jaundice/jaun_about.mp3"/>Your browser doesn't support</audio>


            </div>
           
            <div id="about" hidden="hidden">
                
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style11">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Health_new/images/causes-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Jaundice is the medical term that describes yellowing of the skin and eyes. This condition forms when there is too much bilirubin in your system. Bilirubin is a yellow pigment that is formed by the breakdown of dead red blood cells in the liver. Normally, the liver gets rid of bilirubin along with old red blood cells.</td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style8" onclick="fun('symptoms');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Symptoms:

                 
        <image id="1i" src="rsz_1rsz_02_play-512.png"  onclick="play(1);" /> <br />
        <audio id="1" style="display:none" controls ><source src="info_jaundice/jaun_symp.mp3"/>Your browser doesn't support</audio>


             </div>
            <div id="symptoms" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style12">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Health_new/images/symptoms-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                            <asp:BulletedList ID="BulletedList1" runat="server">
                                <asp:ListItem>Yellow-tinted skin and eyes characterize jaundice. </asp:ListItem>
                                <asp:ListItem>In more severe cases, the whites of your eyes may turn brown or orang-colored. </asp:ListItem>
                                <asp:ListItem>You may also have dark urine and pale stools. </asp:ListItem>
                            </asp:BulletedList>
                            <br />
                            If an underlying health condition such as viral hepatitis is to blame for the jaundice, you might experience other symptoms, such as excessive fatigue and vomiting. 
                            <br />
                            <br />
                            <br />
                            <asp:Image ID="Image12" runat="server" Height="123px" ImageUrl="~/Health_new/images/jaundice.JPG" Width="197px" />
                        </td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style9" onclick="fun('diagonise');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Diagonise & Treatment:<br />
             
        <image id="2i" src="rsz_1rsz_02_play-512.png"  onclick="play(2);" /> <br />
        <audio id="2" style="display:none" controls ><source src="info_jaundice/jaun_diago.mp3"/>Your browser doesn't support</audio>

             </div>
            <div id="diagonise" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style13">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Health_new/images/treatments-200x200.png" />
                        </td>
                        <td style="font-size: large; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Your doctor will first conduct blood tests to determine the cause of your jaundice. A blood test can not only determine the total amount of bilirubin in your body, but it can also help detect indicators of other diseases such as hepatitis.
                            <br />
                            <br />
                            Other diagnostic tests may be used, including: liver function tests, imaging studies, liver biopsies.
                            <br />
                            <br />
                            The type of treatment your doctor recommends for jaundice depends on the underlying cause. Mild cases may go away without treatment. However, severe cases can eventually damage the brain. Your doctor will treat the cause of the jaundice, not the symptom itself. Once treatment begins, your yellow skin will likely diminish. </td>
                    </tr>
                </table>
                <br />
            </div>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Doctor's Voices" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#FF99CC"></asp:Label>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style16">
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Health_new/images/docter-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel1" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList2" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/d_jaundice/{0}") %>' type="audio/mp3" >
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
                    <td class="auto-style18">
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/Health_new/images/people-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel2" runat="server" Height="277px" Width="403px" ScrollBars="Vertical" CssClass="panelStyle">
         <asp:DataList ID="DataList1" runat="server" >
              
                      <ItemTemplate>
                          <br />
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Health_new/p_jaundice/{0}") %>' type="audio/mp3" >
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
