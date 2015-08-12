module Optimadmin
  class HomePageSectionPresenter < Optimadmin::BasePresenter
    presents :home_page_section

    def id
      home_page_section.id
    end

    def title
      home_page_section.title
    end

    def area
      home_page_section.area.humanize
    end

    def content
      h.raw home_page_section.content
    end

    def has_gallery?
      home_page_section.has_gallery
    end
  end
end
