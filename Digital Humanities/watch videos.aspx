<%@ Page Language="C#" AutoEventWireup="true" CodeFile="watch videos.aspx.cs" Inherits="watch_videos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:DataList ID="DataList2" runat="server" RepeatColumns ="1"
             BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"   ForeColor="Black"
             Width="50%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="300px">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                                   <span class="style2">Videos Hub</span>
            </HeaderTemplate>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                            <video width="320" id ="Video1" runat="server" height="240" controls src ='<%#Bind("Name","~/Upload images/{0}") %>' type="video/mp4" >
                             <source type = "video/mp4">
                             <source type = "video/m4v">
  Your browser does not support the video tag.
</video>
                          <br />
                        
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="Silver" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
        </asp:DataList>
    </div>
    </form>
</body>
</html>
