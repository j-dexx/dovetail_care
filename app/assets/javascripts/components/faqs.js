$(document).on('click', '.open-faq', function(e) {
  var toggleContainer = $(this).attr('data-container');
  var toggleClass     = $(this).attr('data-class');
  var dataReturn      = $(this).attr('data-return');
  var dataContent      = $(this).attr('data-content');
  var faqNumber       = parseInt($(this).data('faq'));
  var lastFaqNumber   = parseInt($('[data-faq]:last').data('faq'));

  $('.faq-popout-navigation-button').show();

  $('.faq-popout-content').html($(dataContent).html());

  $('.faq-popout').attr('data-current', faqNumber);

  if(faqNumber === 0) {
    $('.faq-popout-navigation-button.left').hide();
  } else if(faqNumber === lastFaqNumber) {
    $('.faq-popout-navigation-button.right').hide();
  }

  $(toggleContainer).show(toggleClass, function() {
    $(this).removeClass('hide').attr('style', '');
  });

  if (dataReturn === 'false') {
    e.preventDefault();
  }
});

$(document).on('click', '.faq-popout-navigation-button', function() {
  var currentFaq = parseInt($('.faq-popout').attr('data-current'));
  
  if($(this).hasClass('left')) {
    $('[data-faq=' + (currentFaq - 1) + ']').click();
  } else if($(this).hasClass('right')) {
    $('[data-faq=' + (currentFaq + 1) + ']').click();
  }

  return false;
});
