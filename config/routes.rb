Rails.application.routes.draw do
  # PagesController
  root to: 'pages#index'
  get 'pages/index'
  get 'pages/help'
  
  # UsersController
  resources :users

  # SessionsController
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'

end
