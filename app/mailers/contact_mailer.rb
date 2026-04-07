class ContactMailer < ApplicationMailer
  # This is the global 'From' address for this mailer
  default from: "rohandhawan49@gmail.com"

  # 1. Email sent to the Website Owner
  def submission_notification(web_form)
    @web_form = web_form

    # Replace 'your-email@example.com' with your actual inbox address
    mail(
      to: ENV["OWNER_EMAIL"],
      subject: "New Inquiry Received from #{@web_form.name}"
    )
  end

  # 2. Confirmation email sent to the Client
  def client_confirmation(web_form)
    @web_form = web_form

    # This pulls the email address directly from the form the client filled out
    mail(
      to: @web_form.email,
      subject: "We've received your request!"
    )
  end
end
