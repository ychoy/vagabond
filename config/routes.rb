Rails.application.routes.draw do

  ## will probably need to change this route going forward

  get "/", to: "cities#index", as: "root"

  resources :users

  ## SESSIONS ##
  get "/login", to: "sessions#new"

  get "/logout", to: "sessions#destroy"

  post "/sessions", to: "sessions#create"


  ## TIPS ##
  resources :tips

  ## COMMENTS ##

  #comments as a nested resource within tips
  resources :tips do
    resources :comments, shallow: true
  end

  #same as --> resources :comments, except: [:index, :create, :new, :update, :destroy]

  ## CITIES ##

  resources :cities, only: [:index, :new, :create, :show, :edit, :update ]

  ## 404 ##

  match "*path", to: "application#page_not_found", via: :all

end
