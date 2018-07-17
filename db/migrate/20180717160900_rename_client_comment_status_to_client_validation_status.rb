class RenameClientCommentStatusToClientValidationStatus < ActiveRecord::Migration[5.1]
  def change
    rename_column :business_cases, :client_comment_status, :client_validation_status
  end
end
