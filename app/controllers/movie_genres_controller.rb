class MovieGenresController < ApplicationController
  def index
    render json: MovieGenre.new(params[:genre])
    # render json: movie
  end


end
