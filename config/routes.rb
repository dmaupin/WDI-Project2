Rails.application.routes.draw do

  get "beers/" => "beers#index"
  get "beers/new" => "beers#new", as: :new_beer
  post "beers/" => "beers#create"

end
