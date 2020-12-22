Rails.application.routes.draw do
  resources :albums, only: [:create, :index]

  delete "/albums", to: "albums#destroy"

  resources :users

  get '/search', to: "spotify_search#search"
end
