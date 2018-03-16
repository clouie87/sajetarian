$(document).ready(function() {
  var instagramMedia = $('.instagram-media');
  instagramMedia.slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    infinite: false,
    adaptiveHeight:
    true, dots: true,
    centerMode: true,
    variableWidth: true });

  var instgram_url = "https://api.instagram.com/v1/users/ENV["INSTAGRAM_USER_ID"]/media/recent?access_token=ENV["ACCESS_TOKEN"]";
  $.get(instgram_url, function(response) {
    var data = response.data

    $.each(data, function(index, value) {
      instagramMedia.slick('slickAdd', "<img src=" + value.images.standard_resolution.url + ">")
      console.log(value.images.standard_resolution.url)
    })
  })

})
