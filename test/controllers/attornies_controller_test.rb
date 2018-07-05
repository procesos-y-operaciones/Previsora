require 'test_helper'

class AttorniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attorny = attornies(:one)
  end

  test "should get index" do
    get attornies_url
    assert_response :success
  end

  test "should get new" do
    get new_attorny_url
    assert_response :success
  end

  test "should create attorny" do
    assert_difference('Attorny.count') do
      post attornies_url, params: { attorny: { name: @attorny.name } }
    end

    assert_redirected_to attorny_url(Attorny.last)
  end

  test "should show attorny" do
    get attorny_url(@attorny)
    assert_response :success
  end

  test "should get edit" do
    get edit_attorny_url(@attorny)
    assert_response :success
  end

  test "should update attorny" do
    patch attorny_url(@attorny), params: { attorny: { name: @attorny.name } }
    assert_redirected_to attorny_url(@attorny)
  end

  test "should destroy attorny" do
    assert_difference('Attorny.count', -1) do
      delete attorny_url(@attorny)
    end

    assert_redirected_to attornies_url
  end
end
