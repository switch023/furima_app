Rails.application.routes.draw do
  devise_for :users
  get 'card/new'
  get 'card/show'
  root 'items#index'
  resources :mypages, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
