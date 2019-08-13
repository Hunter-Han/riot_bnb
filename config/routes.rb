Rails.application.routes.draw do
  resources :rioters
  resources :skills do
    resources :rioter_skills, only: [:create]
  end
  resources :bookings
  resources :reviews


  root to: 'rioters#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
