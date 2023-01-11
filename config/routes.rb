Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :events, only: [:index, :new, :create, :destroy]
  resources :users, only: :show
  resources :tags, only: [:index, :new, :create, :edit, :destroy]
end
