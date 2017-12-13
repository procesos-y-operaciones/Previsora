require 'test_helper'

class AdministrativeControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get administrative_edit_url
    assert_response :success
  end

  test "should get new" do
    get administrative_new_url
    assert_response :success
  end

end
