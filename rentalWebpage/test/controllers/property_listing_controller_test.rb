require 'test_helper'

class PropertyListingControllerTest < ActionController::TestCase
  test "should get property_listing" do
    get :property_listing
    assert_response :success
  end
end
