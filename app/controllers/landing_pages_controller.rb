class LandingPagesController < ApplicationController
  def show
    @header_menu = Optimadmin::Menu.new(name: "landing_pages")
    @home_page_sections = BaseCollectionPresenter.new(
      collection: HomePageSection.ordered.where.not(area: non_recruitment_sections),
      view_template: view_context,
      presenter: HomePageSectionPresenter
    )
    @testimonials = BaseCollectionPresenter.new(collection: Testimonial.displayed, view_template: view_context, presenter: TestimonialPresenter)
    @team_members = BaseCollectionPresenter.new(collection: TeamMember.displayed, view_template: view_context, presenter: TeamMemberPresenter)
  end

  private

  def non_recruitment_sections
    %w( section_5 section_7 )
  end
end
