class ServicePresenter < BasePresenter
  presents :service

  def id
    service.id
  end

  def linked_title
    h.content_tag :div, service.title, class: 'service-item'
  end

  def summary
    h.raw service.summary
  end
end
