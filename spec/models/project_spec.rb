require 'spec_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :owner_organization }
  it { should validate_presence_of :owner_email }
  it { should have_and_belong_to_many :users }
  it { should respond_to :state }

  it { should have_many :items }

  describe "when new" do
    before(:each) do
      @project = Project.new
    end

    it 'initial state should be on-hold' do
      @project.state.should eql('on_hold')
    end
  end
end