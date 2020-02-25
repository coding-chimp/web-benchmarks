require "kemal"
require "json"
require "./movie"

get "/" do |env|
  env.response.content_type = "application/json"
  movies = Movie.all("ORDER BY id ASC")
  movies.to_json
end

Kemal.run
