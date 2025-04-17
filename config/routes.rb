Rails.application.routes.draw do
  resources :orders
  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  get 'profiles/show/:id', to: 'profiles#show', as: 'profiles_show'


  get "home/price_calculator", to: "home#price_calculator"
  post "home/price_calculator", to: "home#calculate_price"
  get "home/index"
  get "home/references"
  get "home/questions"
  get "home/authorization"
  get "home/compensation"
  get "home/drilling"
  get "home/about"
  get "home/price"
  get "home/profile"

  root "home#index"
end
