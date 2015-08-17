$(document).on('click', 'a[href^=#]:not([href=#])', function() {
  var target = $(this.hash);

  if(target.length) {
    $('html, body').animate({
      scrollTop: target.offset().top
    }, 500);
  }

  return false;
});

$(window).scroll(function() {
  if($(document).scrollTop() > 100) {
    $('.scroll-up').fadeIn();
  } else if($(document).scrollTop() < 100) {
    $('.scroll-up').fadeOut();
  }
});
