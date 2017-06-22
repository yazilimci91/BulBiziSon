<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMapsMaker.aspx.cs" Inherits="Bulbizi.GooglemMapsMaker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #map {
            height: 400px;
            width: 100%;
        }
    </style>
</head>
<body>
     
   <%--  <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=&callback=initMap">
    </script>--%>
     <script type="text/javascript">
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.HYBRID
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById('map'), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>


    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDE-8MvEgIevFsq_-2EFj25tk0UNY-KIO8&callback=initMap"
  type="text/javascript"></script>

    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
        function initMap() {
            var uluru = { lat: 41.008241, lng: 28.978357 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 12,
                center: uluru,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }
    </script>
   

    <form id="form1" runat="server">

        <asp:Repeater ID="rptMarkers" runat="server">
            <ItemTemplate>
                {
            "title": '<%# Eval("Name") %>',
            "lat": '<%# Eval("Latitude") %>',
            "lng": '<%# Eval("Longitude") %>',
            "description": '<%# Eval("Description") %>'
        }
            </ItemTemplate>
            <SeparatorTemplate>
                ,
            </SeparatorTemplate>
        </asp:Repeater>


    </form>
</body>
</html>
