Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end