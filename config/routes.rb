Rails.application.routes.draw do
  resources :trees, only: [:index, :show, :create] 
  resources :birds, only: [:index, :show, :create]    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end