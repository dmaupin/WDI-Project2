Rails.application.routes.draw do

  # get "beers/" => "beers#index"
  # get "beers/new" => "beers#new", as: :new_beer
  # post "beers/" => "beers#create"

  root to: 'beers#index'

  # get '/edit' => 'beers#edit', as: :edit
  # post '/beers' => 'beers#create'

  get '/signup' => 'users#new', as: :signup
  post '/users' => 'users#create'

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout

  resources :users
  resources :beers


end
