require 'spec_helper'

describe ProjectsHelper do
  describe "show_attributes" do
    it "include :name, organization, :owner_email, :observations, :status, :paid" do
      !helper.show_attributes(Project.new).should eql([:name, :owner_organization, :owner_email, :observations, :status, :paid])
    end
  end

  describe "list_attributes" do
    it "include :name, :owner_email" do
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

