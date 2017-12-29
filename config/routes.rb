Rails.application.routes.draw do
  get 'home/index', to: 'home#index'

  resources :topics do
    resources :posts
  end
  resources :posts, only: %w[create update destroy]
  resources :users, except: %w[index destroy]
  resources :user_sessions, only: %w[new create destroy]

  root 'home#index'
end
