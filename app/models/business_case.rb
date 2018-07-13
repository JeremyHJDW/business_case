class BusinessCase < ApplicationRecord

  include BusinessCaseClientLocation
  include BusinessCaseClientSize
  include BusinessCaseClientIndustry
  include BusinessCaseUserExpertise
  include BusinessCaseClientPosition
  include BusinessCaseTitle


  validates :client_problem, presence: true
  validates :user_methodology, presence: true
  validates :client_results, presence: true
  enum client_comment_status: { not_available: 0, pending: 1, validated: 2, rejected: 3 }, _prefix: :comment

  after_create do |business_case|
    if client_comments.blank?
      self.comment_not_available!
    else
      self.comment_pending!
    end
  end
  # 
  # after_update do |business_case|
  #   if client_comments.blank?
  #     self.comment_not_available!
  #   else
  #     self.comment_pending!
  #   end
  # end


end
