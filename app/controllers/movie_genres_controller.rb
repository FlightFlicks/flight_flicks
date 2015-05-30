class MovieGenresController < ApplicationController
  def index
    render json: MovieGenre.new
    # render json: movie
  end


end
