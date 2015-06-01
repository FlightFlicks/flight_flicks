require 'test_helper'
require 'genre.rb'
# require './app/models/movie.rb'

class Genre
  private def get_genre_id_data
    JSON.parse(File.open("genre_ids.json").read)
  end
end

class GenreTest < ActiveSupport::TestCase
  test "genre id" do
    action = Genre.new("Action")
    family = Genre.new("Family")
    assert_equal 28, action.get_id
    assert_equal 10751, family.get_id
  end
end
