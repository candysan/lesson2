Rails.application.routes.draw do
  devise_for :admin_users
 devise_for :users
  resources :notes
  resources :users, only: [:show, :new]

  root 'home#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :products, only: [:index, :show, :new, :create, :category] do
  resources :reviews, only: [:index, :new, :create]
end

end