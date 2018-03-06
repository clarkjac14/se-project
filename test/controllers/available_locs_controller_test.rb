require 'test_helper'

class AvailableLocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_loc = available_locs(:one)
  end

  test "should get index" do
    get available_locs_url
    assert_response :success
  end

  test "should get new" do
    get new_available_loc_url
    assert_response :success
  end

  test "should create available_loc" do
    assert_difference('AvailableLoc.count') do
      post available_locs_url, params: { available_loc: { label: @available_loc.label } }
    end

    assert_redirected_to available_loc_url(AvailableLoc.last)
  end

  test "should show available_loc" do
    get available_loc_url(@available_loc)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_loc_url(@available_loc)
    assert_response :success
  end

  test "should update available_loc" do
    patch available_loc_url(@available_loc), params: { available_loc: { label: @available_loc.label } }
    assert_redirected_to available_loc_url(@available_loc)
  end

  test "should destroy available_loc" do
    assert_difference('AvailableLoc.count', -1) do
      delete available_loc_url(@available_loc)
    end

    assert_redirected_to available_locs_url
  end
end
