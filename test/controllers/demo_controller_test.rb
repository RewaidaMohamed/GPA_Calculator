require 'test_helper'

class DemoControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get homepage" do
    get :homepage
    assert_response :success
  end

end
