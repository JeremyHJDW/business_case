class AddDefaultToClientValidationStatusAttribute < ActiveRecord::Migration[5.1]
  def up
    change_column :business_cases, :client_validation_status, :integer, default: 0
  end
end
