class CreateBusinessCases < ActiveRecord::Migration[5.1]
  def change
    create_table :business_cases do |t|
      t.string :client_location
      t.string :client_industry
      t.string :client_size
      t.string :user_expertise
      t.text :client_problem
      t.text :user_methodology
      t.text :client_results
      t.text :client_comments
      t.text :user_link
      t.boolean :client_comments_validated
      t.string :title
      t.string :client_position

      t.timestamps
    end
  end
end
