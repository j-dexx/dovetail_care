$(document).on('click', '.form-area input[type="submit"]', function() {
  $(this).val('Loading...');
  $('.form-area input[type="text"], .form-area textarea').attr('readonly', 'readonly').css('opacity', '0.5');
});

$(document).on('click', '.open-sidebar', function() {
  $('.form-area').html('<p>Loading...</p>');

  var toggleContainer = $(this).attr('data-container');
  var toggleClass     = $(this).attr('data-class');
  var dataReturn      = $(this).attr('data-return');

  $(toggleContainer).show(toggleClass, function() {
    $(this).removeClass('hide').attr('style', '');
  });

  $('body').addClass('overflow-y-hidden');

  if (dataReturn === 'false') {
    e.preventDefault();
  }
});
