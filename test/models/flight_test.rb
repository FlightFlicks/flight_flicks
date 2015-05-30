require 'test_helper'

class Flight
  private def get_data
    JSON.parse(File.open("travel_info.json").read)
  end
end

class FlightTest < ActiveSupport::TestCase
  test "flight duration" do
    f = Flight.new
    assert_equal 0, f.duration
  end
end
