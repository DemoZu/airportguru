require "test_helper"

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get chatrooms" do
    get messages_chatrooms_url
    assert_response :success
  end
end
