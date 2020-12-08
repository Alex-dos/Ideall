Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :rooms, only: [:show, :new, :create] do
    resources :room_users, only: [:new, :create]
    resources :choice_categories, only: [:edit, :update]
    get 'ecran1', to: 'card_screens#ecran1'
    get 'ecran2', to: 'card_screens#ecran2'
    get 'ecran3', to: 'card_screens#ecran3'
    get 'ecran4', to: 'card_screens#ecran4'
  end
  get '/join_room', to: 'room_users#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


