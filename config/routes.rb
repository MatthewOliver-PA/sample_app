Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root'static_pages#home'
  match '/home', to: 'static_pages#home',   via: 'get'
  match '/help', to: 'static_pages#help',   via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/signup', to: 'users#new',         via: 'get'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end