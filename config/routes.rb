Rails.application.routes.draw do
  resources :paying_guests
  resources :guests
  resources :floors
  resources :customers
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
