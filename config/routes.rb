Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
