Rails.application.routes.draw do
  resources :user_studies
  resources :site_studies
  resources :user_sites
  resources :sites
  resources :studies
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
