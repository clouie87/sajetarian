# Preview all emails at http://localhost:3000/rails/mailers/form_submission_mailer
class FormSubmissionMailerPreview < ActionMailer::Preview
  def thank_you_message
    FormSubmissionMailer.thank_you_message(FormSubmission.first)
  end
end
