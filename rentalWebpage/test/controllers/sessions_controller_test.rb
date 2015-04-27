require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  OmniAuth.config.test_mode = true
  def login
    OmniAuth.config.add_mock(:facebook, { uid: '12345' })
    post '/auth/facebook'
    request.env['omniauth.env'] = OmniAuth.config.mock_auth[:facebook]
    get '/auth/facebook/callback'
  end
  
  test "should get destroy" do
    get :destroy
    assert session[:user_id].blank?, "user_id should no longer exist"
    assert_redirected_to root_path, notice: "Signed out!"
  end

  
end
