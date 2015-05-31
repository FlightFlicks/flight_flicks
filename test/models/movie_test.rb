require 'test_helper'
require 'movie.rb'

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
end
