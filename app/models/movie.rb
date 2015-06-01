class Movie
  attr_reader :movie
  def initialize (movie)
    @page = get_data
    # @movie_id = []
    @movie = movie
    # @genre = genre
    # @movie = movie

  end

  def get_data
    HTTParty.get("http://api.themoviedb.org/3/movie/#{@movie}?api_key=#{ENV["MOVIE_KEY"]}")
    #will change later
  end

  def movie_run_time
     @page["runtime"]
  #  < Flight.duration.to_i
  #   @movies.each do |movie_id|
  #     movie.
  #   end
  end

  def movie_title
    @page["title"]
  end

  # def movie_flight
  #   if @page["runtime"] > Flight.duration.to_i
  #     "This movie to long, lets try another"
  #   elsif @page["runtime"] < (Flight.duration.to_i - 20)
  #     "This movie is to short, lets try another"
  #   else
  #     "This movie is a great pick"
  #   end
  # end

  # def movies_id
  #   @movies_id = MovieGenre.find_movies
  # end

end
