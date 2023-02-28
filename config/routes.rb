Rails.application.routes.draw do
  get 'messages/chatrooms'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 resources :airports do
  resources :facilities, only: [:index, :show]
  resources :tips, only: [:index]
 end

 resources :meetups
  # Defines the root path route ("/")
  # root "articles#index"
end
