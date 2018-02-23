function initMap(events = []) {
  var results = [];
  var new_data = [];
  var home = {lat: 49.2897713, lng: -123.1343084};


  var map = new google.maps.Map(document.getElementById('google-map'), {
    zoom: 12,
    center: home
  });

  var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  $.ajax({
    dataType: "json",
    url: 'events.json',
    success: function(data) {
      $(data).map(function() {
        if(this.lat != null && this.lng != null) {
          results.push({ lat: this.lat, lng: this.lng })
        }
        return results
      });

      var markers = results.map(function(location, i) {

        return new google.maps.Marker({
          position: location,
          label: labels[i % labels.length],
          map: map
        });
      });

      return markers
    }
  })
}

function getMap() {
  var home = {lat: 49.2897713, lng: -123.1343084};
  return new google.maps.Map(document.getElementById('google-map'), {
    zoom: 16,
  });
}
