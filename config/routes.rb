Rails.application.routes.draw do
  resources :eletronics
  resources :users
  resources :brands
  resources :service_orders
  root "home#index"
end
