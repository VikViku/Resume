Rails.application.routes.draw do

  root to: 'home#index'

  get '/home', to: 'home#index'

  resources :users, :experiences, :educations, :interests, :languages, :skills, :workshops


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
