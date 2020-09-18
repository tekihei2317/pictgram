Rails.application.routes.draw do
  get 'comments/new'
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

  # TopicsController
  resources :topics

  # FavoritesController
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'

  # CommentsController
  resources :comments
end
