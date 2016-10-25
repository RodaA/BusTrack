Rails.application.routes.draw do
  
  resources :stops
  resources :stop_orders
  resources :bus_routes
  resources :routes
  resources :bus_drivers
  resources :drivers
  resources :locations
  resources :buses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
