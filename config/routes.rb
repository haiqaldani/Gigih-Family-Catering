Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'main/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
