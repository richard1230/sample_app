Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  #get '/home',   to:'static_pages#home'
  get '/contact',to:'static_pages#contact'
  get '/help',   to:'static_pages#help'
  get '/about',  to:'static_pages#about'
  get '/signup',  to:'users#new'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
