Photoshare::Application.routes.draw do
  resources :albums

  get "welcome/index"
  
  root :to => 'Albums#index'
end
