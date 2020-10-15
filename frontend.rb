require "http"

response = HTTP.get("https://calm-beach-81198.herokuapp.com/api/single_actor_path")
actor = response.parse
pp actor

response = HTTP.get("https://calm-beach-81198.herokuapp.com/api/single_movie_path")
movie = response.parse
pp movie

response = HTTP.get("https://calm-beach-81198.herokuapp.com/api/all_movies_path")
movies = response.parse
pp movies

response = HTTP.get("https://calm-beach-81198.herokuapp.com/api/choose_movie_value_path")
movie = response.parse
pp movie