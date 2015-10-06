Rails.application.routes.draw do


  root to: 'welcome#splash'
  get '/splash', to: 'welcome#splash'
  get '/home', to: 'welcome#index'
  post '/', to: 'welcome#search'
  post '/songs', to: 'welcome#get_songs'
  post '/update', to: 'welcome#update'

  get "/playlists", to: "playlists#index", as: "playlists"

  get "/playlists/new", to: "playlists#new", as: "new_playlist"

  post "/playlists", to: "playlists#create"

  # get "/playlists/arr", to: "playlists#toArray", as: "playlist_arr"
  get "/playlists/arr", to: "playlists#displayarr", as: "playlist_arr"

  get "/playlists/:id", to: "playlists#show", as: "playlist"

  get "/sessions/new", to: "sessions#new", as: "sign_in"
  get "/sessions/logout", to: "sessions#destroy", as: "logout"
  post "/sessions", to: "sessions#create"

  resources :users

end