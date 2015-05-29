require 'minitest/autorun'
require 'minitest/pride'
require 'json'

class MovieGenres
  private def get_data
    JSON.parse(File.open("genre_ids.json").read)
  end
end

class MovieGenres < Minitest::Test
end
