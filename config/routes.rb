Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beverages, :ingredients
  resources :users, only: [:create, :show, :index]

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  # post "/signup", to: "users#create"
  # post "/login", to: "login#login"
  # get '/auto_login', to: "login#auto_login"

end
