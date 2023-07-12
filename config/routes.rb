Rails.application.routes.draw do
  root to: "pages#home"
  get "about", to: "pages#about", as: :about

  # root "contact_form#new"
  resources :contact_form, only: %i[new create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
