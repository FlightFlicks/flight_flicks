require 'test_helper'
require 'movie_genre.rb'

class MovieGenre
  private def get_data
    JSON.parse(File.open("movie_list.json").read)
  end
end

class MovieGenreTest < ActiveSupport::TestCase
  test "movie id list" do
    action = Genre.new("Action")
    action_movies = MovieGenre.new(action.get_id)
    assert_equal [348, 187017, 49521, 241239, 289720, 184315, 271110, 679, 792, 225574, 11, 313074, 248574, 121, 246655, 37724, 138103, 10195, 101299, 339533],
      action_movies.find_movie
  end
end
