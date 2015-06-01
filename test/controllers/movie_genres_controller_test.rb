require 'test_helper'

class MovieGenresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert response.body :success
  end

  # test "should show flight duration" do
  #   flight = Flight.new("Raleigh", "Denver")
  #   get :show
  #   assert response.body =~ /220/
  # end
end
