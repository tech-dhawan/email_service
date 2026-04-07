class EmailProcessorService
  def initialize(web_form)
    @web_form = web_form
  end

  def call
  if @web_form.save
    # The :: ensures we find the top-level ContactMailer
    ::ContactMailer.submission_notification(@web_form).deliver_now
    ::ContactMailer.client_confirmation(@web_form).deliver_now
    return true
  end
  false
  end
end

# app/services/email_processor_service.rb
