class Testimonial < ActiveRecord::Base
  validates :summary, presence: true

  scope :positioned, -> { order(:position) }
  scope :displayed, -> { where(display: true).positioned }
end
