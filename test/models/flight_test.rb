require 'test_helper'
require 'flight.rb'

class Flight
  private def get_data
    JSON.parse(File.open("travel_info.json").read)
  end
end

class FlightTest < ActiveSupport::TestCase
  test "flight duration" do
    assert_equal 220, Flight.new("Raleigh", "Denver").duration
  end
end
