//= require moment
//= require fullcalendar

function eventCalendar() {
  $('#event_calendar').fullCalendar({
    header: {
    center: '',
    right:  'today prev,next'
},
    displayEventEnd: true,
    eventColor: '#378006',
    events: '/events.json',
    timeFormat: 'h(:mm)',
    eventRender: function(event, element) {
      $(element).append("<span class='calendar-description'>"+ event.address+"</span>")
    },
    eventClick: function(calEvent, jsEvent, view) {
       $(this).css('border-color', 'red');
       // create a modal
       // eventModal(calEvent);
   }
  });
};

function clearCalendar() {
  $('#event_calendar').fullCalendar('delete'); // In case delete doesn't work.
  $('#event_calendar').html('');
};

$(document).on('turbolinks:load', eventCalendar);
$(document).on('turbolinks:before-cache', clearCalendar)
