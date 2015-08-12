module Optimadmin
  class TeamMembersController < Optimadmin::ApplicationController

    edit_images_for TeamMember, [[:image, { show: ['fill', 176, 176] }]]
    before_action :set_team_member, only: [:show, :edit, :update, :destroy]

    def index
      @team_members = Optimadmin::BaseCollectionPresenter.new(collection: TeamMember.where('name LIKE ?', "#{params[:search]}%").page(params[:page]).per(params[:per_page] || 15).positioned, view_template: view_context, presenter: Optimadmin::TeamMemberPresenter)
    end

    def show
    end

    def new
      @team_member = TeamMember.new
    end

    def edit
    end

    def create
      @team_member = TeamMember.new(team_member_params)
      if @team_member.save
        redirect_to team_members_url, notice: 'Team member was successfully created.'
      else
        render :new
      end
    end

    def update
      if @team_member.update(team_member_params)
        redirect_to team_members_url, notice: 'Team member was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @team_member.destroy
      redirect_to team_members_url, notice: 'Team member was successfully destroyed.'
    end

  private


    def set_team_member
      @team_member = TeamMember.find(params[:id])
    end

    def team_member_params
      params.require(:team_member).permit(:name, :role, :image, :image_cache, :remove_image, :remote_image_url, :summary, :display)
    end
  end
end
