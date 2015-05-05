require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  setup do
    @helpful = reviews(:one)
  end
  
  
  test "should get addReview" do
    get :addReview
    assert_response :success
  end
  
  test "should get helpful" do
    get :helpful
    assert_not_nil @helpful
  end
  
end
