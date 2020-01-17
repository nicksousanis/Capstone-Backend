Rails.application.routes.draw do
  namespace :api do
    get "/races" => "races#index"

    get "/racewatchlists" => "racewatchlists#index"
    post "/racewatchlists" => "racewatchlists#create"

    get "/posts" => "posts#index"

    get "/users" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/workouts" => "workouts#index"
    get "/workouts" => "workouts#show"
    post "/workouts" => "workouts#create"

    get "/coordinates" => "coordinates#index"
  end
end