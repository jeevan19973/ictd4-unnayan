<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showuploadimages.aspx.cs" Inherits="showuploadimages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns ="2"
             BackColor="White"
            BorderColor="#ffffff" BorderWidth="1px" CellPadding="3"   ForeColor="White"
             Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                      <asp:Image Width="210px" ID="Image1" runat="server" ImageUrl='<%# Bind("Name", "~/Upload images/{0}") %>'
                      Height="200px"  />
                          <br />
                        
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="White" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
        </asp:DataList>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
        <asp:DataList ID="DataList3" runat="server" RepeatColumns ="2"
             BackColor="White"
            BorderColor="#ffffff" BorderWidth="1px" CellPadding="3"   ForeColor="White"
             Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="300px">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                      
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
                          <ItemStyle BorderColor="White" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
        </asp:DataList>
        
         <asp:DataList ID="DataList2" runat="server" RepeatColumns ="2"
             BackColor="White"
            BorderColor="#ffffff"  BorderWidth="1px" CellPadding="3"   ForeColor="White"
             Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="300px">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                       
                <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                            <video width="320" id ="Video1" runat="server" height="240" controls src ='<%#Bind("Name","~/Upload images/{0}") %>' type="video/mp4" >
                             <source type = "video/mp4">
                             <source type = "video/m4v">
  Your browser does not support the video tag.
</video>
                          <br />
                        
                      </ItemTemplate>
                          <FooterStyle BackColor="White" ForeColor="#333333" />
                          <ItemStyle BorderColor="White" BorderStyle="Dotted" BorderWidth="1px" HorizontalAlign="Center"
                              VerticalAlign="Bottom" BackColor="White" ForeColor="#333333" />
        </asp:DataList>


    </div>
    </form>
</body>
</html>
