Rails.application.routes.draw do
  resources :signup, only: [:index]
  root to: 'items#index'
  resources :items, only: [:new, :create, :show]
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
    end
  end
  resources :mypages, only: [:index] do
    collection do
      get :logout
    end

  end
  resources :purchase, only: [:new]
  resources :send_informations, only: [:new, :create, :update]
end
