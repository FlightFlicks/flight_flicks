class MoviesController < ApplicationController
  def index
    movie = Movie.new(movie: params[:movie])
    render json: movie
  end
end
