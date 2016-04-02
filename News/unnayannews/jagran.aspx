<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jagran.aspx.cs" Inherits="jagran" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>UNNAYAN NEWS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
        .auto-style2 {
            width: 300px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
   <div class="container-fluid">


<div class="row" >
<div class="alert alert-success">
<h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<strong>UNNAYAN NEWS</strong> </h1>
</div>
</div>

  <div class="col-lg-3 col-sm-3 col-md-3 col-xs-3" id="left">
      <div class="alert alert-warning">
           <h3><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEWS CHANNELS</strong></h3>
           </div>
</img>
  &nbsp;&nbsp;
      <br />
      <asp:ImageButton ID="ImageButton1" src="images/toi.png" runat="server" Height="59px" Width="65px" OnClick="ImageButton1_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton2" src="images/ndtv.png" runat="server" Height="59px" Width="65px" OnClick="ImageButton2_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton3"  src="images/timesnow.png" runat="server" Height="59px" Width="65px" OnClick="ImageButton3_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton4"  src="images/cnnibn.jpg" runat="server" Height="59px" Width="65px" OnClick="ImageButton4_Click" />
      <br />
      <br />
      <asp:ImageButton ID="ImageButton5"  src="images/abpananda.png" runat="server" Height="59px" Width="65px" OnClick="ImageButton5_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton6"  src="images/24ghanta.png" runat="server" Height="59px" Width="65px" OnClick="ImageButton6_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton7"  src="images/eenadu.jpg" runat="server" Height="59px" Width="65px" OnClick="ImageButton7_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton8" src="images/sakshi.png"  runat="server" Height="59px" Width="65px" OnClick="ImageButton8_Click" />
      <br />
      <br />
      <asp:ImageButton ID="ImageButton9" src="images/hindusthan.jpg" runat="server" Height="59px" Width="65px" OnClick="ImageButton9_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton10" src="images/jagran.jpg" runat="server" Height="59px" Width="65px" OnClick="ImageButton10_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton11"  src="images/amarujala.jpg"  runat="server" Height="59px" Width="65px" OnClick="ImageButton11_Click" />
      &nbsp;
      <asp:ImageButton ID="ImageButton12"  src="images/aajtak.png"  runat="server" Height="59px" Width="65px" OnClick="ImageButton12_Click" />
      <br />
&nbsp;&nbsp;&nbsp;
&nbsp;
      <br />
      <br />
&nbsp;&nbsp;
      &nbsp;
      &nbsp;
      <br />
      <br />
      <br />
      <br />
      <br />
&nbsp;</div>   

 <div class="col-lg-6 col-sm-6 col-md-6 col-xs-6" id="middle" >
    <object data=http://www.jagran.com/  width="100%" height="5000px"> <embed src=http://www.jagran.com/ width="100%" height="5000px"> </embed></object>
  </div>


<div class="col-lg-3 col-sm-3 col-md-3 col-xs-3" id="right">
    
<div class="row">
     <div class="alert alert-danger">
           
    <h3><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOCALNEWS</strong> </h3>
  </div>
    </div>

    <asp:ImageButton ID="ImageButton13" src="images/UnnayanLogo.jpg"  runat="server" Height="200px" Width="300px" OnClick="ImageButton13_Click" />
</div>
</div>
</div>
    </form>
</body>
</html>
