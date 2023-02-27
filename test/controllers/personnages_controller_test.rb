require "test_helper"

class PersonnagesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get personnages_search_url
    assert_response :success
  end

  test "should get show" do
    get personnages_show_url
    assert_response :success
  end

  test "should get new" do
    get personnages_new_url
    assert_response :success
  end

  test "should get create" do
    get personnages_create_url
    assert_response :success
  end

  test "should get update" do
    get personnages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get personnages_destroy_url
    assert_response :success
  end
end
