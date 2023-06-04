require "test_helper"

class ChampionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get champion_index_url
    assert_response :success
  end
end
