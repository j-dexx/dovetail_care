class HomePageSection < ActiveRecord::Base
  mount_uploader :image, HomePageSectionUploader

  validates :area, uniqueness: true
  validates :content, presence: true

  scope :area, -> (area_name) { find_by(area: area_name) }
  scope :ordered, -> { order(:area) }

  has_many :gallery_images, dependent: :destroy

  AREAS = [
              ['Section 1', 'section_1'],
              ['Section 2', 'section_2'],
              ['Section 3', 'section_3']
            ]
end
