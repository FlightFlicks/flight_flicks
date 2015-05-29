class Movie

  def initialize(genre)
    @page = get_data
    @genre = genre

  end

  def get_data
    HTTParty.get("")
    #will change later
  end

  def movie_run_time
    Flight.duration.to_i
  end

  def movie_title
    @page["title"]
  end









end
