class MovieGenresController < ApplicationController
  def index
    genre = Genre.new(params[:genre])
    movies = MovieGenre.new(genre.get_id)
    render json: movies.find_movies
    # render json: movie
  end


end
