Rails.application.routes.draw do
  resources :signup, only: [:index]
  root to: 'items#index'
  resources :items, only: [:new, :create, :show]
  devise_for :users
  resources :card, only: [:new, :show]
  resources :card, only: [:new, :show, :create, :destroy]
  resources :mypages, only: [:index] do
    collection do
      get :logout
    end
  end
  resources :purchase, only: [:new]
end
