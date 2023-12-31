Rails.application.routes.draw do
  resources :joboffers
  resources :postulations, only: [:create]
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "joboffers#index"
end
