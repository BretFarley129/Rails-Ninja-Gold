require 'test_helper'

class GoldsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
