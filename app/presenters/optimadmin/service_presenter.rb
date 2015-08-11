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
  end
end
