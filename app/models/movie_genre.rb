# require './movie.rb'

class MovieGenre
  attr_reader :genre
  def initialize(genre)
    @genre = genre
    @genre_page = get_genre_id_data
    @movie_page = get_movie_data
    @page = (1..2000).sample
  end

  def get_movie_data
    HTTParty.get("http://api.themoviedb.org/3/genre/#{get_id}/movies?api_key=#{ENV["MOVIE_KEY"]}&page=#{@page}")
  end

  def get_genre_id_data
    HTTParty.get("http://api.themoviedb.org/3/genre/movie/list?api_key=#{ENV["MOVIE_KEY"]}")
  end

  def find_movies
    @movie_page["results"].map {|movie| movie["id"]}
  end

  def self.get_id
    object = @genre_page["genres"].select {|g| g["name"] == @genre}
    object[0]["id"]
  end

end
