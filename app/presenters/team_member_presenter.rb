class TeamMemberPresenter < BasePresenter
  presents :team_member

  def image
    h.image_tag team_member.image.show, alt: team_member.name, class: 'team-member-photo'
  end

  def name
    team_member.name
  end

  def role
    team_member.role if team_member.role.present?
  end

  def summary
    h.raw team_member.summary
  end
end
