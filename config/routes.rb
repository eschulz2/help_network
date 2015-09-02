Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :visitors, only: [:new, :create, :index]
  root to: 'visitors#new'
end
