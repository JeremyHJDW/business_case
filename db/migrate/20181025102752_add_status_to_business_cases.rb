class AddStatusToBusinessCases < ActiveRecord::Migration[5.1]
  def change
    add_column :business_cases, :status, :integer, default: 0
  end
end
