require './flights'

class Movies

  def initialize(genre)
    @page = get_data
    @genre = genre

  end

  def get_data
    HTTParty.get("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=[#{ENV[“ROTTEN_KEY”]}.json")
    #will change later
  end

  def movie_run_time
    Flight.duration.to_i
  end

  def movie_title
    @page["title"]
  end

  def movie_genre
    @page["genres"].find?(@genre)
  end









end
