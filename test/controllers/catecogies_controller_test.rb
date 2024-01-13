require "test_helper"

class CatecogiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catecogies_index_url
    assert_response :success
  end

  test "should get show" do
    get catecogies_show_url
    assert_response :success
  end

  test "should get new" do
    get catecogies_new_url
    assert_response :success
  end

  test "should get edit" do
    get catecogies_edit_url
    assert_response :success
  end

  test "should get delete" do
    get catecogies_delete_url
    assert_response :success
  end
end
