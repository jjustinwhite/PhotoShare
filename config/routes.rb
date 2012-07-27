Photoshare::Application.routes.draw do
  get "welcome/index"

  get "session/sign_in"

  get "session/sign_out"
  
  post "session/sign_in"
  
  post "session/sign_out"

  resources :users

  resources :photos

  resources :albums
  
  root :to => 'Users#new'
  
  get '/albums/:id/' => 'Albums#show', :as => 'album'
  
  get "users/sign_in"
  
  post "users/sign_in"

  
end
