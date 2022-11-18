Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :movies, only: [:index, :show]
  resources :lists, only: [ :show, :index, :new, :create, :destroy]  do
    resources :bookmarks, only: [:index, :create, :new]
  end
  resources :bookmarks, only: :destroy
  # Defines the root path route ("/")
  # root "articles#index"
end
