require 'test_helper'

class EntitlmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entitlments_index_url
    assert_response :success
  end

end
