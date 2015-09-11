module Optimadmin
  class ServicePresenter < Optimadmin::BasePresenter
    presents :service

    def id
      service.id
    end

    def title
      service.title
    end

    def summary
      h.raw service.summary
    end

    def toggle_title
      inline_detail_toggle_link(title)
    end
  end
end
