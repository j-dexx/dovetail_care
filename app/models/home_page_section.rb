class HomePageSection < ActiveRecord::Base
  mount_uploader :image, HomePageSectionUploader

  validates :area, uniqueness: true
  validates :content, presence: { message: "can not be blank, unless you set a title" }, unless: :title?

  scope :area, -> (area_name) { find_by(area: area_name) }
  scope :ordered, -> { order(:area) }

  has_many :gallery_images, dependent: :destroy

  AREAS = [
              ['Section 1', 'section_1'],
              ['Section 2', 'section_2'],
              ['Section 3', 'section_3'],
              ['Section 4', 'section_4'],
              ['Section 5', 'section_5'],
              ['Section 6', 'section_6'],
              ['Section 7', 'section_7'],
              ['Section 8', 'section_8'],
              ['Section 9', 'section_9'],
            ]
end
