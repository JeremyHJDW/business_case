class RenameClientCommentsValidatedToClientCommentStatus < ActiveRecord::Migration[5.1]
  def change
    rename_column :business_cases, :client_comments_validated, :client_comment_status 
  end
end
