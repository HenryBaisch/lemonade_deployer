Rails.application.routes.draw do
  devise_for :users
  get 'user_home', to: 'users#home'

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
