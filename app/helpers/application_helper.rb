module ApplicationHelper

  def telephone_link(options = {})
    link_to global_site_settings['Telephone'], "tel:#{global_site_settings['Telephone']}", options
  end

  def form_partial_helper(form_type)
    partial = form_type.gsub(' ', '_').downcase
    case partial
      when 'request_appointment'
        'request_appointment_form_popout'
      when 'recruitment'
        'recruitment_form_popout'
      else
        'contact_form_popout'
      end
  end
end
