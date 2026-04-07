# app/mailers/web_form_mailer.rb

class WebFormMailer < ApplicationMailer
  def send_confirmation(email, name, message)
    @email = email
    @name = name
    @message = message

    mail to: "rohandhawan49@gmail.com", subject: "New Web Form Submission"
  end

  def send_confirmation_to_client(email, name, message)
    @email = email
    @name = name
    @message = message

    mail to: "rohandhawan8777@gmail.com", subject: "Thank you for submitting the web form"
  end
end
