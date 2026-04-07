class WebFormsController < ApplicationController
  # GET /web_forms/new
  # This action initializes a blank model for the form view
  def new
    @web_form = WebForm.new
  end

  # POST /web_forms
  # This action handles the form submission
  def create
    @web_form = WebForm.new(web_form_params)

    if @web_form.save && EmailProcessorService.new(@web_form).call
      # This 'notice' is the message that will pop up
      redirect_to new_web_form_path, notice: "Message sent successfully! We'll be in touch soon."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Strong Parameters: only allow the specific fields we expect
  # This prevents malicious users from injecting extra data
  def web_form_params
    params.require(:web_form).permit(:name, :last_name, :email, :message, :company, :budget, :contact_date, :payment_method)
  end
end
