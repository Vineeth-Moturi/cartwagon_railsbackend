Rails.application.routes.draw do
  resources :products
  resources :users
  get '/api/users', controller:'users', action: 'index'
  get '/api/products', controller: 'products', action:'index'
  get '/api/status', controller: 'application', action: 'status'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
