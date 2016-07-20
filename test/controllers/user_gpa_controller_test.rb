require 'test_helper'

class UserGpaControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get gpa_calc" do
    get :gpa_calc
    assert_response :success
  end

end
