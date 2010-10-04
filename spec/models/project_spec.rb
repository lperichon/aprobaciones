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
      @project.errors[:name].should include("can't be blank")
    end

    it "should require an organization" do
      @project.valid?
      @project.errors[:owner_organization].should include("can't be blank")
    end

    it "should require an owner" do
      @project.valid?
      @project.errors[:owner_email].should include("can't be blank")
    end

    it 'should have many reviewers' do
      @project.should respond_to(:users)
    end

    it 'should have a state' do
      @project.should respond_to(:state)
    end

    it 'initial state should be on-hold' do
      @project.state.should eql('on_hold')
    end
  end
end