class WebForm < ApplicationRecord
  # Define the options for your dropdowns
  BUDGET_OPTIONS = [ "Less than $5,000", "$5,000 - $10,000", "$10,000 - $25,000", "$25,000+" ]
  PAYMENT_METHODS = [ "Credit Card", "Bank Transfer", "PayPal", "Other" ]

  validates :name, :last_name, :email, :message, :company, :budget, :contact_date, :payment_method, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
