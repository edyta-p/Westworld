Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

<<<<<<< HEAD
  get '/users/:id', to: "users#show", as: 'user'

  resources :personnages, only: [:search, :show, :new, :create, :update, :destroy] do
    resources :reservations, only: [:create, :new]
=======
  get '/users/:id', to: "users#show", as: :user_show

  resources :personnages, only: %i[new create show edit update destroy] do
    collection do
      get 'search'
    end

    resources :reservations, only: [:create]
>>>>>>> master
  end
  resources :reservations, only: [:destroy]
end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
