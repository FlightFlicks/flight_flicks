require 'test_helper'
require 'movies_controller.rb'

class MoviesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    flight = Flight.new("Raleigh", "Denver")
    movie = Movie.new(348)
    get :show
    response.body
    assert response.body =~ /This movie is to short, lets try another/
  end



end
