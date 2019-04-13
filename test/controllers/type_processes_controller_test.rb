require 'test_helper'

class TypeProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_process = type_processes(:one)
  end

  test "should get index" do
    get type_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_type_process_url
    assert_response :success
  end

  test "should create type_process" do
    assert_difference('TypeProcess.count') do
      post type_processes_url, params: { type_process: {  } }
    end

    assert_redirected_to type_process_url(TypeProcess.last)
  end

  test "should show type_process" do
    get type_process_url(@type_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_process_url(@type_process)
    assert_response :success
  end

  test "should update type_process" do
    patch type_process_url(@type_process), params: { type_process: {  } }
    assert_redirected_to type_process_url(@type_process)
  end

  test "should destroy type_process" do
    assert_difference('TypeProcess.count', -1) do
      delete type_process_url(@type_process)
    end

    assert_redirected_to type_processes_url
  end
end
