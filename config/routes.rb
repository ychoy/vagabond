Rails.application.routes.draw do

  ## will probably need to change this route going forward

  get "/", to: "cities#index", as: "root"

  resources :users

  ## SESSIONS ##
  get "/login", to: "sessions#new"

  get "/logout", to: "sessions#destroy"

  post "/sessions", to: "sessions#create"

  ## TIPS & COMMENTS ##
  resources :tips do
    resources :comments, shallow: true
  end

  ## CITIES ##

  resources :cities, only: [:index, :show ]

  ## 404 ##

  match "*path", to: "application#page_not_found", via: :all

end
