Rails.application.routes.draw do
  devise_for :users
  get '/entradas', to: 'income#index'
  get '/entradas/new', to: 'income#new'
  post "/entradas", to: 'income#create'
  root to: 'home#index'
end
