// https://github.com/matthieua/WOW/issues/46
function wowInit() {
  wow = new WOW(
    {
      boxClass:     'wow',      // default
      animateClass: 'animated', // default
      offset:       0,          // default
      mobile:       false,       // default
      live:         false,        // default
      callback:     function(box) {
        //$(box).toggleClass('finished animate');
      }
    }
  );
  wow.init();
}

wowInit();

/*
$(function() {
  $('section').onScreen({
    tolerance: 0,
    toggleClass: 'onScreen',
    doIn: function() {
      //wow.stop();
      wowInit();
      $('.onScreen .wow:not(.finished)').addClass('animate');
    },
    doOut: function() {
      setTimeout(function() { $('.wow:not(.onScreen .wow)').removeClass('finished animate animated').attr('style', ''); }, 500);
    }
  });
});
*/


// https://github.com/matthieua/WOW/issues/20
/*
$(document).on('mouseover', 'img', function () {
    var $this = $(this);
    var effect = 'bounceIn';

    $this
        .addClass('animated ' + effect)
        .on('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
        $this.removeClass('animated ' + effect);
    });
});
*/
