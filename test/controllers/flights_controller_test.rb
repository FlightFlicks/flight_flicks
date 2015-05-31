require 'test_helper'
require 'flights_controller.rb'

class FlightsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show flight duration" do
    flight = Flight.new("Raleigh", "Denver")
    get :show
    assert_equal "220", response.body
  end
end
