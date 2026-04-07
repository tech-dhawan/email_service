class AddLastNameToWebForms < ActiveRecord::Migration[8.1]
  def change
    add_column :web_forms, :last_name, :string
  end
end
