<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ind_disease.aspx.cs" Inherits="ind_disease" %>

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
        .auto-style6 {
            width: 120px;
            text-align: right;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="margin-right: 150px; margin-bottom: 100px; margin-left: 150px">
    
        <asp:Label ID="Label1" runat="server" Text="Disease Name" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC3399"></asp:Label>
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
                        <td>
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/causes-200x200.png" />
                        </td>
                        <td>----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------</td>
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
                        <td>----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------</td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style9" onclick="fun('diagonise');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Diagonise & Treatment:</div>
            <div id="diagonise" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/treatments-200x200.png" />
                        </td>
                        <td>----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------</td>
                    </tr>
                </table>
                <br />
            </div><br />
             <div class="auto-style10" onclick="fun('preventive');" style="color: #CC99FF; font-style: italic; font-weight: bold; cursor: pointer; font-size: x-large;">
                Preventive Measures:</div>
        <div id="preventive" hidden="hidden">  <br />
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/images/prevention-200x200.png" />
                        </td>
                        <td>----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                    ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------<br />
                ----------------------------------------------------------------</td>
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
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/docter-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel1" runat="server" Height="125px" Width="450px" ScrollBars="Vertical">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Dr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            (MD,MS)&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio controls="controls">
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Dr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            (MD,MS)&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio controls="controls">
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Dr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            (MD,MS)&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Dr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            (MD,MS)&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style7"><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Dr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            (MD,MS)&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
                    <td>
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/images/people-200x200.png" />
                    </td>
                    <td><asp:Panel ID="Panel2" runat="server" Height="125px" Width="450px" ScrollBars="Vertical">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Mr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                           </td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Mr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Mr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                           </td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Mr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        <td><audio>
                            <source src="a.mp3" type="audio/mp3" />
                            </audio></td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            Mr.Ram&nbsp;&nbsp;&nbsp;&nbsp;
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
