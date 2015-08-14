class Service < ActiveRecord::Base
  validates :title, presence: true

  scope :positioned, -> { order(:position) }
  scope :displayed, -> { where(display: true).positioned }
end
