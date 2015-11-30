class TeamMember < ActiveRecord::Base
  mount_uploader :image, TeamMemberUploader

  validates :name, :image, :summary, presence: true

  scope :positioned, -> { order(:position) }
  scope :displayed, -> { where(display: true).positioned }
end
