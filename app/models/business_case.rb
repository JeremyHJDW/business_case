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




end
