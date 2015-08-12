class HomePageSectionPresenter < BasePresenter
  presents :home_page_section

  def id
    home_page_section.id
  end

  def title
    home_page_section.title
  end

  def area
    home_page_section.area
  end

  def css_class
    area.gsub('_', '-')
  end

  def partial
    "home_page_sections/#{area}"
  end

  def content
    h.raw home_page_section.content
  end

  def has_gallery?
    home_page_section.has_gallery
  end
end
