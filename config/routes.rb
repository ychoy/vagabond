Rails.application.routes.draw do

  ## will probably need to change this route going forward

  get "/", to: "cities#index", as: "root"
 

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

  get "/tips", to: "tips#index", as: "tips"

  get "/tips/new", to: "tips#new", as: "new_tip"

  get "/tips/:tip_id", to: "tips#show", as: "tip"

  post "/tips", to: "tips#create"


  ## CITIES ##

  get "/cities", to: "cities#index", as: "cities"

  get "/cities/new", to: "cities#new", as: "new_city"

  get  "/cities/:id", to: "cities#show", as: "city"

  post "/cities", to: "cities#create"

  get "/cities/:id/edit", to: "cities#edit", as:"edit_city"

  patch "/cities/:id", to: "cities#update", as: "update_city"

end
