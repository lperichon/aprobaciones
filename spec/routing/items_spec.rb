require 'spec_helper'

describe "routing to items" do
  it "doesn't expose an items list route" do
    {:get => "/projects/1/items"}.should_not be_routable
  end

  it "exposes an item" do
    {:get => "/projects/1/items/1"}.should route_to(:controller => 'items', :action => 'show', :id => '1', :project_id => '1')
  end

  it "exposes an item edit route" do
    {:get => "/projects/1/items/1/edit"}.should route_to(:controller => 'items', :action => 'edit', :id => '1', :project_id => '1')
  end

  it "exposes an item update route" do
    {:put => "/projects/1/items/1"}.should route_to(:controller => 'items', :action => 'update', :id => '1', :project_id => '1')
  end

  it "exposes a new item route" do
    {:get => "/projects/1/items/new"}.should route_to(:controller => 'items', :action => 'new', :project_id => '1')
  end

  it "exposes a create item route" do
    {:post => "/projects/1/items"}.should route_to(:controller => 'items', :action => 'create', :project_id => '1')
  end

  it "exposes a delete item route" do
    {:delete => "/projects/1/items/1"}.should route_to(:controller => 'items', :action => 'destroy', :id => '1', :project_id => '1')
  end
end