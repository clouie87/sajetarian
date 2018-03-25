//= require moment
//= require fullcalendar

function eventCalendar() {
  $('#event_calendar').fullCalendar({
    header: {
    center: '',
    right:  'today prev, next'
    },
    displayEventEnd: true,
    eventColor: '#cd9b00',
    events: '/events.json',
    timeFormat: 'h(:mm)',
    eventClick: function(calEvent, jsEvent, view) {
      $(this).css('border-color', '#bb974d');

      var map = new google.maps.Map(document.getElementById('google-map'), {
        zoom: 12,
      });

      var marker = new google.maps.Marker({
        position: { lat: calEvent.lat, lng: calEvent.lng },
        label: "A",
        map: map
      });

      return map.panTo(marker.getPosition());
    }
  });
};

function clearCalendar() {
  $('#event_calendar').fullCalendar('delete'); // In case delete doesn't work.
  $('#event_calendar').html('');
};

$(document).on('turbolinks:load', eventCalendar);
$(document).on('turbolinks:before-cache', clearCalendar)
