class MoviesController < ApplicationController
  def index
    movie = Movie.new
    render json: movie
  end


end
