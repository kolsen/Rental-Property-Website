require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  test "should get addReview" do
    get :addReview
    assert_response :success
  end

end
