Rails.application.routes.draw do
  resources :drillings
  resources :references
  resources :links
  resources :orders
  devise_for :users, controllers: { registrations: 'users/registrations' }

  get 'profiles/show/:id', to: 'profiles#show', as: 'profiles_show'

  get "home/price_calculator", to: "home#price_calculator"
  post "home/price_calculator", to: "home#calculate_price"
  get "home/index"
  get "home/references"
  get "home/questions"
  get "home/authorization"
  get "home/CV"
  get "home/VH_auth"
  get "home/indastrial_wells"
  get "home/compensating_wells"
  get "home/watering_well"
  get "home/compensation"
  get "home/drilling"
  get "home/about"
  get "home/price"

  root "home#index"
end
