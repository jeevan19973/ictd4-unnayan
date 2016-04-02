<%@ Page Language="C#" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="Digital_Humanities_location" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
  
<html>  
  <head>  
    <title></title>  
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">  
    <meta charset="utf-8">  
    <style type="text/css">  
      html, body, #canvasMap {  
        height: 754px;  
        margin: 18px 0px 0px 19px;  
        padding: 0px;
            width: 1057px;
        }  
    </style>  
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>  
    <script type="text/javascript">
        var map;
        function LoadGoogleMAP() {
            var SetmapOptions = {
                zoom: 10,
                center: new google.maps.LatLng(-34.397, 150.644)
            };
            map = new google.maps.Map(document.getElementById('canvasMap'),
      SetmapOptions);

            var myLatLng = { lat: 28.03, lng: 77.04 };
            var myLatLng2 = { lat: -34.397, lng: 150.644 };
            var marker = [{
                position: myLatLng,
                map: map,
                title: 'Hello World!'
            }, {
                position: myLatLng2,
                map: map,
                title: 'Hello Australia!'

            }];

            var i;
            for( i = 0 ; i < marker.length; i++)
            {
                var mark = new google.maps.Marker(marker[i]);
            }
        }

        google.maps.event.addDomListener(window, 'load', LoadGoogleMAP);

    </script>  
  </head>  
  <body>  
      
    <div id="canvasMap"> 
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      </div>  
  </body>  
</html>  