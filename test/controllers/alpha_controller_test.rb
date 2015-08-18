require 'test_helper'

class AlphaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

end
