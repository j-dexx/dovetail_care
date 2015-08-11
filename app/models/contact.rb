class Contact
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :forename, :surname, :telephone, :email, :message, :callback_request, :form

  validates :forename, :surname, :email, :message, :form, presence: true
end
