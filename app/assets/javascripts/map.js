Map.store =  {};

function initMap(events = []) {
  var results = [];
  var new_data = [];
  var home = {lat: 49.2680207, lng: -123.113491}
  var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  $.ajax({
    dataType: "json",
    url: 'events.json?month=' + (new Date().getMonth() + 1),
    success: function(data) {
      var map = new google.maps.Map(document.getElementById('google-map'), {
        zoom: 12,
      });

      map.setCenter(home);

      if ($(data).length > 0) {
        Map.store.markers = $(data).map(function(i, eventInfo) {
          if(eventInfo.lat != null && eventInfo.lng != null) {
            marker = new google.maps.Marker({
              position: { lat: eventInfo.lat, lng: eventInfo.lng },
              label: labels[i % labels.length],
              id: eventInfo.id,
              map: map
            });

            var dateOptions = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
            var humanDate = new Date(eventInfo.start).toLocaleDateString("en-US", dateOptions);
            if (humanDate == new Date().toLocaleDateString("en-US", dateOptions)) {
              humanDate = "Today";
            };

            var eventName = eventInfo.name || ""

            var contentString = '<div id="content">' +
                                '<p class="event-name">' + eventName + '</p>' +
                                '<p class="map-info-date">' + humanDate + '</p>' +
                                '<p>Where: ' + eventInfo.address + '</p>' +
                                '<p>Times: ' + eventInfo.starts_at + '-' + eventInfo.ends_at + '</p>' +
                                '</div>';


            marker['infowindow'] = new google.maps.InfoWindow({
              content: contentString
            });

            if (humanDate == "Today") {
              marker['infowindow'].open(map, marker);
              map.setCenter(marker.position);
            }

            return marker;
          }

          return Map.store.markers
        });

      } else {
        var marker = new google.maps.Marker({
          position: home,
          map: map
        });
      }
    }
  })
}

$(document).on('turbolinks:load', initMap);
