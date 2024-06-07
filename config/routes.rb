Rails.application.routes.draw do
  devise_for :users
  get '/entradas', to: 'income#index'
  get '/entradas/new', to: 'income#new'
  root to: 'home#index'
end
