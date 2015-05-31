class MoviesController < ApplicationController
  def index
    movie = Movie.new(params[:movie])
    render json: movie
  end



end
