Rails.application.routes.draw do

  get "/", to: "users#index", as: "root"

  get "/users/new", to: "users#new", as: "new_user"

  get "/users/:id", to: "users#show", as: "user"

  post "/users", to: "users#create"


  ## SESSIONS ##
  get "/login", to: "sessions#new"

  get "/logout", to: "sessions#destroy"

  post "/sessions", to: "sessions#create"

end
