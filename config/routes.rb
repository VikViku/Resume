require 'sidekiq/web'

Rails.application.routes.draw do

  
  # scope "(:locale)", :locale => "en" do
  #   mount Thredded::Engine => '/forum'
  # end
  mount Sidekiq::Web => '/sidekiq'

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

    devise_for :users, path: '', path_names: { sign_in: 'prisijungti', sign_out: 'atsijungti'}

    get "/404", to: "errors#error_404"
    
    root to: 'home#index'
    
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    
    resources :contacts, only: [:new, :create]
    resources :users, :educations, :experiences, :languages, :skills, :workshops, :photos
    
    # get '/admin', to: 'dashboard#index'
  end

end
