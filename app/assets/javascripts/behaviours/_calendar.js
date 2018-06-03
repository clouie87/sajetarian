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

      var markerId = calEvent.id;

      $.each(Map.store.markers, function() {
        if (this.id == markerId) {
          this.map.panTo(this.position);
          this['infowindow'].open(this.map, this);
        } else {
          this['infowindow'].close(this.map, this);
        }
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
