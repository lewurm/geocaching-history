function convert_degrees_to_decimal(degrees, minutes) {
    if (degrees >= 0) {
        return degrees + minutes/60;
    } else {
        return degrees - minutes/60;
    }
}

function main() {
    var gc_north = convert_degrees_to_decimal(37, 46.500);
    var gc_west = convert_degrees_to_decimal(-122, 25.500);
    var map = L.map('map').setView([gc_north, gc_west], 12);

    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6IjZjNmRjNzk3ZmE2MTcwOTEwMGY0MzU3YjUzOWFmNWZhIn0.Y8bhBaUMqFiPrDRW9hieoQ', {
        maxZoom: 18,
        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
            '<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
            'Imagery © <a href="http://mapbox.com">Mapbox</a>',
        id: 'mapbox.streets'
    }).addTo(map);


    var type_traditional_cache = L.icon({iconUrl: 'http://www.geocaching.com/images/wpttypes/sm/2.gif', iconSize: [14, 14]});
    var cache = L.marker([gc_north, gc_west], {icon: type_traditional_cache});
    cache.addTo(map); // .bindPopup("<b>Hello world!</b><br />I am a popup.").openPopup();

    /* 
    L.circle([51.508, -0.11], 500, {
        color: 'red',
        fillColor: '#f03',
        fillOpacity: 0.5
    }).addTo(map).bindPopup("I am a circle.");

    L.polygon([
        [51.509, -0.08],
        [51.503, -0.06],
        [51.51, -0.047]
    ]).addTo(map).bindPopup("I am a polygon.");


    var popup = L.popup();

    function onMapClick(e) {
        popup
            .setLatLng(e.latlng)
            .setContent("You clicked the map at " + e.latlng.toString())
            .openOn(map);
    }

    map.on('click', onMapClick);
    */
}
