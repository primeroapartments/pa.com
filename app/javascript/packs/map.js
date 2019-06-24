// import 'mapbox-gl/dist/mapbox-gl.css'
// import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';

const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = "pk.eyJ1IjoicHJpbWVyb2FwYXJ0bWVudHMiLCJhIjoiY2p4Nm5janJrMDFkNDN4cnF4YTB6Y2ZuMSJ9._eB7FwuoUon-B2wGple3Kg"//process.env.MAPBOX_API_KEY; // API key from `.env`
  // const map = new mapboxgl.Map({
  //   container: 'map',
  //   style: 'mapbox://styles/mapbox/streets-v10'
  var map = new mapboxgl.Map({
  container: 'map', // container id
  style: 'mapbox://styles/mapbox/streets-v11', // stylesheet location
  center: [-74.50, 40], // starting position [lng, lat]
  zoom: 9 // starting zoom
  });
}


  // const markers = JSON.parse(mapElement.dataset.markers);

  // markers.forEach((marker) => {
  //   new mapboxgl.Marker()
  //     .setLngLat([marker.lng, marker.lat])
  //     .addTo(map);
  // })

  // if (markers.length === 0) {
  //    map.setZoom(1);
  //  } else if (markers.length === 1) {
  //    map.setZoom(14);
  //    map.setCenter([markers[0].lng, markers[0].lat]);
  //  } else {
  //    const bounds = new mapboxgl.LngLatBounds();
  //    markers.forEach((marker) => {
  //      bounds.extend([marker.lng, marker.lat]);
  //    });
  //    map.fitBounds(bounds, { duration: 10000, padding: 75 })
  //  }
// }
