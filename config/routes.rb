Rails.application.routes.draw do
  get 'home/index'

  resources :articles

  resources :contacts, only: [:index, :new, :create]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
