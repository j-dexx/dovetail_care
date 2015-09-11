module Optimadmin
  class TestimonialPresenter < Optimadmin::BasePresenter
    presents :testimonial

    def id
      testimonial.id
    end

    def summary
      h.strip_tags testimonial.summary
    end

    def toggle_title
      inline_detail_toggle_link(h.truncate summary, length: 80)
    end
  end
end
