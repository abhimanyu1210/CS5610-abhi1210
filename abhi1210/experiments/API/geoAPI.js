var error = document.getElementById("err");

function getLocation() {
    
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        error.innerHTML = "Geolocation is not supported by this browser.";
    }
}
function showPosition(position) {
    var lat = document.getElementById("lat");
    var long = document.getElementById("long");

    lat.value = position.coords.latitude;
    long.value = position.coords.longitude;
}