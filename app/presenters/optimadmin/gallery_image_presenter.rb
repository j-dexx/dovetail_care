module Optimadmin
  class GalleryImagePresenter < Optimadmin::BasePresenter
    presents :gallery_image

    def id
      gallery_image.id
    end

    def title
      gallery_image.title
    end
  end
end
