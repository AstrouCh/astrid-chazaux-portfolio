Rails.application.routes.draw do
  root to: "pages#home", as: :home
  get "about", to: "pages#about", as: :about
  get "myprojects", to: "pages#myprojects", as: :myprojects

  resources :contact, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
