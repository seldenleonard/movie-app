Rails.application.routes.draw do
  namespace :api do
    get "/single_actor_path" => "actors#single_actor_action"
    get "/actors" => "actors#show"
    get "/actors/:id" => "actors#show"
    post "/actors" => "actors#show"
    
    get "/single_movie_path" => "movies#single_movie_action"
    get "/all_movies_path" => "movies#all_movies_action"
    get "/choose_movie_values_path" => "movies#choose_movie_values_action"
  end
end
