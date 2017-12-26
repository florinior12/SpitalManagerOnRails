require 'test_helper'

class MedicsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get medics_new_url
    assert_response :success
  end

end
