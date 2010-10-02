require 'spec_helper'

describe ProjectsHelper do
  describe "list_attributes" do
    it "include :name, :owner_email and organization" do
      !helper.list_attributes(Project.new).should eql([:name, :owner_organization, :owner_email])
    end
  end

end

