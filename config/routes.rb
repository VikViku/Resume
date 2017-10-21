require 'sidekiq/web'

Rails.application.routes.draw do

  resources :photos
  devise_for :users
  get "/404", to: "errors#error_404"

  mount Sidekiq::Web => '/sidekiq'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/admin', to: 'dashboard#index'

    # match ':locale', to: 'home#change_locale', as: :change_locale, via: [:get]

   scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    
    get '/home', to: 'home#index'

    resources :contacts, only: [:new, :create]
    resources :users, :educations, :experiences, :languages, :skills, :workshops

    root to: 'home#index'
  end
end
