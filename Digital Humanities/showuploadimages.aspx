<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showuploadimages.aspx.cs" Inherits="showuploadimages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" RepeatColumns ="5"
             BackColor="White"
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3"   ForeColor="Black"
             Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
           <FooterStyle BackColor="#CCCCCC" />
                       <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                                   <span class="style2">Image Gallary</span>
            </HeaderTemplate>
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                      <asp:Image Width="105px" ID="Image1" runat="server"  BorderStyle="Solid" ImageUrl='<%# Bind("Name", "~/Upload images/{0}") %>'
                      Height="94px"  />
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
