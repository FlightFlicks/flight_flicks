# require './movie.rb'

class MovieGenre
  def initialize(genre_id)
    @genre_id = genre_id
    @movie_page = get_movie_data
    @page = rand(1..2000)
  end

  def get_movie_data
    HTTParty.get("http://api.themoviedb.org/3/genre/#{@genre_id}/movies?api_key=#{ENV["MOVIE_KEY"]}&page=#{@page}")
  end

  def find_movies
    @movie_page["results"].map {|movie| movie["id"]}
  end

end
