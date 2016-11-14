Rails.application.routes.draw do
  root "users#index"

  get "/users",		to: "users#index",		as: "users"
  post "/users", 	to: "users#create",		as: "user_create"
end
