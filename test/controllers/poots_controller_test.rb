require 'test_helper'

class PootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get poots_index_url
    assert_response :success
  end

  test "should get new" do
    get poots_new_url
    assert_response :success
  end

  test "should get create" do
    get poots_create_url
    assert_response :success
  end

  test "should get show" do
    get poots_show_url
    assert_response :success
  end

  test "should get edit" do
    get poots_edit_url
    assert_response :success
  end

  test "should get update" do
    get poots_update_url
    assert_response :success
  end

  test "should get destroy" do
    get poots_destroy_url
    assert_response :success
  end

  test "should get private" do
    get poots_private_url
    assert_response :success
  end

end
