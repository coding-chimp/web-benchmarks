class MovieController < ApplicationController
  def index
    movies = Movie.all("ORDER BY id ASC")

    respond_with 200 do
      json movies.to_json
    end
  end
end
