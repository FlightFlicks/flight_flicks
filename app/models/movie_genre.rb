class MovieGenre

  def initialize(genre)
    @page = get_data
    @genre = genre

  end

  def get_data
    HTTParty.get("http://api.themoviedb.org/3/genre/movie/list?api_key=#{ENV[“MOVIE_KEY”]}")
    #will change later
  end



end
