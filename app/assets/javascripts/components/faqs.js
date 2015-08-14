$(document).on('click', '.open-faq', function() {
  var toggleContainer = $(this).attr('data-container');
  var toggleClass     = $(this).attr('data-class');
  var dataReturn      = $(this).attr('data-return');
  var dataContent      = $(this).attr('data-content');

  $('.faq-popout-content').html($(dataContent).html());

  $(toggleContainer).show(toggleClass, function() {
    $(this).removeClass('hide').attr('style', '');
  });

  if (dataReturn === 'false') {
    e.preventDefault();
  }
});
