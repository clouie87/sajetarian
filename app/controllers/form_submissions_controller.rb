class FormSubmissionsController < ActionController::Base

  def create
    form_submission = FormSubmission.new(contact_params)
    form_submission.save
    FormSubmissionMailer.thank_you_message(form_submission).deliver_later
  end

  private

  def contact_params
    params.require(:contact_user).permit(:name, :email, :comment)
  end
end
