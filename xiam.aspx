<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xiam.aspx.cs" Inherits="Maps.xiam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCo-BQJulxBPvLNASMotfzsYY6py8-Fch8"></script>

</head>
<body onload="initMap()">
    <div id="map" style="width: 100%; height: 400px;"></div>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <script>
        var point1 = new google.maps.LatLng(37.7749, -122.4194);
        var point2 = new google.maps.LatLng(34.0522, -118.2437);
        var distance = google.maps.geometry.spherical.computeDistanceBetween(point1, point2);
        console.log(distance);


    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 37.7749, lng: -122.4194},
            zoom: 10
        });
        var marker = new google.maps.Marker({
            position: { lat: 37.7749, lng: -122.4194 },
            map: map,
            title: "Pe Motet",
        });

    }
    </script>

</body>
</html>
