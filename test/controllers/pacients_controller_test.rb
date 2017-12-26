require 'test_helper'

class PacientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pacients_new_url
    assert_response :success
  end

end
