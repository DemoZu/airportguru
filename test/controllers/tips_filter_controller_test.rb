require "test_helper"

class TipsFilterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tips_filter_index_url
    assert_response :success
  end
end
