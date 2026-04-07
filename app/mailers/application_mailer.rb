class ApplicationMailer < ActionMailer::Base
  # Default 'from' address for all emails
  default from: "from@example.com"

  # This points to the wrapper/layout for your emails
  layout "mailer"
end
