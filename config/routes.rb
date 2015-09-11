Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :courses
  resources :visitors, only: [:new, :create, :index]
  root to: 'visitors#new'

  get 'chicago', to: 'pages#chicago', :as => :chicago
  get 'nyc', to: 'pages#nyc', :as => :nyc
  get 'austin', to: 'pages#austin'
  get 'madisonwi', to: 'pages#madisonwi'
  get 'scholarships', to: 'pages#scholarships', :as => :scholarships
  get 'nyscholars', to: 'pages#nyscholars', :as => :nyscholars
  get 'chicago11', to: 'pages#chicago11', :as => :chicago11
end
