class MoviesController < ApplicationController
  def index
    movie = Movie.new(params[:genre])
    render json: movie
  end



end
