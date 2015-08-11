module Optimadmin
  class TestimonialPresenter < Optimadmin::BasePresenter
    presents :testimonial

    def id
      testimonial.id
    end

    def summary
      h.strip_tags testimonial.summary
    end
  end
end
