require 'test_helper'
require 'genre.rb'

class Genre
  private def get_data
    JSON.parse(File.open("genre_ids.json").read)
  end
end

class GenreTest < ActiveSupport::TestCase
  test "genre id" do
    genre = Genre.new("Action")
    assert_equal 28, genre.get_id
  end
end
