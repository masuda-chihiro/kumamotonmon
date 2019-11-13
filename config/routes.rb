Rails.application.routes.draw do
  get 'products/new'

  get 'products/create'
  get '/index',  to: 'products#index'
  get 'products/edit'
  get '/show',  to: 'products#show'
  get 'products/update'
  get 'sessions/new'
  get 'users/new'
  
  root 'static_pages#home'
  get 'static_pages/home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
