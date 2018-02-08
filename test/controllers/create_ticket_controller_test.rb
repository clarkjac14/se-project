require 'test_helper'

class CreateTicketControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get create_ticket_new_url
    assert_response :success
  end

end
