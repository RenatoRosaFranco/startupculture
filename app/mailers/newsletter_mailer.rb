#  frozen_string_sanatizer: true
class NewsletterMailer < ApplicationMailer

  default from: 'no-reply@startupculture.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.signin.subject
  #
  def signin(contact)
    @contact = contact
    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.cancel.subject
  #
  def cancel(contact)
    @contact = contact
    mail to: "to@example.org"
  end
end
