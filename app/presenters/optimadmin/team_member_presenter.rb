module Optimadmin
  class TeamMemberPresenter < Optimadmin::BasePresenter
    presents :team_member

    def id
      team_member.id
    end

    def name
      team_member.name
    end

    def summary
      h.raw team_member.summary
    end

    def toggle_title
      inline_detail_toggle_link(name)
    end
  end
end
