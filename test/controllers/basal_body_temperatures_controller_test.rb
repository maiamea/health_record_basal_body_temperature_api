require 'test_helper'

class BasalBodyTemperaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basal_body_temperatures_index_url
    assert_response :success
  end

  test "should get new" do
    get basal_body_temperatures_new_url
    assert_response :success
  end

  test "should get create" do
    get basal_body_temperatures_create_url
    assert_response :success
  end

  test "should get edit" do
    get basal_body_temperatures_edit_url
    assert_response :success
  end

  test "should get update" do
    get basal_body_temperatures_update_url
    assert_response :success
  end

  test "should get destroy" do
    get basal_body_temperatures_destroy_url
    assert_response :success
  end

end
