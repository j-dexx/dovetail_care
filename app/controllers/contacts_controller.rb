class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.new(global_site_settings, @contact).deliver_now
      redirect_to new_contact_path, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:forename, :surname, :telephone, :email, :message, :callback_request, :form)
    end
end
