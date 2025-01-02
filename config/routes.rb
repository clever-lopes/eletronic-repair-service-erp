Rails.application.routes.draw do
  resources :users
  resources :brands
  resources :service_orders
  resources :boards
  root "home#index"
end
