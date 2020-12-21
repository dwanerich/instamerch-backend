Rails.application.routes.draw do
  resources :albums, only: [:create]
  resources :users

  get '/search', to: "spotify_search#search"
end
