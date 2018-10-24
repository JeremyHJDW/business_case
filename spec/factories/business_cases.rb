# frozen_string_literal: true

FactoryBot.define do
  factory :empty_business_case, class: BusinessCase do
  end
  factory :valid_business_case, class: BusinessCase do
    title { 'Comment tester' }
    client_location { BusinessCase.client_locations_list.sample }
    client_industry { BusinessCase.client_industries_list.sample }
    client_size { BusinessCase.client_sizes_list.sample }
    user_expertise { BusinessCase.user_expertises_list.sample }
    client_position { BusinessCase.client_positions_list.sample }
    user_methodology { "L'instinct" }
    client_problem { 'Pas assez de rentabilité' }
    client_results { 'Il a fait x2 à la fin !!!' }

    # Relationships
    association :user, factory: :valid_user
  end
  factory :multiple_business_cases, class: BusinessCase do
    sequence(:title) { |n| "Comment tester #{n}" }
    client_location { BusinessCase.client_locations_list.sample }
    client_industry { BusinessCase.client_industries_list.sample }
    client_size { BusinessCase.client_sizes_list.sample }
    user_expertise { BusinessCase.user_expertises_list.sample }
    client_position { BusinessCase.client_positions_list.sample }
    sequence(:user_methodology) { |n| "L'instint #{n}" }
    sequence(:client_problem) { |n| "Pas assez de rentabilité #{n}" }
    sequence(:client_results) { |n| "Il a fait x2 à la fin !!! #{n}" }

    # Relationships
    association :user, factory: :valid_user
  end
end
