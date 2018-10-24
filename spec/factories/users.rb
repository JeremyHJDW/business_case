FactoryBot.define do
  factory :user, class: User do
  end
  factory :valid_user, class: User do
    email { 'test@email.com' }
    password { '123456' }
  end
end
