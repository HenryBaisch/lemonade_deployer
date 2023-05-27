Rails.application.routes.draw do
  resources :bands
  devise_for :users
  resources :users do
    member do
      get :bookmarks
      post 'bookmark' 
      delete 'bookmark'
    end
  end
  get 'profile', to: 'users#home'
  get 'discover', to: 'pages#discover'
  get 'account', to: 'users#account'
  resources :bookmarks, only: [:create, :destroy]

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#discover'
  # Defines the root path route ("/")
  # root "articles#index"
end
