Rails.application.routes.draw do
  get 'tips_filter/index'
  get 'messages/chatrooms'
  devise_for :users, controller: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :airports do
  resources :facilities, only: [:index, :show]
  resources :tips, only: [:index, :create]
  resources :meetups
  resources :chatrooms
end

post '/tips/:tip_id/likes', to: 'likes#create', as: 'tip_likes'
post '/journeys/add_flight', to: 'journeys#add_flight', as: 'add_flight_to_journey'

post '/airports/:airport_id/chatrooms/:id', to: 'messages#create', as: 'airport_chatroom_message'
  #resources :chatrooms do
  #  resources :messages, only: :create
  #end

  # Defines the root path route ("/")
  # root "articles#index"

  post 'tips_filter', action: :index, controller: 'tips_filter'

end
