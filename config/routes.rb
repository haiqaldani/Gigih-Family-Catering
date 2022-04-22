Rails.application.routes.draw do
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "main#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
