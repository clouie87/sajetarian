$(document).on('click', '[data-behaviour~="scroll-button"]', function(event) {
  var target = $(event.target).data("target");
  var headerHeight = $(".nav-container").height();

  $('html, main').animate({
    scrollTop: $("#" + target).offset().top - headerHeight
  }, 1600);
})
