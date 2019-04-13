require 'test_helper'

class JudicialControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get judicial_new_url
    assert_response :success
  end

  test "should get edit" do
    get judicial_edit_url
    assert_response :success
  end

end
