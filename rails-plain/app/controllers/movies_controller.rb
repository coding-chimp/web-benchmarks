class MoviesController < ApplicationController
  def index
    render json: Movie.order(:id)
  end
end
