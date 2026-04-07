class AddFieldsToWebForms < ActiveRecord::Migration[8.1]
  def change
    add_column :web_forms, :company, :string
    add_column :web_forms, :budget, :string
    add_column :web_forms, :contact_date, :date
    add_column :web_forms, :payment_method, :string
  end
end
