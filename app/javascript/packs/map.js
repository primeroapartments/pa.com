import 'mapbox-gl/dist/mapbox-gl.css'
// import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';


const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = process.env.MAPBOX_API_KEY;

    var sheffield = [-1.46717090000004, 53.3849133];
    var cardiff = [-3.17832369999996, 51.4725554];
    var basingstoke = [-1.08406260000004, 51.2637449];
    var birmingham = [-1.8904, 52.4862];

    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/light-v10',
        center: birmingham,
        zoom: 6
    });

    // create the popup
    var popupCardiff = new mapboxgl.Popup({ offset: 25 }).setText(
        'Stay in the Brickworks, Cardiff'
    );

    // create DOM element for the marker
    var el = document.createElement('div');
    el.id = 'markerCardiff';

    // create the marker
    new mapboxgl.Marker(el)
        .setLngLat(cardiff)
        .setPopup(popupCardiff) // sets a popup on this marker
        .addTo(map);

//////

    // create the popup
    var popupBasingstoke = new mapboxgl.Popup({ offset: 25 }).setText(
        'Stay in the Old Post Office or Verum House'
    );

    // create DOM element for the marker
    var el = document.createElement('div');
    el.id = 'markerBasingstoke';

    // create the marker
    new mapboxgl.Marker(el)
        .setLngLat(basingstoke)
        .setPopup(popupBasingstoke) // sets a popup on this marker
        .addTo(map);

/////

    // create the popup
    var popupSheffield = new mapboxgl.Popup({ offset: 25 }).setText(
        'Stay in the Fitzgerald'
    );

    // create DOM element for the marker
    var el = document.createElement('div');
    el.id = 'markerSheffield';

    // create the marker
    new mapboxgl.Marker(el)
        .setLngLat(sheffield)
        .setPopup(popupSheffield) // sets a popup on this marker
        .addTo(map);
/////

    // create the popup
    var popupBirmingham = new mapboxgl.Popup({ offset: 25 }).setText(
        'Birmingham apartments coming soon!'
    );

    // create DOM element for the marker
    var el = document.createElement('div');
    el.id = 'markerBirmingham';

    // create the marker
    new mapboxgl.Marker(el)
        .setLngLat(birmingham)
        .setPopup(popupBirmingham) // sets a popup on this marker
        .addTo(map);


  // const map = new mapboxgl.Map({
  //   container: 'map', // container id
  //   style: 'mapbox://styles/mapbox/streets-v11', // stylesheet location
  //   center: [-1.7603, 53.3781], // starting position [lng, lat]
  //   zoom: 6, // starting zoom
  // });

  // const markers = JSON.parse(mapElement.dataset.markers);

  // markers.forEach((marker) => {
  //   new mapboxgl.Marker()
  //     .setLngLat([ marker.lng, marker.lat ])
  //     .addTo(map);
  // });


}
