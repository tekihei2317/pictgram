Rails.application.routes.draw do
  get 'topics/new'
  # PagesController
  root to: 'pages#index'
  get 'pages/index'
  get 'pages/help'
  
  # UsersController
  resources :users

  # SessionsController
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
