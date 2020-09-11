require "http"

response = HTTP.get("localhost:3000/api/single_actor_path")
actor = response.parse
pp actor

response = HTTP.get("localhost:3000/api/single_movie_path")
movie = response.parse
pp movie

response = HTTP.get("localhost:3000/api/all_movies_path")
movies = response.parse
pp movies

response = HTTP.get("localhost:3000/api/choose_movie_value_path")
movie = response.parse
pp movie