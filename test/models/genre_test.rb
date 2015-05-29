require 'minitest/autorun'
require 'minitest/pride'
require 'json'

class Genres
  private def get_data
    JSON.parse(File.open("genre_ids.json").read)
  end
end

class Genres < Minitest::Test

end
