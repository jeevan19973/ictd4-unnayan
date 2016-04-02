<%@ Page Language="C#" AutoEventWireup="true" CodeFile="geolocation.aspx.cs" Inherits="Digital_Humanities_geolocation" %>

<!DOCTYPE html>

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
            var markers = [<%=GetMarkers()%>];
           var i;
            for( i = 0 ; i < markers.length ;i++)
            {
                var mark = new google.maps.Marker(markers[i]);
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
