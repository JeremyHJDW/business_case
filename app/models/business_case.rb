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
  enum client_validation_status: { not_approved: 0, pending: 1, validated: 2, rejected: 3, no_response: 4 }
  enum status: { draft: 0, published: 1 }

  belongs_to :user
end
