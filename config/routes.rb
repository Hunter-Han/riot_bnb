Rails.application.routes.draw do
  resources :user, :rioter, :skill, :booking, :review

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
