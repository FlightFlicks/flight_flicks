class MovieGenre

  def initialize(genre)
    @page = get_data
    @genre = genre

  end

  def get_data
    HTTParty.get("http://api.themoviedb.org/3/genre/12/movies?api_key=#{ENV[“MOVIE_KEY”]}&page=#{(1..2000).sample}")
  end
