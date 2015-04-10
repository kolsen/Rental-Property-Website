require 'test_helper'

class ReviewControllerTest < ActionController::TestCase
  test "should get addReview" do
    get :addReview
    assert_response :success
  end

end
