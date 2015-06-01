require 'test_helper'
require 'movie.rb'
# require 'movie_genre.rb'

class Movie
  private def get_data
    JSON.parse(File.open("movie.json").read)
  end
end

class MovieTest < ActiveSupport::TestCase
  test "movie title" do
    alien = Movie.new(348)
    assert_equal "Alien", alien.movie_title
  end

  test "movie runtime" do
    alien = Movie.new(348)
    assert_equal 117, alien.movie_run_time
  end

  # test "movie in flight" do
  #   flight = Flight.new("Raleigh", "Denver")
  #   alien = Movie.new(348)
  #   assert_equal 0, alien.movie_flight
  # end

  # test "array of movies id" do
  #   action = Movie.new("Action")
  #   assert_equal 0, action.movies_id
  # end
end
