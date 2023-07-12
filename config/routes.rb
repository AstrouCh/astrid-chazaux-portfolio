Rails.application.routes.draw do
  root to: "pages#home"
  get "about", to: "pages#about", as: :about

  resources :contacts, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
