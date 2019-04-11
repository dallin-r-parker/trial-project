Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/get-boards", to: "responses#get_boards"
  get "/get-random", to: "responses#get_random"

  post "/user_token" => "user_token#create"

  get "/users/current", to: "users#current"
  resources :users

  resources :categories do
    collection do
      get "mine"
    end
  end
  resources :questions do
    collection do
      get "mine"
    end
  end

  # get "sessions/new"

  # # get "/users/verify", to: "users#verify"
  # # post "/users/login", to: "users#login"

  # get "/logout", to: "sessions#destroy"
  # get "/login", to: "sessions#new"

  # post "/login" => "sessions#create"
end
