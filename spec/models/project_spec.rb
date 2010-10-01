require 'spec_helper'

describe Project do
  describe "when new" do
    before(:each) do
      @project = Project.new
    end

    it "should not be valid" do
      @project.should_not be_valid
    end

    it "should require a name" do
      @project.valid?
      @project.errors[:name]
    end
  end
end