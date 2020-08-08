Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, only: [:new, :create]
  devise_for :users
  get 'card/new'
  get 'card/show'
  root 'items#index'
  resources :mypages, only: [:index]
end
