require "http"

response = HTTP.get("localhost:3000/api/single_actor_path")
actor = response.parse
pp actor