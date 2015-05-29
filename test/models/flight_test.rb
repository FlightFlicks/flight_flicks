require 'minitest/autorun'
require 'minitest/pride'
require 'json'

class Flights
  private def get_data
    JSON.parse(File.open("travel_info.json").read)
  end
end

class FlightTest < Minitest::Test

end
