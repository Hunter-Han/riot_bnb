Rails.application.routes.draw do
  resources :rioters
  resources :skills
  resources :bookings
  resources :reviews

  root to: 'rioter#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
