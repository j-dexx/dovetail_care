$(function() {
  $('.animation').onScreen({
    tolerance: 0,
    toggleClass: 'onScreen',
    doIn: function() {
      var $elem = $(this);
      if($elem.attr('data-animation-delay') !== undefined)  {
        setTimeout(function(elem) { $elem.addClass('animated ' + $elem.attr('data-animation-type')); }, $elem.attr('data-animation-delay'));
      } else {
        $elem.addClass('animated ' + $elem.attr('data-animation-type'));
      }
    },
    doOut: function() {
      var $elem = $(this);
      $elem.removeClass('animated ' + $elem.attr('data-animation-type'));
    }
  });
});

// https://github.com/matthieua/WOW/issues/20
$(document).on('mouseover', '.scroll-up', function () {
    var $elem = $(this);
    var effect = 'bounceIn';

    $elem.addClass('animated ' + effect)
        .on('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend',
        function () {
          $elem.removeClass('animated ' + effect);
        });
});
