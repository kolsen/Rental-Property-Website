require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "creates a user" do
    user = User.new
    user.provider = "Facebook"
    user.name = "John Smith"
    assert user.save
  end
end
