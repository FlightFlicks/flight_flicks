class MovieGenresController < ApplicationController
  def index
    movie = Genre.new(params[:genre])
    render json: movie
  end


end
