Rails.application.routes.draw do
  root 'shoppers#index'
  resources :merchants
  resources :shoppers
  resources :carts
  resources :trolleys
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
