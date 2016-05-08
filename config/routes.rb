Rails.application.routes.draw do
 devise_for :users
  resources :notes
  resources :users, only: [:show, :new]
  resources :products, only: [:index, :show, :new, :create]
  resources :reviews, only: [:index, :new]
end
