class MovieGenre
  attr_reader :id
  def initialize(id)
    @page = get_data
    @id = id
  end

  def get_data
    HTTParty.get("http://api.themoviedb.org/3/genre/#{@id}/movies?api_key=#{ENV["MOVIE_KEY"]}&page=#{(1..2000).sample}")
    #will change later
  end

  def find_movie
    @page["results"].map {|movie| movie["id"]} 
  end
end
