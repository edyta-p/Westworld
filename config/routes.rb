Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/users/:id', to: "users#show"

  resources :personnages, only: [:search, :show, :new, :create, :update, :destroy] do
    resources :reservations, only: [:create]
  end
  resources :reservations, only: [:destroy]
end
  # get 'personnages/search'
  # get 'personnages/show'
  # get 'personnages/new'
  # post 'personnages/create'
  # patch 'personnages/update'
  # delete 'personnages/destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
