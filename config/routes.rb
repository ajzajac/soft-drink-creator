Rails.application.routes.draw do

  resources :users
  resources :beverages, :ingredients
  resources :reviews, only: [:create, :show, :index]
  resources :favorites
  resources :orders
  resources :order_items


    post '/orders/neworder', to: 'orders#neworder'
    post "/signup", to: "users#create"
    post "/login", to: "auth#login"
    get "/auto_login", to: "auth#auto_login"

end
