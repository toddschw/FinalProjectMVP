require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show_results" do
    get :show_results
    assert_response :success
  end

end
