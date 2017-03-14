Rails.application.routes.draw do

  ## will probably need to change this route going forward
  get "/", to: "users#index", as: "root"

  get "/users/new", to: "users#new", as: "new_user"

  get "/users/:id", to: "users#show", as: "user"

  post "/users", to: "users#create"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  patch "/users/:id", to: "users#update", as: "update_user"

  ## SESSIONS ##
  get "/login", to: "sessions#new"

  get "/logout", to: "sessions#destroy"

  post "/sessions", to: "sessions#create"

  ## POSTS ##

  get "/tips/new", to: "tips#new", as: "new_tip"

  get "/tips/:tip_id", to: "tips#show", as: "tip"

  post "/tips", to: "tips#create"

end
