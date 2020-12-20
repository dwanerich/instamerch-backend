Rails.application.routes.draw do
  resources :covers
  resources :users

  get '/search', to: "spotify_search#search"
end
