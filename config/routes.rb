Rails.application.routes.draw do

  # resources :beverages, :ingredients
  # resources :users, only: [:create, :show, :index]

  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'
  # get '/logged_in', to: 'sessions#is_logged_in?'

  resources :users, :beverages, :ingredients

      post "/signup", to: "users#create"
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"

end
