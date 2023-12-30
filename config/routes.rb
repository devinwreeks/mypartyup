Rails.application.routes.draw do
  resources :feedbacks
  resources :contributions
  resources :event_partnerships
  resources :partnerships
  resources :votes
  resources :events
  resources :payments
  resources :companies
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "signup" => "users#signup"
  post "create_profile" => "users#create_profile"

  # Defines the root path route ("/")
  root "application#index"
end
