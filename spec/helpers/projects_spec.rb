require 'spec_helper'

describe ProjectsHelper do
  describe "list_attributes" do
    it "include :name, :owner_email and organization" do
      !helper.list_attributes(Project.new).should eql([:name, :owner_email])
    end
  end

  describe "element_actions" do
    it "include transitions for current state" do
      helper.element_actions(Project.new).should include :start
      helper.element_actions(Project.new).should include :archive
    end
  end
end

