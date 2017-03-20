Rails.application.routes.draw do

  get "/", to: "cities#index", as: "root"

  ## SESSIONS ##
  get "/login", to: "sessions#new"

  get "/logout", to: "sessions#destroy"

  post "/sessions", to: "sessions#create"

  ## USERS ##

  resources :users

  ## TIPS & COMMENTS ##
  resources :tips do
    resources :comments, shallow: true
  end

  ## CITIES ##

  resources :cities,  only: [:index, :show ] do
    resources :tips, only: [:new, :create]
  end

  ## 404 ##

  match "*path", to: "application#page_not_found", via: :all

end
