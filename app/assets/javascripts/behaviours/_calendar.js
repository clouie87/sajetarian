//= require moment
//= require fullcalendar

function eventCalendar() {
  $('#event_calendar').fullCalendar({
    header: {
    center: '',
    right:  'today prev, next'
    },
    displayEventEnd: true,
    eventColor: '#378006',
    events: '/events.json',
    timeFormat: 'h(:mm)',
    eventClick: function(calEvent, jsEvent, view) {
      $(this).css('border-color', 'red');
      var home = {lat: 49.2897713, lng: -123.1343084};

      var map = new google.maps.Map(document.getElementById('google-map'), {
        zoom: 12,
        center: home
      });

      return new google.maps.Marker({
        position: { lat: calEvent.lat, lng: calEvent.lng },
        label: "A",
        map: map
      });
    }
  });
};

function clearCalendar() {
  $('#event_calendar').fullCalendar('delete'); // In case delete doesn't work.
  $('#event_calendar').html('');
};

$(document).on('turbolinks:load', eventCalendar);
$(document).on('turbolinks:before-cache', clearCalendar)
