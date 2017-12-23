Rails.application.routes.draw do
  get 'home/index'
  resources :users
  resources :user_sessions, only: %w[new create destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
