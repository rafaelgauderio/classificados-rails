Rails.application.routes.draw do
  root to: "home#show"

  get "/user/new", to: "users#new"
  post "/users", to: "users#create"

  # login
  get "/sessions/new", to: "sessions#new"
end
