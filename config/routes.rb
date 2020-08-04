Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beverages, :ingredients, :users

  post "/signup", to: "users#create"
  post "/login", to: "login#login"
  get '/auto_login', to: "login#auto_login"

end
