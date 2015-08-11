class Service < ActiveRecord::Base
  validates :title, :summary, presence: true

  scope :positioned, -> { order(:position) }
  scope :displayed, -> { where(display: true).positioned }
end
