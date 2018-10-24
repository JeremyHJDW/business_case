# frozen_string_literal: true

json.extract! business_case, :id, :client_location, :client_industry, :client_size, :user_expertise, :client_problem, :user_methodology, :client_results, :client_comments, :user_link, :client_comments_validated, :title, :client_position, :created_at, :updated_at
json.url business_case_url(business_case, format: :json)
