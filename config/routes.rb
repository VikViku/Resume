Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  get '/home', to: 'home#index'

  resources :users, :experiences, :educations, :interests, :languages, :skills, :workshops

  resources :dashboard

  namespace :admin do
    resources :experiences
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
