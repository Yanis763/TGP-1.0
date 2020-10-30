Rails.application.routes.draw do
  
  root to: 'pages#accueil'
  
  get '/team', to: 'pages#team'

  get '/new_gossip', to: 'pages#new_gossip'

  post '/new_gossip', to: 'pages#create_gossip'
  
  get '/contact', to: 'pages#contact'
  
  get '/welcome(/:name)', to: 'pages#welcome'
  
  resources :potin
  
  get '/user/:id', to: 'users#user'

  get '/user', to: 'users#new' 

  post '/user', to: 'users#create'

  resources :sessions, only: [:new, :create, :destroy]

  get '/sessions/profile', to: 'sessions#profile'

end
