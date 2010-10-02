require 'spec_helper'

describe UsersHelper do
  describe "element_actions" do
    it "dont include :edit" do
      !helper.element_actions.include? :edit
    end
  end

  describe "list_attributes" do
    it "include :email" do
      !helper.list_attributes(Project.new).should eql([:email])
    end
  end
end

