function initMap(events = []) {
  var results = [];
  var new_data = [];
  var home = {lat: 49.2680207, lng: -123.113491}
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

      var map = new google.maps.Map(document.getElementById('google-map'), {
        zoom: 12,
      });

      if (results.length > 0) {
        map.setCenter(results[0]);
        var markers = results.map(function(location, i) {

          return new google.maps.Marker({
            position: location,
            label: labels[i % labels.length],
            map: map
          });
        });

        return markers
      } else {
        map.setCenter(home);
        var marker = new google.maps.Marker({
          position: home,
          map: map
        });
      }
    }
  })
}
