// https://github.com/matthieua/WOW/issues/46
function wowInit() {
  wow = new WOW(
    {
      boxClass:     'onScreen',      // default
      animateClass: 'animated', // default
      offset:       92,          // default
      mobile:       true,       // default
      live:         true        // default
    }
  );
  wow.init();
}

wowInit();

$(function() {
  $('.wow').onScreen({
    tolerance: 0,
    toggleClass: false,
    doIn: function() {
      $(this).addClass('onScreen');
      wowInit();
    }
  });
});

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
