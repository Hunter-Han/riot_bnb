Rails.application.routes.draw do
  resources :rioters do
    resources :bookings, only: [:create]
  end
  resources :skills do
    resources :rioter_skills, only: [:create]
  end
  resources :reviews

  resources :bookings


  root to: 'rioters#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
