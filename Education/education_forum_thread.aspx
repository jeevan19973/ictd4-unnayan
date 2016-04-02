<%@ Page Language="C#" AutoEventWireup="true" CodeFile="education_forum_thread.aspx.cs" Inherits="Education_education_forum_thread" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-right: 0px" DataKeyNames="threadId" DataSourceID="SqlDataSource1"  >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="threadId" HeaderText="threadId" InsertVisible="False" ReadOnly="True" SortExpression="threadId" />
                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                <asp:BoundField DataField="dateTime" HeaderText="dateTime" SortExpression="dateTime" />
                <asp:TemplateField>
                     


                    
                     


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
            <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT threadId, answer, dateTime FROM Thread WHERE (forumId = @forumId)">
                <SelectParameters>
                    <asp:SessionParameter Name="forumId" SessionField="ForumId" />
                </SelectParameters>
        </asp:SqlDataSource>
    <div>
    
            <asp:TextBox ID="TextBox1" runat="server" Height="71px" TextMode="MultiLine" Width="518px"></asp:TextBox>
        <div>
            Your Name
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="postQuestion" runat="server" Text="Post Your Question" OnClick="postQuestion_Click" />
        </div>
    
    </div>
    </form>
</body>
</html>
