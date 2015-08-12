module ApplicationHelper

  def telephone_link(options = {})
    link_to global_site_settings['Telephone'], "tel:#{global_site_settings['Telephone']}", options
  end

end
