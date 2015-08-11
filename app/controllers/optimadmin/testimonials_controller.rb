module Optimadmin
  class TestimonialsController < Optimadmin::ApplicationController
    before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

    def index
      @testimonials = Optimadmin::BaseCollectionPresenter.new(collection: Testimonial.where('summary LIKE ?', "#{params[:search]}%").page(params[:page]).per(params[:per_page] || 15).positioned, view_template: view_context, presenter: Optimadmin::TestimonialPresenter)
    end

    def show
    end

    def new
      @testimonial = Testimonial.new
    end

    def edit
    end

    def create
      @testimonial = Testimonial.new(testimonial_params)
      if @testimonial.save
        redirect_to testimonials_url, notice: 'Testimonial was successfully created.'
      else
        render :new
      end
    end

    def update
      if @testimonial.update(testimonial_params)
        redirect_to testimonials_url, notice: 'Testimonial was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @testimonial.destroy
      redirect_to testimonials_url, notice: 'Testimonial was successfully destroyed.'
    end

  private


    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    def testimonial_params
      params.require(:testimonial).permit(:position, :summary, :display)
    end
  end
end
