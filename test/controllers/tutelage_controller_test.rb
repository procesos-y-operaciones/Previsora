require 'test_helper'

class TutelageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tutelage_index_url
    assert_response :success
  end

  test "should get new" do
    get tutelage_new_url
    assert_response :success
  end

end
