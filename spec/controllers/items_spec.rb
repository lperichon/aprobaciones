require 'spec_helper'


describe ItemsController do
  include Devise::TestHelpers

  it "should require authentication when accessing GET /show" do
        get :show, :project_id => 1, :id => 1
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
        @project = Factory(:project)
    end

    it "should set @item when accessing GET /show" do
      get :show, :project_id => @project.id, :id => @project.items.first.id
      assigns[:item].should_not be_nil
    end

    it "should redirect_to project's show page after create" do
      post :create, :project_id => @project.id, :item => {:name => 'test'}
      should redirect_to project_url(@project)
    end

    it "should redirect_to project's show page after update" do
      put :update, :project_id => @project.id, :id => @project.items.first.id
      should redirect_to project_url(@project)
    end

    it "should redirect_to project's show page after destroy" do
      delete :destroy, :project_id => @project.id, :id => @project.items.first.id
      should redirect_to project_url(@project)
    end
  end
end