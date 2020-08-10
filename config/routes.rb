Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:new, :create]
  devise_for :users
  resources :card, only: [:new, :show]
  resources :mypages, only: [:index]
end
