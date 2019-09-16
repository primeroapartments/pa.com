import 'mapbox-gl/dist/mapbox-gl.css'
// import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';


const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
  const map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v11', // stylesheet location
    center: [-1.7603, 53.3781], // starting position [lng, lat]
    zoom: 6, // starting zoom
  });

  const markers = JSON.parse(mapElement.dataset.markers);

  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
}
