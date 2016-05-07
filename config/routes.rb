Rails.application.routes.draw do
  resources :notes
  get 'products' => 'products#index'
end
