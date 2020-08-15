Rails.application.routes.draw do
  resources :signup, only: [:index]
  root to: 'items#index'
  resources :items, only: [:new, :create, :show]
  devise_for :users
  resources :card, only: [:new, :show]
  resources :mypages, only: [:index]
end
