Rails.application.routes.draw do
  get 'home/index'
  get 'private_area', to: 'home#private_area'

  resources :users
  resources :user_sessions, only: %w[new create destroy]
  root 'home#index'
end
