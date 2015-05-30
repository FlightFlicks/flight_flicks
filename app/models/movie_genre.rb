class MovieGenre

  def initialize
    @page = get_data
    @movies = []
  end

  def get_data
    HTTParty.get("http://api.themoviedb.org/3/genre/#{Genre.get_id}/movies?api_key=#{ENV["MOVIE_KEY"]}&page=#{(1..2000).sample}")
    #will change later
  end

  def find_movie
    @page["id"]["page"]["results"].each do |movie|
      @movies << movie["id"]
    end
  end
end
