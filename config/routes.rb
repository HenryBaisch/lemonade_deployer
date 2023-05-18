Rails.application.routes.draw do
  resources :artists
  devise_for :users
  get 'profile', to: 'users#home'
  get 'discover', to: 'pages#discover'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#discover'
  # Defines the root path route ("/")
  # root "articles#index"
end
