
class Movie
  def initialize (movie)
    @page = get_data
    @movie_id = []
    # @movie = @movies_id.sample
    @movie = movie

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

  def movies_id
    @movies_id = MovieGenre.find_movies
  end








end
