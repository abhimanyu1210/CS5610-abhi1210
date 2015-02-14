var geocoder;
var map;
var marker;

function initialize() {
    var latlng = new google.maps.LatLng(42.3581, -71.0636);
    var options = {
        zoom: 14,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.SATELLITE
    };

    map = new google.maps.Map(document.getElementById("mapdisplay"), options);
    geocoder = new google.maps.Geocoder();

    marker = new google.maps.Marker({
        map: map,
        draggable: true
    });

}
function getLocation() {
    var address = document.getElementById('locToSearch').value;
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            map.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });
        } else {
            alert('Sorry, could not retrieve data ' + status);
        }
    });
}
google.maps.event.addDomListener(window, 'load', initialize);