<template>
  <div id='map' style='height: 480px;'></div>
</template>

<style scoped>
body { margin:0; padding:0; }
#map { position:absolute; top:0; bottom:0; width:100%; }
.mapboxgl-popup {
  max-width: 400px;
  font: 12px/20px 'Helvetica Neue', Arial, Helvetica, sans-serif;
}
</style>

<script>
export default {
  data: function () {
    return {
    };
  },
  mounted() {
    this.loadMap();
  },
  methods: {
    loadMap: function () {
      const mapToken = 'pk.eyJ1IjoibW9waW5maXNoIiwiYSI6ImNqZGZreGVuajBhNjIyd29idXI3ZHFxNm4ifQ._edxUwp0j5sAl7FsK9oyrA';
      mapboxgl.accessToken = mapToken;
      console.log(mapboxgl);
      this.map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mopinfish/cjdig1o651oxc2rmksb7qh0qb', // stylesheet location
          center: [139.767052, 35.681167], // starting position [lng, lat]
          zoom: 14,
      });
      // Add zoom and rotation controls to the map.
      this.map.addControl(new mapboxgl.NavigationControl(), 'bottom-right');
      // Add full-screen control
      this.map.addControl(new mapboxgl.FullscreenControl(), 'top-right');
      // Add geolocate control to the map.
      this.map.addControl(new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true
        },
        trackUserLocation: true
      }));
    }

  }
}
</script>
