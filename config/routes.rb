Rails.application.routes.draw do
  resources :signup, only: [:index]
  root to: 'items#index'
  resources :items, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :purchase, only:[:index]
    resources :buy, only:[:index]
      post 'buy'
  end
  
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :card, only: [:new, :show, :destroy] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

  resources :mypages, only: [:index] do
    collection do
      get :logout
    end
  end
  resources :send_informations, only: [:new, :create, :update]
end
