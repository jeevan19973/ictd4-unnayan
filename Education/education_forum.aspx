<%@ Page Language="C#" AutoEventWireup="true" CodeFile="education_forum.aspx.cs" Inherits="Education_education_forum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-decoration: underline;
        }
    </style>

    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to the forum

        </div>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="titleId" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [titleId], [title] FROM [Title]"></asp:SqlDataSource>
        </div>
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server"  Onselectedindexchanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-right: 0px" DataKeyNames="forumId" DataSourceID="SqlDataSource2">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="forumId" HeaderText="forumId" SortExpression="forumId" InsertVisible="False" ReadOnly="True" />
                
                <asp:TemplateField HeaderText="question">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Height="62px" Text='<%# Bind("question") %>' TextMode="MultiLine" Width="213px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="dateTim" HeaderText="dateTim" SortExpression="dateTim" />
              
                <asp:ImageField HeaderText="ProfilePicture"  ControlStyle-Height="100px" ControlStyle-Width="100px" DataImageUrlField = "photoId_Path">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                </asp:ImageField>
                
              
                <asp:TemplateField HeaderText="Discussion">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandName="Select" Text="View Discussion" />
                    </ItemTemplate>
                </asp:TemplateField>
                
              
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />

        </asp:GridView>
            
            <asp:TextBox ID="TextBox1" runat="server" Height="71px" TextMode="MultiLine" Width="518px"></asp:TextBox>
        
        <br />
        <div>
            Your Name
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="postQuestion" runat="server" Text="Post Your Question" OnClick="postQuestion_Click" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT user_db.photoId_Path,Forum.forumId, Forum.question, Forum.dateTim FROM Forum INNER JOIN user_db ON Forum.user_id = user_db.user_id WHERE (Forum.titleId = @titleId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="titleId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
