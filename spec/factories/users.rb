# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: User do
  end
  factory :valid_user, class: User do
    sequence(:email) { |n| "person#{n}@email.com" }
    sequence(:password) { |n| "password #{n}" }
  end

end
