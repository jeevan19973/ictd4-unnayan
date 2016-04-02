<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Question_Answer.aspx.cs" Inherits="Education_Question_Answer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div  style="font-weight: 700; font-size: x-large">
            Make an Audio file of your question and Upload here<br />
            <br />

        </div>
        <div>
            <asp:FileUpload ID="fileUpload1" runat="server" /><br />
            <asp:TextBox ID="Keyword" runat="server"></asp:TextBox>
&nbsp;Quesion keyword<br />
            <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine"></asp:TextBox>
            Comments<br />
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        </div>
        <div>
            <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" >
                <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" />
                    <asp:BoundField DataField="FileName" HeaderText="FileName" ItemStyle-Width="300px"/>
                    <asp:BoundField DataField="Keyword" HeaderText="Keyword" ItemStyle-Width="50px"/>
                    <asp:BoundField DataField="Comments" HeaderText="Comments" />
                    <asp:TemplateField HeaderText="FilePath">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
