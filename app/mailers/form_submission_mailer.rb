class FormSubmissionMailer < ApplicationMailer
  def thank_you_message(user)
    @user = user
    mail(to: user.email, subject: 'Thank you for contacting Sajetarian')
  end
end
