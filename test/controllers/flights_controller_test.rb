require 'test_helper'

class FlightsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show flight duration" do
    flight = Flight.new("Raleigh", "Dallas")
    page = get :show
    assert_equal 185, page["flight_time"]
  end



end
