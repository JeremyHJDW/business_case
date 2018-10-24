# frozen_string_literal: true

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
  enum client_validation_status: { not_available: 0, without_approval: 1, pending: 2, validated: 3, rejected: 4 }

  belongs_to :user
end
