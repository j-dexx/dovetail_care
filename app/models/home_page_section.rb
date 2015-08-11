class HomePageSection < ActiveRecord::Base
  mount_uploader :image, HomePageSectionUploader

  validates :area, uniqueness: true
  validates :content, presence: true

  scope :area, -> (area_name) { find_by(area: area_name) }

  has_many :gallery_images

  AREAS = [
              'Introduction',
              'Footer'
            ]
end
