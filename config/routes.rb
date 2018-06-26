Rails.application.routes.draw do
  get 'business_cases/edit', to: 'business_cases#editt'
  resources :business_cases
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
