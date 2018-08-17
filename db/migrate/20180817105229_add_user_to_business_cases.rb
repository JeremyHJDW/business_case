class AddUserToBusinessCases < ActiveRecord::Migration[5.1]
  def change
    add_reference :business_cases, :user, foreign_key: true
  end
end
