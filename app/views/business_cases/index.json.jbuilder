# frozen_string_literal: true

json.array! @business_cases, partial: 'business_cases/business_case', as: :business_case
