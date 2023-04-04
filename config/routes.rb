Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



  resources :movies, only: [:index, :show, :create, :update, :destroy] do
    resources :reviews, only: [:index, :show, :create, :update, :destroy], module: :movies
  end

  



  # get 'movies', to: 'movies#index'
  # get 'actors', to: 'actors#index'
  # get 'users', to: 'users#index'
  # get 'reviews', to: 'reviews#index'

  
end
