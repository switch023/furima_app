Rails.application.routes.draw do
  resources :signup, only: [:index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items, only: [:new, :create]
  devise_for :users
  resources :card, only: [:new, :show]
  resources :mypages, only: [:index]
  resources :purchase, only: [:new]
end
