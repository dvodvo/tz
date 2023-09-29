Rails.application.routes.draw do
  resources :individuals
  resources :timezones
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "individuals#index"
end
