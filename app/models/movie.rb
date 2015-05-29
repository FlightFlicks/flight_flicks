
class Movie

  def initialize
    @page = get_data
    @movie_id = movie_id

  end

  def get_data
    HTTParty.get("http://api.themoviedb.org/3/movie/#{movie_id}?api_key=#{ENV[“MOVIE_KEY”]}")
    #will change later
  end

  def movie_run_time
    Flight.duration.to_i
  end

  def movie_title
    @page["title"]
  end

  # def movie_id
  #   @movie_id = MovieGenre.
  # end








end
