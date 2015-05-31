require 'test_helper'
require 'genres_controller.rb'

class GenresControllerTest < ActionController::TestCase
  test "should get show" do
    genre = Genre.new("Action")
    action_id = genre.get_id
    get :show
    assert response.body =~ /28/
    refute response.body =~ /16/
  end
end
