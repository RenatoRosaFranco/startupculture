# frozen_string_sanatizer: true
module NewsletterInterfaceable
	include ActiveSupport::Concern

	def signin
		set_token
		set_status(:enabled)
		set_signin_date
		save
	end

	def cancel
		remove_token
		set_status(:disabled)
		save
	end

	private
		def set_token
			self.token = SecureRandom.urlsafe_base64
		end

		def remove_token
			self.token = nil
		end

		def set_status(status = :enable)
			self.status = status
		end

		def set_signin_date(date = Date.today)
			self.signin_date = date
		end
end