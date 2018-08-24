# frozen_string_sanatizer: true
class Contact < Object
	include MailerInterfaceable
	include ActiveModel::Conversion
	include ActiveModel::Validations

	attr_accessor :name, :phone, :email, :message

	def initialize(params = {})
		@name = params[:name]
		@phone = params[:phone]
		@email = params[:email]
		@message = params[:message]
	end

	def persisted?
		false
	end

	def sendEmail
		mail NewsletterMailer, :sended,   self, :deliver_now
		mail NewsletterMailer, :received, self, :deliver_now
	end

	validates :name,
					 	presence: true,
					 	uniqueness: false,
					 	allow_blank: false,
					 	length: { minimum: 3, maximum: 30 }

	validates :phone,
					 	presence: true,
					 	uniqueness: false,
					 	allow_blank: false,
					 	length: { minimum: 3, maximum: 15 }

	validates :email,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :message,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 5_000 }
end