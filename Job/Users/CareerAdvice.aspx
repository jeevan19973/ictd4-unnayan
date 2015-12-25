<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CareerAdvice.aspx.cs" Inherits="Job_Users_CareerAdvice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        

        function showIFrame(myframe) {
            document.getElementById("rozgarduniya").style.display = "none";
            document.getElementById("ruralnaukri").style.display = "none";
            document.getElementById("villagenaukri").style.display = "none";
            document.getElementById(myframe).style.display = "block";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:LinkButton ID="LinkButton_villagenaukri" runat="server" OnClientClick="showIFrame('villagenaukri');return false;">villagenaukri.com</asp:LinkButton>

        </p>
        <p>
            <asp:LinkButton ID="LinkButton_ruralnaukri" OnClientClick="showIFrame('ruralnaukri');return false;" runat="server">ruralnaukri.com</asp:LinkButton>

        </p>
        <p>
            <asp:LinkButton ID="LinkButton_rozgarduniya" OnClientClick="showIFrame('rozgarduniya');return false;" runat="server">rozgarduniya.com</asp:LinkButton>

        </p>
        <div id="villagenaukri" style="display:none">
            <iframe height="800" width="800" src="http://villagenaukri.com/"></iframe>


        </div>
        <div id="rozgarduniya" style="display: none">
            <iframe height="800" width="800" src="http://csc.rozgarduniya.com/"></iframe>
        </div>

        <br />
        <div id="ruralnaukri"  style="display:none"> 
            <iframe height="800" width="800" src="http://ruralnaukri.com/"></iframe>
        </div>



    </form>
</body>
</html>
