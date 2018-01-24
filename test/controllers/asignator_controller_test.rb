require 'test_helper'

class AsignatorControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get asignator_search_url
    assert_response :success
  end

end
