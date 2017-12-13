require 'test_helper'

class FiscalControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get fiscal_edit_url
    assert_response :success
  end

  test "should get new" do
    get fiscal_new_url
    assert_response :success
  end

end
