class TestimonialPresenter < BasePresenter
  presents :testimonial

  def summary
    h.raw testimonial.summary
  end  
end
