$(document).on("click", ".toggle-class", function(e) {
  var toggleContainer = $(this).attr('data-container');
  var toggleClass     = $(this).attr('data-class');
  var dataReturn      = $(this).attr('data-return');

  $(toggleContainer).toggleClass(toggleClass);

  if($('.form-popout').hasClass('hide')) {
    $('body').removeClass('overflow-y-hidden');
  }

  if (dataReturn === 'false') {
    e.preventDefault();
  }
});
