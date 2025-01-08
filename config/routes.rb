Rails.application.routes.draw do
  resources :users
  resources :brands
  resources :service_orders
  root "home#index"
end
