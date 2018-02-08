require 'test_helper'

class AllusersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get allusers_new_url
    assert_response :success
  end

  test "should get create" do
    get allusers_create_url
    assert_response :success
  end

end
