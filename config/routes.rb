Rails.application.routes.draw do
  namespace :api do
    get 'genre/name'
  end

  # HTML Movie Paths
  get "movies/:id" => "movies#show"


  namespace :api do

    # Actor Paths
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"
  
    # Movie Paths
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"

    # User Paths
    post "/users" => "users#create"
    
    # Session (Login) Path
    post "/sessions" => "sessions#create"
  
    # Movie Genre Paths
    post "/movie_genres" => "movie_genres#create"

  end

end