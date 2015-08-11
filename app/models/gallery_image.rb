class GalleryImage < ActiveRecord::Base
  mount_uploader :image, GalleryImageUploader

  belongs_to :home_page_section

  validates :image, presence: true

  scope :displayed, -> { where(display: true) }
end
