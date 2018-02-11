$(document).on('click', '[data-behaviour~="scroll-button"]', function(event) {
  var target = $(event.target).data("target");
  $('html, main').animate({
    scrollTop: $("#" + target).offset().top
  }, 2000);
})
