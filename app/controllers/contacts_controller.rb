class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.new(global_site_settings, @contact).deliver_now
      respond_to do |format|
        format.js { flash.now[:notice] = 'Thank you for your submission. We will be in touch.' }
      end
    else
      respond_to do |format|
        format.js { render :new }
      end
    end
  end

  def contact_form_popout
    respond_to do |format|
      format.js
    end
  end

  def recruitment_form_popout
    respond_to do |format|
      format.js
    end
  end

  def request_appointment_form_popout
    respond_to do |format|
      format.js
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:forename, :surname, :telephone, :email, :message, :callback_request, :form)
  end
end
