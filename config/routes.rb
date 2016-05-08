Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :users, only: [:show]
  resources :products, only: [:index, :show]
end
