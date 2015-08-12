module Optimadmin
  class GalleryImagesController < Optimadmin::ApplicationController
    edit_images_for GalleryImage, [[:image, { square: ['fill', 185, 185], potrait: ['fill', 212, 184], landscape: ['fill', 212, 184] }]]

    before_action :set_home_page_section, except: [:create, :edit, :update, :destroy]
    before_action :set_gallery_image, only: [:show, :edit, :update, :destroy]

    def index
      @gallery_images = Optimadmin::BaseCollectionPresenter.new(collection: GalleryImage.where('title LIKE ?', "#{params[:search]}%").page(params[:page]).per(params[:per_page] || 15), view_template: view_context, presenter: Optimadmin::GalleryImagePresenter)
    end

    def show
    end

    def new
      @gallery_image = GalleryImage.new
    end

    def edit
      @home_page_section = @gallery_image.home_page_section
    end

    def create
      @gallery_image = GalleryImage.new(gallery_image_params)
      @home_page_section = HomePageSection.find(gallery_image_params[:home_page_section_id])
      if @gallery_image.save
        redirect_to gallery_images_url(home_page_section_id: @gallery_image.home_page_section_id), notice: 'Gallery image was successfully created.'
      else
        render :new
      end
    end

    def update
      @home_page_section = @gallery_image.home_page_section
      if @gallery_image.update(gallery_image_params)
        redirect_to gallery_images_url(home_page_section_id: @home_page_section.id), notice: 'Gallery image was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @home_page_section = @gallery_image.home_page_section
      @gallery_image.destroy
      redirect_to gallery_images_url(home_page_section_id: @home_page_section.id), notice: 'Gallery image was successfully destroyed.'
    end

  private

    def set_home_page_section
      @home_page_section = HomePageSection.find(params[:home_page_section_id])
    end

    def set_gallery_image
      @gallery_image = GalleryImage.find(params[:id])
    end

    def gallery_image_params
      params.require(:gallery_image).permit(:home_page_section_id, :title, :image, :image_cache, :remove_image, :remote_image_url, :display)
    end
  end
end
