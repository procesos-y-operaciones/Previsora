require 'test_helper'

class SinistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sinister = sinisters(:one)
  end

  test "should get index" do
    get sinisters_url
    assert_response :success
  end

  test "should get new" do
    get new_sinister_url
    assert_response :success
  end

  test "should create sinister" do
    assert_difference('Sinister.count') do
      post sinisters_url, params: { sinister: {  } }
    end

    assert_redirected_to sinister_url(Sinister.last)
  end

  test "should show sinister" do
    get sinister_url(@sinister)
    assert_response :success
  end

  test "should get edit" do
    get edit_sinister_url(@sinister)
    assert_response :success
  end

  test "should update sinister" do
    patch sinister_url(@sinister), params: { sinister: {  } }
    assert_redirected_to sinister_url(@sinister)
  end

  test "should destroy sinister" do
    assert_difference('Sinister.count', -1) do
      delete sinister_url(@sinister)
    end

    assert_redirected_to sinisters_url
  end
end
