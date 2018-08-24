# frozen_string_sanatizer: true
module MailerInterfaceable
	include ActiveSupport::Concern

	def mail(mailer, method, obj, deliver = :deliver_now)
		mailer.send(method, obj).send(deliver)
	end
end