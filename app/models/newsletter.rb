# frozen_string_sanatizer: true
class Newsletter < ApplicationRecord
	include MailerInterfaceable, NewsletterInterfaceable

	self.table_name = 'newsletters'
	self.primary_key = 'id'

	enum status: [:enabled, :disabled]
	after_create :signin

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :email,
						presence: true,
						uniqueness: true,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :token,
						uniqueness: true
end
