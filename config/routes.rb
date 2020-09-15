Rails.application.routes.draw do
  namespace :api do

    # Actor Paths
    get "/actors" => "actors#index"
    get "/actors/:id" => "actors#show"
    # My "new" path get request below to create a new instance of "Actor" is not working because the computer thinks that the "/new" after "/actors" is actually an id that I am attempting to retrieve, because it thinks I am using the word "new" to replace the ":id" symbol in the "show" path get request.
    get "actors/new" => "actors#new"
    get "/actors/:id/edit" => "actors#edit"
    post "/actors" => "actors#create"
    patch "/actors/:id" => "actors#update"
    delete "/actors/:id" => "actors#destroy"
  
    # Movie Paths
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    # I'm having the same issue with the "new" path get request here as I am with the actors one.
    get "movies/new" => "movies#new"
    get "/movies/:id/edit" => "movies#edit"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"
  
  end

end