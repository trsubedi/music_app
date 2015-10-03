Rails.application.routes.draw do

  root to: "welcome#index"

  resources :users
  resources :playlists

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy", as: "logout"
end
