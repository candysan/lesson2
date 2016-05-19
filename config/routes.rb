Rails.application.routes.draw do
 devise_for :users
  resources :notes
  resources :users, only: [:show, :new]

  resources :products, only: [:index, :show, :new, :create, :category] do
  resources :reviews, only: [:index, :new, :create]
end

end