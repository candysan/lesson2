Rails.application.routes.draw do
  devise_for :users
  resources :notes
  get 'products' => 'products#index'
end
