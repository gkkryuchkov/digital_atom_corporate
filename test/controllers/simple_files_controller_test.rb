require "test_helper"

class SimpleFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simple_file = simple_files(:one)
  end

  test "should get index" do
    get simple_files_url
    assert_response :success
  end

  test "should get new" do
    get new_simple_file_url
    assert_response :success
  end

  test "should create simple_file" do
    assert_difference('SimpleFile.count') do
      post simple_files_url, params: { simple_file: { category: @simple_file.category, desc: @simple_file.desc, name: @simple_file.name } }
    end

    assert_redirected_to simple_file_url(SimpleFile.last)
  end

  test "should show simple_file" do
    get simple_file_url(@simple_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_simple_file_url(@simple_file)
    assert_response :success
  end

  test "should update simple_file" do
    patch simple_file_url(@simple_file), params: { simple_file: { category: @simple_file.category, desc: @simple_file.desc, name: @simple_file.name } }
    assert_redirected_to simple_file_url(@simple_file)
  end

  test "should destroy simple_file" do
    assert_difference('SimpleFile.count', -1) do
      delete simple_file_url(@simple_file)
    end

    assert_redirected_to simple_files_url
  end
end
