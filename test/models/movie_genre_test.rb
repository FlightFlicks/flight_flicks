require 'test_helper'
require 'movie_genre.rb'
# require './app/models/movie.rb'

class MovieGenre
  private def get_movie_data
    JSON.parse(File.open("movie_list.json").read)
  end

  private def get_genre_id_data
    JSON.parse(File.open("genre_ids.json").read)
  end
end

class MovieGenreTest < ActiveSupport::TestCase
  test "movie id list" do
    action = MovieGenre.new("Action")
    action_movies = MovieGenre.new(action.get_id)
    assert_equal [348, 187017, 49521, 241239, 289720, 184315, 271110, 679, 792, 225574, 11, 313074, 248574, 121, 246655, 37724, 138103, 10195, 101299, 339533],
      action_movies.find_movies
  end

  test "genre id" do
    action = MovieGenre.new("Action")
    family = MovieGenre.new("Family")
    assert_equal 28, action.get_id
    assert_equal 10751, family.get_id

  end
end
