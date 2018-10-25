# frozen_string_literal: true

module ApplicationHelper
  def validation_status(business_case)
    case business_case.client_validation_status
    when 'not_approved'
      content_tag :span, "Not approved", class: "badge badge-secondary"
    when 'pending'
      content_tag :span, "Pending", class: "badge badge-primary"
    when 'validated'
      content_tag :span, "Validated", class: "badge badge-success"
    when 'rejected'
      content_tag :span, "Rejected", class: "badge badge-danger"
    when 'no_response'
      content_tag :span, "No response", class: "badge badge-warning"
    end
  end

  def business_case_status(business_case)
    case business_case.status
    when 'draft'
      content_tag :span, "Brouillon", class: "badge badge-secondary"
    when 'published'
      content_tag :span, "Publié", class: "badge badge-success"
    end
  end
end
