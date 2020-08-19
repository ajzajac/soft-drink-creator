Rails.application.routes.draw do

  resources :users
  resources :beverages, :ingredients
  resources :reviews, only: [:create, :show, :index]
  resources :favorites, only: [:create, :index, :delete, :update]

      post "/signup", to: "users#create"
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"

end
