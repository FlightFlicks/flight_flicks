class MovieGenresController < ApplicationController
  def index
    movie = MovieGenre.new(params[:genre])
    render json: movie
  end


end
