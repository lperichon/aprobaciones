require 'spec_helper'

describe "routing to projects" do
  it "exposes a list of projects" do
    {:get => "/projects"}.should route_to(:controller => 'projects', :action => 'index')
  end

  it "exposes a project" do
    {:get => "/projects/1"}.should route_to(:controller => 'projects', :action => 'show', :id => '1')
  end

  it "exposes a project edit route" do
    {:get => "/projects/1/edit"}.should route_to(:controller => 'projects', :action => 'edit', :id => '1')
  end

  it "exposes a project update route" do
    {:put => "/projects/1"}.should route_to(:controller => 'projects', :action => 'update', :id => '1')
  end

  it "exposes a new project route" do
    {:get => "/projects/new"}.should route_to(:controller => 'projects', :action => 'new')
  end

  it "exposes a create project route" do
    {:post => "/projects"}.should route_to(:controller => 'projects', :action => 'create')
  end

  it "exposes a delete project route" do
    {:delete => "/projects/1"}.should route_to(:controller => 'projects', :action => 'destroy', :id => '1')
  end
end