Rails.application.routes.draw do
  
  get 'books/show'

  root to: "welcome#index"

  get  "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get  "/logout", to: "sessions#destroy"
  resources :users
  
end
