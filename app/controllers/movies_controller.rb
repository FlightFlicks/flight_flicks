class MoviesController < ApplicationController
  def index
    movie = Movie.new(movie: params[:movie])
    render json: movie
  end

  def show
    movie = Movie.new(id: params[:id])
    flight = Flight.new(params[:origin], params[:destination])
      if movie.movie_run_time > flight.duration.to_i
        render json: {movie: movie.movie_title, id: params[:id], recommend: "This movie to long, lets try another"}
      elsif movie.movie_run_time < (flight.duration.to_i - 40)
        render json: {movie: movie.movie_title, id: params[:id], recommend: "This movie is to short, lets try another"}
      else
        render json: {movie: movie.movie_title, id: params[:id], recommend: "This movie is a great pick"}
      end
    end
end
