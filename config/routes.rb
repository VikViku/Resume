Rails.application.routes.draw do

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'home#index'

  get '/home', to: 'home#index'

  resources :contacts, only: [:new, :create]

  resources :dashboard

  namespace :admin do
    resources :experiences
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
