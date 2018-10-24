# frozen_string_literal: true

class AddAttributesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :company_name, :string
    add_column :users, :staff_number, :string
    add_column :users, :unique_identification_number, :string
    add_column :users, :phone_number, :string
    add_column :users, :user_expertise, :string
    add_column :users, :address, :string
    add_column :users, :zip_code, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :referent_mail, :string
  end
end
