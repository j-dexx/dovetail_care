module Optimadmin
  class GalleryImagePresenter < Optimadmin::BasePresenter
    presents :gallery_image

    def id
      gallery_image.id
    end

    def title
      gallery_image.title
    end

    def toggle_title
      inline_detail_toggle_link(title)
    end

    def optimadmin_summary
      h.image_tag gallery_image.image.square
    end

    def home_page_section_id
      gallery_image.home_page_section.id
    end
  end
end
