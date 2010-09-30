require 'spec_helper'


describe UsersController do
  include Devise::TestHelpers

  it "should require authentication when accessing GET /index" do
        get :index
        response.should redirect_to(new_user_session_path)
  end

  describe "when user is signed in" do

    def mock_user(stubs={})
        @mock_user ||= mock_model(User, stubs).as_null_object
    end

    before (:each) do
      # mock up an authentication in the underlying warden library
        request.env['warden'] = mock(Warden, :authenticate => mock_user,
                                             :authenticate! => mock_user)
    end

    it "should set @users when accessing GET /index" do
      get :index
      assigns[:users].should_not be_nil
    end
  end
end