class FormSubmissionMailer < ApplicationMailer
  layout 'mailer'

  default from: 'adarwish@sajetarian.com'

  def thank_you_message(user)
    mail(to: user.email, subject: 'Thank you for contacting Sajetarian')
  end
end
