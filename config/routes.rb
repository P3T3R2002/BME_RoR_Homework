Rails.application.routes.draw do
  resources :users
  get "home/index"
  get "home/about"
  get "home/price"
  get "home/profile"
  root "home#index"
end
