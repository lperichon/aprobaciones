require 'spec_helper'

describe "routing to users" do
  it "exposes a list of users" do
    {:get => "/users"}.should route_to(:controller => 'users', :action => 'index')
  end

  it "exposes a user" do
    {:get => "/users/1"}.should route_to(:controller => 'users', :action => 'show', :id => '1')
  end

  it "doesnt expose a user edit route" do
    {:get => "/users/1/edit"}.should_not be_routable
  end

  it "doesnt expose a user update route" do
    {:post => "/users/1"}.should_not be_routable
  end

#  it "doesnt expose a new user route" do
#    {:get => "/users/new"}.should_not be_routable
#  end

  it "doesnt expose a create user route" do
    {:put => "/users"}.should_not be_routable
  end

  it "exposes a delete user route" do
    {:delete => "/users/1"}.should route_to(:controller => 'users', :action => 'destroy', :id => '1')
  end
end