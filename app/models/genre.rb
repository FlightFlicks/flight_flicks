class Genre
  attr_reader :genre
  def initialize(genre)
    @page = get_data
    @genre = genre
  end

  def get_data
    HTTParty.get("http://api.themoviedb.org/3/genre/movie/list?api_key=#{ENV['MOVIE_KEY']}")
    #will change later
  end

  def get_id
    object = @page["genres"].select {|g| g["name"] == @genre}
    object[0]["id"]   
  end



end
