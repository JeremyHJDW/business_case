# frozen_string_literal: true

class ChangeClientCommentValidatedToBeIntegerInBusinessCases < ActiveRecord::Migration[5.1]
  def change
    change_column :business_cases, :client_comments_validated, :integer
  end
end
