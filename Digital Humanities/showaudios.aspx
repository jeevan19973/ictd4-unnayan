<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showaudios.aspx.cs" Inherits="showaudios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 326px; width: 776px">
    <form id="form1" runat="server">
    <div style="height: 325px; width: 775px">
    
        <asp:Panel ID="Panel1" runat="server" Height="297px" Width="670px">
         <asp:DataList ID="DataList2" runat="server" RepeatColumns ="2"
             BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"   ForeColor="Black"
             Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="300px">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                                   <span class="style2">Voices of People</span>
            </HeaderTemplate>
                <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                      <ItemTemplate>
                            <audio  ID ="Video1" runat="server" height="100" controls src ='<%#Bind("Name","~/Upload images/{0}") %>' type="audio/mp3" >
                             <source type = "audio/mp3">
                             <source type = "audio/ogg">
  Your browser does not support the video tag.
</audio>
                          <br />
                        
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
        </asp:DataList>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
