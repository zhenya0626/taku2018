require 'test_helper'

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get buildings_show_url
    assert_response :success
  end

end
