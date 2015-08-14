module Optimadmin
  class HomePageSectionsController < Optimadmin::ApplicationController
    edit_images_for HomePageSection, [[:image, { square: ['fill', 250, 250], potrait: ['fill', 250, 250], landscape: ['fill', 250, 250] }]]

    before_action :set_home_page_section, only: [:show, :edit, :update, :destroy]

    def index
      @home_page_sections = Optimadmin::BaseCollectionPresenter.new(collection: HomePageSection.where('title LIKE ?', "#{params[:search]}%").page(params[:page]).per(params[:per_page] || 15).ordered, view_template: view_context, presenter: Optimadmin::HomePageSectionPresenter)
    end

    def show
    end

    def new
      @home_page_section = HomePageSection.new
    end

    def edit
    end

    def create
      @home_page_section = HomePageSection.new(home_page_section_params)
      if @home_page_section.save
        redirect_to home_page_sections_url, notice: 'Home page section was successfully created.'
      else
        render :new
      end
    end

    def update
      if @home_page_section.update(home_page_section_params)
        redirect_to home_page_sections_url, notice: 'Home page section was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @home_page_section.destroy
      redirect_to home_page_sections_url, notice: 'Home page section was successfully destroyed.'
    end

  private


    def set_home_page_section
      @home_page_section = HomePageSection.find(params[:id])
    end

    def home_page_section_params
      params.require(:home_page_section).permit(:area, :title, :image, :image_cache, :remove_image, :remote_image_url, :content, :has_gallery)
    end
  end
end
