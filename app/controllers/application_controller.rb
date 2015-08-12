class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :global_site_settings, :load_contact

  def index
    @header_menu = Optimadmin::Menu.new(name: "header")
    @home_page_sections = BaseCollectionPresenter.new(collection: HomePageSection.ordered, view_template: view_context, presenter: HomePageSectionPresenter)
    @testimonials = BaseCollectionPresenter.new(collection: Testimonial.displayed, view_template: view_context, presenter: TestimonialPresenter)
    @team_members = BaseCollectionPresenter.new(collection: TeamMember.displayed, view_template: view_context, presenter: TeamMemberPresenter)
  end

  private

    def load_contact
      @contact = Contact.new
    end

    def global_site_settings
      @global_site_settings ||= Optimadmin::SiteSetting.current_environment
    end
    helper_method :global_site_settings
end
