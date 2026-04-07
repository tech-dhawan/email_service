class ApplicationMailer < ActionMailer::Base
  # The default 'from' address for every email sent by your app
  default from: "from@example.com"

  # This tells Rails which layout file to wrap your emails in
  layout "mailer"
end
