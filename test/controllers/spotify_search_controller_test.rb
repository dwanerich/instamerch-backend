require 'test_helper'

class SpotifySearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get spotify_search_search_url
    assert_response :success
  end

end
