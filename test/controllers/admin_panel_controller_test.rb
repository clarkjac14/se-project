require 'test_helper'

class AdminPanelControllerTest < ActionDispatch::IntegrationTest
  test "should get panel_home" do
    get admin_panel_panel_home_url
    assert_response :success
  end

end
