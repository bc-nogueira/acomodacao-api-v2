function initMap(lat, lng) {
    console.log("Entrou");
    var myCoords = new google.maps.LatLng(lat, lng);

    var mapOptions = {
        center: myCoords,
        zoom: 16
    };

    var map = new google.maps.Map(document.getElementById('mapShow'), mapOptions);

    var marker = new google.maps.Marker({
        position: myCoords,
        map: map
    });
}