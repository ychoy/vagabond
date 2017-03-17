Rails.application.routes.draw do

  ## will probably need to change this route going forward

  get "/", to: "cities#index", as: "root"

  get "/users/new", to: "users#new", as: "new_user"

  get "/users/:id", to: "users#show", as: "user"

  post "/users", to: "users#create"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  patch "/users/:id", to: "users#update", as: "update_user"

  delete "/users/:id", to: "users#destroy"

  ## SESSIONS ##
  get "/login", to: "sessions#new"

  get "/logout", to: "sessions#destroy"

  post "/sessions", to: "sessions#create"


  ## TIPS ##

  get "/tips", to: "tips#index", as: "tips"

  get "/tips/new", to: "tips#new", as: "new_tip"

  get "/tips/:id", to: "tips#show", as: "tip"

  post "/tips", to: "tips#create"

  get "/tips/:id/edit", to: "tips#edit", as: "edit_tip"

  patch "/tips/:id", to: "tips#update", as: "update_tip"

  delete "/tips/:id", to: "tips#destroy"

  ## COMMENTS ##

  #comments as a nested resource within tips
  resources :tips do
    resources :comments
  end

  ## CITIES ##

  get "/cities", to: "cities#index", as: "cities"

  get "/cities/new", to: "cities#new", as: "new_city"

  get  "/cities/:id", to: "cities#show", as: "city"

  post "/cities", to: "cities#create"

  get "/cities/:id/edit", to: "cities#edit", as:"edit_city"

  patch "/cities/:id", to: "cities#update", as: "update_city"

  ## 404 ##

  match "*path", to: "application#page_not_found", via: :all

end
