Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :users, only: [:show, :new]
  resources :products, only: [:index, :show]
end
