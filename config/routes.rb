Rails.application.routes.draw do
  resources :albums, only: [:create, :index]
  resources :users

  get '/search', to: "spotify_search#search"
end
