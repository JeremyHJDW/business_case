# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: User do
  end
  factory :valid_user, class: User do
    sequence(:first_name) { |n| "First name #{n}" }
    sequence(:email) { |n| "person#{n}@email.com" }
    sequence(:password) { |n| "password #{n}" }
  end

end
