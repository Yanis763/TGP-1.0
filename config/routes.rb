Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root to: 'pages#accueil'
  
  get '/team', to: 'pages#team'

  get '/new_gossip', to: 'pages#new_gossip'

  post '/new_gossip', to: 'pages#create_gossip'
  
  get '/contact', to: 'pages#contact'
  
  get '/welcome(/:name)', to: 'pages#welcome'
  
  resources :potin
  
  get '/user/:id', to: 'users#user'

  
  resources :sessions, only: [:new, :create, :destroy]

end
