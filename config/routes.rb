Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :rooms, only: [:show, :new, :create] do
    resources :room_users, only: [:new, :create]
  end
  get '/join_room', to: 'room_users#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


