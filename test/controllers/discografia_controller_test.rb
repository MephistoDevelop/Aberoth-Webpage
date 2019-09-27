require 'test_helper'

class DiscografiaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get discografia_index_url
    assert_response :success
  end

end
