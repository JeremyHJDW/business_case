# frozen_string_literal: true

module BusinessCaseTitle
  extend ActiveSupport::Concern

  included do
    validates :title, presence: true

    validate do |business_case|
      business_case.title_must_begin_with('Comment ') if title && !title.blank?
    end
  end

  def title_must_begin_with(string)
    errors.add(:title, "Le titre doit commencer par \"#{string}\" [suivi par la description du problème résolu dans ce business case]") unless title.start_with?(string)
  end
end
