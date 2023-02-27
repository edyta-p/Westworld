Rails.application.routes.draw do
  root to: "pages#home"

  get 'users/show'

  get 'personnages/search'
  get 'personnages/show'
  get 'personnages/new'
  post 'personnages/create'
  patch 'personnages/update'
  delete 'personnages/destroy'

  post 'reservations/create'
  delete 'reservations/destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
