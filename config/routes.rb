Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :users, only: :show
  resources :events, only: [:index, :new, :create, :destroy] do
    resources :tags, only: [:index, :create]
  end

  resources :tags #編集必要

  
end



