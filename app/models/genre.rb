class Genre
  attr_reader :genre
  def initialize(genre)
    @genre = genre
    @genre_page = get_genre_id_data
  end

  def get_genre_id_data
    HTTParty.get("http://api.themoviedb.org/3/genre/movie/list?api_key=#{ENV["MOVIE_KEY"]}")
  end

  def get_id
    object = @genre_page["genres"].select {|g| g["name"] == genre}
    object[0]["id"]
  end
end
