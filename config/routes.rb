Rails.application.routes.draw do
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'welcome/index'

  root to: "welcome#index"

  get "/login", to: "sessions#new"

  get "/logout", to: "sessions#logout"
  
end
